//
//  TShape.swift
//  SwiftProject
//
//  Created by william murphy on 11/2/15.
//  Copyright © 2015 william murphy. All rights reserved.
//

class TShape:Shape {
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(1,0), (0,1), (1,1), (2,1)],
            Orientation.OneEighty: [(2,1), (1,0), (1,1), (1,2)],
            Orientation.Ninety: [(1,2), (0,1), (1,1), (2,1)],
            Orientation.TwoSeventy: [(0,1), (1,0), (1,1), (1,2)]
        ]
    }
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[SecondBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety: [blocks[FirstBlockIdx],  blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx],blocks[FourthBlockIdx]]
        ]
    }
}
