//
//  CSWorkspacePreferences.swift
//  ComponentStudio
//
//  Created by devin_abbott on 8/2/17.
//  Copyright © 2017 Devin Abbott. All rights reserved.
//

import Foundation
import AppKit

func defaultWorkspaceURL() -> URL {
    return preferencesDirectory().appendingPathComponent("LonaWorkspace", isDirectory: true)
}

class CSWorkspacePreferences: CSPreferencesFile {
    static let optionalURLType = CSURLType.makeOptional()

    enum Keys: String {
        case colorsPath
        case textStylesPath
    }

    static var url: URL {
        return CSUserPreferences.workspaceURL.appendingPathComponent("lona.json")
    }

    static var colorsFileURL: URL {
        if let string = colorsFilePathValue.data.get(key: "data").string,
            let url = URL(string: string)?.absoluteURLForWorkspaceURL() {
            return url
        }
        return CSUserPreferences.workspaceURL.appendingPathComponent("colors.json")
    }

    static var textStylesFileURL: URL {
        if let string = textStylesFilePathValue.data.get(key: "data").string,
            let url = URL(string: string)?.absoluteURLForWorkspaceURL() {
            return url
        }
        return CSUserPreferences.workspaceURL.appendingPathComponent("textStyles.json")
    }

    static var colorsFilePathValue: CSValue {
        get {
            if let path = CSWorkspacePreferences.data[Keys.colorsPath.rawValue] {
                return CSValue(type: optionalURLType, data: CSValue.expand(type: optionalURLType, data: path))
            } else {
                return CSUnitValue.wrap(in: optionalURLType, tagged: "None")
            }
        }
        set {
            CSWorkspacePreferences.data[Keys.colorsPath.rawValue] = newValue == CSUnitValue
                ? nil
                : CSValue.compact(type: optionalURLType, data: newValue.data)
        }
    }

    static var textStylesFilePathValue: CSValue {
        get {
            if let path = CSWorkspacePreferences.data[Keys.textStylesPath.rawValue] {
                return CSValue(type: optionalURLType, data: CSValue.expand(type: optionalURLType, data: path))
            } else {
                return CSUnitValue.wrap(in: optionalURLType, tagged: "None")
            }
        }
        set {
            CSWorkspacePreferences.data[Keys.textStylesPath.rawValue] = newValue == CSUnitValue
                ? nil
                : CSValue.compact(type: optionalURLType, data: newValue.data)
        }
    }

    static var data: CSData = load()

    static func reloadAllConfigurationFiles(closeDocuments: Bool) {
        if closeDocuments {
            NSDocumentController.shared.closeAllDocuments(withDelegate: nil, didCloseAllSelector: nil, contextInfo: nil)
        }

        CSWorkspacePreferences.reload()
        CSUserTypes.reload()
        CSColors.reload()
        CSTypography.reload()
        CSGradients.reload()
        CSShadows.reload()
    }

    private enum CreateWorkspace: String {
        case cancel = "Cancel"
        case create = "Create"
    }

    /// Returns true if the url passed is a valid workspace
    ///
    /// A valid workspace is identified by a "lona.json" file in the root of the workspace.
    /// This function will warn the user if they attempt to open a non-workspace, but offer
    /// the choice of creating a "lona.json" file automatically.
    static func validateProposedWorkspace(url: URL) -> Bool {
        do {
            _ = try Data(contentsOf: url.appendingPathComponent("lona.json"))
            return true
        } catch {
            let alert = Alert(
                items: [CreateWorkspace.cancel, CreateWorkspace.create],
                messageText: "This doesn't appear to be a Lona workspace!",
                informativeText: "There's no 'lona.json' file in \(url.path). If you're sure this is a workspace, we can create a 'lona.json' automatically now. Otherwise, press Cancel and open a different directory.")

            guard let response = alert.run() else { return false }

            switch response {
            case .cancel:
                return false
            case .create:
                let file = VirtualFile(name: "lona.json", data: CSData.Object([:]))

                do {
                    try VirtualFileSystem.write(node: file, relativeTo: url)
                } catch {
                    return false
                }

                return true
            }
        }
    }
}
