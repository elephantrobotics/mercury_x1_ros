
"use strict";

let SetLabel = require('./SetLabel.js')
let AddLink = require('./AddLink.js')
let SetGoal = require('./SetGoal.js')
let GetMap2 = require('./GetMap2.js')
let PublishMap = require('./PublishMap.js')
let GetNodesInRadius = require('./GetNodesInRadius.js')
let GetPlan = require('./GetPlan.js')
let GlobalBundleAdjustment = require('./GlobalBundleAdjustment.js')
let LoadDatabase = require('./LoadDatabase.js')
let RemoveLabel = require('./RemoveLabel.js')
let GetNodeData = require('./GetNodeData.js')
let ResetPose = require('./ResetPose.js')
let DetectMoreLoopClosures = require('./DetectMoreLoopClosures.js')
let GetMap = require('./GetMap.js')
let ListLabels = require('./ListLabels.js')
let CleanupLocalGrids = require('./CleanupLocalGrids.js')

module.exports = {
  SetLabel: SetLabel,
  AddLink: AddLink,
  SetGoal: SetGoal,
  GetMap2: GetMap2,
  PublishMap: PublishMap,
  GetNodesInRadius: GetNodesInRadius,
  GetPlan: GetPlan,
  GlobalBundleAdjustment: GlobalBundleAdjustment,
  LoadDatabase: LoadDatabase,
  RemoveLabel: RemoveLabel,
  GetNodeData: GetNodeData,
  ResetPose: ResetPose,
  DetectMoreLoopClosures: DetectMoreLoopClosures,
  GetMap: GetMap,
  ListLabels: ListLabels,
  CleanupLocalGrids: CleanupLocalGrids,
};
