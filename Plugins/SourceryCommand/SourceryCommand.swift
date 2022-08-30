import PackagePlugin
import Foundation

struct SourceryCommand: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        let configFilePath = context.package.directory.appending(subpath: ".sourcery.yml").string
        guard FileManager.default.fileExists(atPath: configFilePath) else {
            Diagnostics.error("Could not find config at: \(configFilePath)")
            return
        }
    }
}
