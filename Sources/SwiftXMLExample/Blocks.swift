import Foundation
import Pipeline
import SwiftXML

@Step
func transformBlocks_step(during execution: Execution, document: XDocument) {
    blockTransformation().execute(inDocument: document)
}

fileprivate func blockTransformation() -> XTransformation {
    XTransformation {
        
        XRule(forElements: "paragraph") { element in
            element.name = "p"
        }
        
    }
}
