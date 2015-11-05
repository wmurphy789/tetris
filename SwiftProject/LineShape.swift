//
//  LineShape.swift
//  SwiftProject
//
//  Created by william murphy on 11/2/15.
//  Copyright © 2015 william murphy. All rights reserved.
//

class LineShape:Shape {
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(0,0), (0,1), (0,2), (0,3)],
            Orientation.OneEighty: [(-1,0), (0,0), (1,0), (2,0)],
            Orientation.Ninety: [(0,0), (0,1), (0,2), (0,3)],
            Orientation.TwoSeventy: [(-1,0), (0,0), (1,0), (2,0)]
        ]
    }
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[FourthBlockIdx]],
            Orientation.Ninety: blocks,
            Orientation.TwoSeventy: blocks
        ]
    }
}