//
//  JShape.swift
//  SwiftProject
//
//  Created by william murphy on 11/2/15.
//  Copyright © 2015 william murphy. All rights reserved.
//

class JShape:Shape {
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(1,0), (1,1), (1,2), (0,2)],
            Orientation.OneEighty: [(2,1), (1,1), (0,1), (0,0)],
            Orientation.Ninety: [(0,2), (0,1), (0,0), (1,0)],
            Orientation.TwoSeventy: [(0,0), (1,0), (2,0), (2,0)]
        ]
    }
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety: [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[ThirdBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}