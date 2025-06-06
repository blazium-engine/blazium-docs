:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/blazium-engine/blazium/tree/4.3/doc/tools/make_rst.py.
.. XML source: https://github.com/blazium-engine/blazium/tree/4.3/doc/classes/XRHandTracker.xml.

.. _class_XRHandTracker:

XRHandTracker
=============

**Inherits:** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A tracked hand in XR.

.. rst-class:: classref-introduction-group

Description
-----------

A hand tracking system will create an instance of this object and add it to the :ref:`XRServer<class_XRServer>`. This tracking system will then obtain skeleton data, convert it to the Godot Humanoid hand skeleton and store this data on the **XRHandTracker** object.

Use :ref:`XRHandModifier3D<class_XRHandModifier3D>` to animate a hand mesh using hand tracking data.

.. rst-class:: classref-introduction-group

Tutorials
---------

- :doc:`XR documentation index <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Properties
----------

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>`         | hand                                                                           | ``1`` (overrides :ref:`XRPositionalTracker<class_XRPositionalTracker_property_hand>`) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` | :ref:`hand_tracking_source<class_XRHandTracker_property_hand_tracking_source>` | ``0``                                                                                 |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_tracking_data<class_XRHandTracker_property_has_tracking_data>`       | ``false``                                                                             |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>`                    | type                                                                           | ``16`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`)                    |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Methods
-------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_hand_joint_angular_velocity<class_XRHandTracker_method_get_hand_joint_angular_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                   |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\] | :ref:`get_hand_joint_flags<class_XRHandTracker_method_get_hand_joint_flags>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_hand_joint_linear_velocity<class_XRHandTracker_method_get_hand_joint_linear_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                     |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                              | :ref:`get_hand_joint_radius<class_XRHandTracker_method_get_hand_joint_radius>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`                                  | :ref:`get_hand_joint_transform<class_XRHandTracker_method_get_hand_joint_transform>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const|                                                                 |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_angular_velocity<class_XRHandTracker_method_set_hand_joint_angular_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, angular_velocity\: :ref:`Vector3<class_Vector3>`\ )         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_flags<class_XRHandTracker_method_set_hand_joint_flags>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, flags\: |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\]\ ) |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_linear_velocity<class_XRHandTracker_method_set_hand_joint_linear_velocity>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, linear_velocity\: :ref:`Vector3<class_Vector3>`\ )            |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_radius<class_XRHandTracker_method_set_hand_joint_radius>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, radius\: :ref:`float<class_float>`\ )                                           |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_hand_joint_transform<class_XRHandTracker_method_set_hand_joint_transform>`\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerations
------------

.. _enum_XRHandTracker_HandTrackingSource:

.. rst-class:: classref-enumeration

enum **HandTrackingSource**: :ref:`🔗<enum_XRHandTracker_HandTrackingSource>`

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_UNKNOWN** = ``0``

The source of hand tracking data is unknown.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_UNOBSTRUCTED** = ``1``

The source of hand tracking data is unobstructed, meaning that an accurate method of hand tracking is used. These include optical hand tracking, data gloves, etc.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_CONTROLLER** = ``2``

The source of hand tracking data is a controller, meaning that joint positions are inferred from controller inputs.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_NOT_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_NOT_TRACKED** = ``3``

No hand tracking data is tracked, this either means the hand is obscured, the controller is turned off, or tracking is not supported for the current input type.

.. _class_XRHandTracker_constant_HAND_TRACKING_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **HAND_TRACKING_SOURCE_MAX** = ``4``

Represents the size of the :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_XRHandTracker_HandJoint:

.. rst-class:: classref-enumeration

enum **HandJoint**: :ref:`🔗<enum_XRHandTracker_HandJoint>`

.. _class_XRHandTracker_constant_HAND_JOINT_PALM:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PALM** = ``0``

Palm joint.

.. _class_XRHandTracker_constant_HAND_JOINT_WRIST:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_WRIST** = ``1``

Wrist joint.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_METACARPAL** = ``2``

Thumb metacarpal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_PHALANX_PROXIMAL** = ``3``

Thumb phalanx proximal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_PHALANX_DISTAL** = ``4``

Thumb phalanx distal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_THUMB_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_THUMB_TIP** = ``5``

Thumb tip joint.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_METACARPAL** = ``6``

Index finger metacarpal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_PROXIMAL** = ``7``

Index finger phalanx proximal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_INTERMEDIATE** = ``8``

Index finger phalanx intermediate joint.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_PHALANX_DISTAL** = ``9``

Index finger phalanx distal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_INDEX_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_INDEX_FINGER_TIP** = ``10``

Index finger tip joint.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_METACARPAL** = ``11``

Middle finger metacarpal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_PROXIMAL** = ``12``

Middle finger phalanx proximal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_INTERMEDIATE** = ``13``

Middle finger phalanx intermediate joint.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_PHALANX_DISTAL** = ``14``

Middle finger phalanx distal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_MIDDLE_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MIDDLE_FINGER_TIP** = ``15``

Middle finger tip joint.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_METACARPAL** = ``16``

Ring finger metacarpal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_PROXIMAL** = ``17``

Ring finger phalanx proximal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_INTERMEDIATE** = ``18``

Ring finger phalanx intermediate joint.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_PHALANX_DISTAL** = ``19``

Ring finger phalanx distal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_RING_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_RING_FINGER_TIP** = ``20``

Ring finger tip joint.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_METACARPAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_METACARPAL** = ``21``

