//
//  ComponentDocument.swift
//  ComponentStudio
//
//  Created by Devin Abbott on 5/7/17.
//  Copyright © 2017 Devin Abbott. All rights reserved.
//

import Cocoa

class ComponentDocument: NSDocument {

    override init() {
        super.init()

        // Add your subclass-specific initialization here.
        self.hasUndoManager = true
    }

    override class var autosavesInPlace: Bool {
        return true
    }

    override var autosavingFileType: String? {
        return nil
    }

    var name: String = "Component"
    var component: CSComponent?

    var viewController: WorkspaceViewController? {
        return windowControllers[0].contentViewController as? WorkspaceViewController
    }

    func set(component: CSComponent) {
        self.component = component

        guard let viewController = self.viewController else { return }
        viewController.document = self
    }

    override func makeWindowControllers() {

        // This is a new document, so we need to initialize a component
        if component == nil {
            component = CSComponent.makeDefaultComponent()
        }

        WorkspaceWindowController.create(andAttachTo: self)
    }

    override func writeSafely(to url: URL, ofType typeName: String, for saveOperation: NSDocument.SaveOperationType) throws {
        // TODO: Does this update automatically in the VC?
//        viewController?.fileURL = url
        try super.writeSafely(to: url, ofType: typeName, for: saveOperation)
    }

    override func data(ofType typeName: String) throws -> Data {
        if let file = component, let json = file.toData(), let data = json.toData() {
            return data
        }

        throw NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
    }

    override func read(from url: URL, ofType typeName: String) throws {
        name = url.deletingPathExtension().lastPathComponent

        do {
            let data = try Data(contentsOf: url, options: NSData.ReadingOptions())

            try read(from: data, ofType: typeName)
        } catch {
            Swift.print(error)
        }
    }

    override func read(from data: Data, ofType typeName: String) throws {
        guard let json = try? JSONSerialization.jsonObject(with: data) else { return }

        component = CSComponent(CSData.from(json: json))
    }

    override func save(to url: URL, ofType typeName: String, for saveOperation: NSDocument.SaveOperationType, completionHandler: @escaping (Error?) -> Void) {

        super.save(to: url, ofType: typeName, for: saveOperation, completionHandler: completionHandler)

        LonaPlugins.current.trigger(eventType: .onSaveComponent)
    }
}
