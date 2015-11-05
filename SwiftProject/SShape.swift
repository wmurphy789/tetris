//
//  SShape.swift
//  SwiftProject
//
//  Created by william murphy on 11/2/15.
//  Copyright © 2015 william murphy. All rights reserved.
//

class SShape:Shape {
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(0,0), (0,1), (1,1), (1,2)],
            Orientation.OneEighty: [(2,0), (1,0), (1,1), (0,1)],
            Orientation.Ninety: [(0,0), (0,1), (1,1), (1,2)],
            Orientation.TwoSeventy: [(2,0), (1,0), (1,1), (0,1)]
        ]
    }
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety: [blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}