Pinky finger metacarpal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_PROXIMAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_PROXIMAL** = ``22``

Pinky finger phalanx proximal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_INTERMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_INTERMEDIATE** = ``23``

Pinky finger phalanx intermediate joint.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_PHALANX_DISTAL:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_PHALANX_DISTAL** = ``24``

Pinky finger phalanx distal joint.

.. _class_XRHandTracker_constant_HAND_JOINT_PINKY_FINGER_TIP:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_PINKY_FINGER_TIP** = ``25``

Pinky finger tip joint.

.. _class_XRHandTracker_constant_HAND_JOINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`HandJoint<enum_XRHandTracker_HandJoint>` **HAND_JOINT_MAX** = ``26``

Represents the size of the :ref:`HandJoint<enum_XRHandTracker_HandJoint>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_XRHandTracker_HandJointFlags:

.. rst-class:: classref-enumeration

flags **HandJointFlags**: :ref:`🔗<enum_XRHandTracker_HandJointFlags>`

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ORIENTATION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ORIENTATION_VALID** = ``1``

The hand joint's orientation data is valid.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ORIENTATION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ORIENTATION_TRACKED** = ``2``

The hand joint's orientation is actively tracked. May not be set if tracking has been temporarily lost.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_POSITION_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_POSITION_VALID** = ``4``

The hand joint's position data is valid.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_POSITION_TRACKED:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_POSITION_TRACKED** = ``8``

The hand joint's position is actively tracked. May not be set if tracking has been temporarily lost.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_LINEAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_LINEAR_VELOCITY_VALID** = ``16``

The hand joint's linear velocity data is valid.

.. _class_XRHandTracker_constant_HAND_JOINT_FLAG_ANGULAR_VELOCITY_VALID:

.. rst-class:: classref-enumeration-constant

:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>` **HAND_JOINT_FLAG_ANGULAR_VELOCITY_VALID** = ``32``

The hand joint's angular velocity data is valid.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Property Descriptions
---------------------

.. _class_XRHandTracker_property_hand_tracking_source:

.. rst-class:: classref-property

:ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **hand_tracking_source** = ``0`` :ref:`🔗<class_XRHandTracker_property_hand_tracking_source>`

.. rst-class:: classref-property-setget

- |void| **set_hand_tracking_source**\ (\ value\: :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>`\ )
- :ref:`HandTrackingSource<enum_XRHandTracker_HandTrackingSource>` **get_hand_tracking_source**\ (\ )

The source of the hand tracking data.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_property_has_tracking_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **has_tracking_data** = ``false`` :ref:`🔗<class_XRHandTracker_property_has_tracking_data>`

.. rst-class:: classref-property-setget

- |void| **set_has_tracking_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_has_tracking_data**\ (\ )

If ``true``, the hand tracking data is valid.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Method Descriptions
-------------------

.. _class_XRHandTracker_method_get_hand_joint_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_angular_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_angular_velocity>`

Returns the angular velocity for the given hand joint.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_flags:

.. rst-class:: classref-method

|bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\] **get_hand_joint_flags**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_flags>`

Returns flags about the validity of the tracking data for the given hand joint (see :ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`).

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_hand_joint_linear_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_linear_velocity>`

Returns the linear velocity for the given hand joint.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_radius:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hand_joint_radius**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_radius>`

Returns the radius of the given hand joint.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_get_hand_joint_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_hand_joint_transform**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`\ ) |const| :ref:`🔗<class_XRHandTracker_method_get_hand_joint_transform>`

Returns the transform for the given hand joint.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_angular_velocity:

.. rst-class:: classref-method

|void| **set_hand_joint_angular_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, angular_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_angular_velocity>`

Sets the angular velocity for the given hand joint.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_flags:

.. rst-class:: classref-method

|void| **set_hand_joint_flags**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, flags\: |bitfield|\[:ref:`HandJointFlags<enum_XRHandTracker_HandJointFlags>`\]\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_flags>`

Sets flags about the validity of the tracking data for the given hand joint.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_linear_velocity:

.. rst-class:: classref-method

|void| **set_hand_joint_linear_velocity**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, linear_velocity\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_linear_velocity>`

Sets the linear velocity for the given hand joint.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_radius:

.. rst-class:: classref-method

|void| **set_hand_joint_radius**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_radius>`

Sets the radius of the given hand joint.

.. rst-class:: classref-item-separator

----

.. _class_XRHandTracker_method_set_hand_joint_transform:

.. rst-class:: classref-method

|void| **set_hand_joint_transform**\ (\ joint\: :ref:`HandJoint<enum_XRHandTracker_HandJoint>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_XRHandTracker_method_set_hand_joint_transform>`

Sets the transform for the given hand joint.

.. |virtual| replace:: :abbr:`virtual (This method should typically be overridden by the user to have any effect.)`
.. |const| replace:: :abbr:`const (This method has no side effects. It doesn't modify any of the instance's member variables.)`
.. |vararg| replace:: :abbr:`vararg (This method accepts any number of arguments after the ones described here.)`
.. |constructor| replace:: :abbr:`constructor (This method is used to construct a type.)`
.. |static| replace:: :abbr:`static (This method doesn't need an instance to be called, so it can be called directly using the class name.)`
.. |operator| replace:: :abbr:`operator (This method describes a valid operator to use with this type as left-hand operand.)`
.. |bitfield| replace:: :abbr:`BitField (This value is an integer composed as a bitmask of the following flags.)`
.. |void| replace:: :abbr:`void (No return value.)`
