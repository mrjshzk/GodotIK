# GodotIK

## 3D Inverse Kinematics for Godot

> I needed IK. People said IK was hard. I did it anyway.

This project provides three classes:

- **`GodotIK`**  
  A `SkeletonModifier` that does all the magic.
  
- **`GodotIKEffector`**  
  Parented by `GodotIK` in the SceneTree, these nodes position the bones, define the chain length, and rotate the affected bone according to their `transform_behavior` property.
  
- **`GodotIKConstraint`**  
  An abstract class that is parented by `GodotIKEffector`s. Two examples are provided as GDScript implementations: `PoleConstraint` and `StraightBoneConstraint`.

This is the best implementation I could come up with. It's stable—at least as stable as it gets with constraints.

For further reference, check out the `doc_classes/` directory; it tells it all.

<sup>SceneTree example: Skeleton3D -> GodotIK -> [GodotIKEffectors] -> GodotIKConstraint</sup>
