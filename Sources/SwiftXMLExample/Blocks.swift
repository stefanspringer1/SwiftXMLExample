import Foundation
import Pipeline
import SwiftXML

@Step
func transformBlocks_step(during execution: Execution, document: XDocument) {
    inlineTransformation().execute(inDocument: document)
}

func blockTransformation() -> XTransformation {
    XTransformation {
        
        XRule(forElements: "paragraph") { element in
            element.name = "p"
        }
        
    }
}
