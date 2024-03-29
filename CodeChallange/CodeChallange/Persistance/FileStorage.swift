//
//  FileStorage.swift
//  CodeChallange
//
//  Created by Kai-Marcel Teuber on 20.09.19.
//  Copyright © 2019 App-Developers.de. All rights reserved.
//

import Foundation

final public class FileStorage {

    // MARK: - Init

    public init(filename: String) {
        self.filename = filename
    }

    // MARK: - Overrides

    // MARK: - Public

    public func load() -> Data? {
        guard let fileURL = filePathURL else {
            NSLog("Filepath failed")
            return nil
        }
        return FileManager.default.contents(atPath: fileURL.path)
    }

    public func save(data: Data) {
        guard let fileURL = filePathURL else {
            NSLog("Filepath failed - stop")
            return
        }
        FileManager.default.createFile(atPath: fileURL.path, contents: data, attributes: nil)
    }

    public func delete() {
        guard let fileURL = filePathURL else {
            NSLog("Filepath failed - stop")
            return
        }
        if FileManager.default.fileExists(atPath: fileURL.path) {
            try? FileManager.default.removeItem(atPath: fileURL.path)
        }
    }

    // MARK: - Internal

    // MARK: - Private

    private let filename: String

    internal lazy var filePathURL: URL? = {
        guard var documentsFolder = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            NSLog("Documents folder not found - stop here")
            return nil
        }

        let fileURL = documentsFolder.appendingPathComponent(filename)
        return fileURL
    }()

}
