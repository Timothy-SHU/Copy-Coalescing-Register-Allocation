; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_modifier_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_modifier_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SubsurfModifierData = type { %struct.ModifierData, i16, i16, i16, i16, ptr, ptr }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.BuildModifierData = type { %struct.ModifierData, float, float, i16, i16, i32 }
%struct.MirrorModifierData = type { %struct.ModifierData, i16, i16, float, ptr }
%struct.DecimateModifierData = type { %struct.ModifierData, float, i16, i8, i8, float, [64 x i8], i16, i16, i32, i32 }
%struct.WaveModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32, ptr, [64 x i8], i16, i16, float, float, float, float, float, float, float, float, float, float, float }
%struct.MappingInfoModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32 }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.BooleanModifierData = type { %struct.ModifierData, ptr, i32, i32 }
%struct.ArrayModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, [3 x float], [3 x float], float, float, i32, i32, i32, i32 }
%struct.EdgeSplitModifierData = type { %struct.ModifierData, float, i32 }
%struct.DisplaceModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32, float, i32, [64 x i8], float, i32 }
%struct.UVProjectModifierData = type { %struct.ModifierData, [10 x ptr], ptr, i32, i32, float, float, float, float, [64 x i8], i32, i32 }
%struct.SmoothModifierData = type { %struct.ModifierData, float, [64 x i8], i16, i16 }
%struct.CastModifierData = type { %struct.ModifierData, ptr, float, float, float, [64 x i8], i16, i16 }
%struct.MeshDeformModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, i16, [2 x i16], ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, [3 x float], float, [4 x [4 x float]], ptr, ptr, ptr }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ParticleInstanceModifierData = type { %struct.ModifierData, ptr, i16, i16, i16, i16, float, float }
%struct.ExplodeModifierData = type { %struct.ModifierData, ptr, i16, i16, float, [64 x i8] }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.BevelModifierData = type { %struct.ModifierData, float, i32, i16, i16, i16, i16, i16, i16, i32, float, float, [64 x i8] }
%struct.ShrinkwrapModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], float, i16, i8, i8, float, i8, i8, [2 x i8] }
%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.MaskModifierData = type { %struct.ModifierData, ptr, [64 x i8], i32, i32 }
%struct.SimpleDeformModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [2 x float], i8, i8, [2 x i8] }
%struct.WarpModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, [64 x i8], float, float, i8, i8, [6 x i8] }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.SolidifyModifierData = type { %struct.ModifierData, [64 x i8], float, float, float, float, float, float, float, float, i32, i16, i16 }
%struct.ScrewModifierData = type { %struct.ModifierData, ptr, i32, i32, i32, float, float, i8, i8, i16 }
%struct.UVWarpModifierData = type { %struct.ModifierData, i8, i8, [6 x i8], [2 x float], ptr, [64 x i8], ptr, [64 x i8], [64 x i8], [64 x i8] }
%struct.WeightVGEditModifierData = type { %struct.ModifierData, [64 x i8], i16, i16, float, ptr, float, float, float, [64 x i8], i32, ptr, ptr, i32, [64 x i8], i32 }
%struct.WeightVGMixModifierData = type { %struct.ModifierData, [64 x i8], [64 x i8], float, float, i8, i8, [6 x i8], float, [64 x i8], i32, ptr, ptr, i32, [64 x i8], i32 }
%struct.WeightVGProximityModifierData = type { %struct.ModifierData, [64 x i8], i32, i32, ptr, float, [64 x i8], i32, ptr, ptr, i32, [64 x i8], float, float, i16, i16 }
%struct.DynamicPaintModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32 }
%struct.OceanModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, float, float, i32, i32, [1024 x i8], [64 x i8], i8, i8, i8, i8, i16, i16, i32, float, float, i32 }
%struct.RemeshModifierData = type { %struct.ModifierData, float, float, float, i8, i8, i8, i8 }
%struct.SkinModifierData = type { %struct.ModifierData, float, i8, i8, [2 x i8] }
%struct.LaplacianSmoothModifierData = type { %struct.ModifierData, float, float, float, [64 x i8], i16, i16 }
%struct.TriangulateModifierData = type { %struct.ModifierData, i32, i32, i32, i32 }
%struct.MeshCacheModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, i8, i8, float, i8, [7 x i8], float, float, float, float, float, [1024 x i8] }
%struct.LaplacianDeformModifierData = type { %struct.ModifierData, [64 x i8], i32, i32, ptr, ptr, i16, [3 x i16] }
%struct.WireframeModifierData = type { %struct.ModifierData, [64 x i8], float, float, float, float, i16, i16, [2 x i16] }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Modify\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"MESH_CACHE\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Mesh Cache\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"UV_PROJECT\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"UV Project\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"UV_WARP\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"UV Warp\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"VERTEX_WEIGHT_EDIT\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Vertex Weight Edit\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"VERTEX_WEIGHT_MIX\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Vertex Weight Mix\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"VERTEX_WEIGHT_PROXIMITY\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Vertex Weight Proximity\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Generate\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ARRAY\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"BEVEL\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Bevel\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Boolean\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"BUILD\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Build\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"DECIMATE\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Decimate\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"EDGE_SPLIT\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Edge Split\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"MIRROR\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Mirror\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"MULTIRES\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Multiresolution\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"REMESH\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Remesh\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"SCREW\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"Screw\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"SKIN\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"Skin\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"SOLIDIFY\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"Solidify\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"SUBSURF\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"Subdivision Surface\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"TRIANGULATE\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"Triangulate\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"WIREFRAME\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"Wireframe\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"Generate a wireframe on the edges of a mesh\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"Deform\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"ARMATURE\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"CAST\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"Cast\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"CURVE\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"DISPLACE\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"Displace\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"HOOK\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"Hook\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"LAPLACIANSMOOTH\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"Laplacian Smooth\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"LAPLACIANDEFORM\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"Laplacian Deform\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"LATTICE\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"MESH_DEFORM\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"Mesh Deform\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"SHRINKWRAP\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"Shrinkwrap\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"SIMPLE_DEFORM\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"Simple Deform\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"SMOOTH\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"WARP\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"Warp\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"WAVE\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"Wave\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"Simulate\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"CLOTH\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"Cloth\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"COLLISION\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"Collision\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"DYNAMIC_PAINT\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"Dynamic Paint\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"EXPLODE\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"Explode\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"FLUID_SIMULATION\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"Fluid Simulation\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"OCEAN\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"Ocean\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"PARTICLE_INSTANCE\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"Particle Instance\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"PARTICLE_SYSTEM\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"Particle System\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"SMOKE\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"Smoke\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"SOFT_BODY\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"Soft Body\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"SURFACE\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"Surface\00", align 1
@modifier_type_items = dso_local local_unnamed_addr global [52 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str }, %struct.EnumPropertyItem { i32 46, ptr @.str.2, i32 463, ptr @.str.3, ptr @.str }, %struct.EnumPropertyItem { i32 15, ptr @.str.4, i32 455, ptr @.str.5, ptr @.str }, %struct.EnumPropertyItem { i32 45, ptr @.str.6, i32 455, ptr @.str.7, ptr @.str }, %struct.EnumPropertyItem { i32 36, ptr @.str.8, i32 475, ptr @.str.9, ptr @.str }, %struct.EnumPropertyItem { i32 37, ptr @.str.10, i32 475, ptr @.str.11, ptr @.str }, %struct.EnumPropertyItem { i32 38, ptr @.str.12, i32 475, ptr @.str.13, ptr @.str }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.14, ptr @.str }, %struct.EnumPropertyItem { i32 12, ptr @.str.15, i32 454, ptr @.str.16, ptr @.str }, %struct.EnumPropertyItem { i32 24, ptr @.str.17, i32 464, ptr @.str.18, ptr @.str }, %struct.EnumPropertyItem { i32 11, ptr @.str.19, i32 452, ptr @.str.20, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.21, i32 444, ptr @.str.22, ptr @.str }, %struct.EnumPropertyItem { i32 6, ptr @.str.23, i32 445, ptr @.str.24, ptr @.str }, %struct.EnumPropertyItem { i32 13, ptr @.str.25, i32 453, ptr @.str.26, ptr @.str }, %struct.EnumPropertyItem { i32 27, ptr @.str.27, i32 467, ptr @.str.28, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.29, i32 446, ptr @.str.30, ptr @.str }, %struct.EnumPropertyItem { i32 29, ptr @.str.31, i32 471, ptr @.str.32, ptr @.str }, %struct.EnumPropertyItem { i32 41, ptr @.str.33, i32 477, ptr @.str.34, ptr @.str }, %struct.EnumPropertyItem { i32 34, ptr @.str.35, i32 474, ptr @.str.36, ptr @.str }, %struct.EnumPropertyItem { i32 42, ptr @.str.37, i32 480, ptr @.str.38, ptr @.str }, %struct.EnumPropertyItem { i32 33, ptr @.str.39, i32 473, ptr @.str.40, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.41, i32 448, ptr @.str.42, ptr @.str }, %struct.EnumPropertyItem { i32 44, ptr @.str.43, i32 481, ptr @.str.44, ptr @.str }, %struct.EnumPropertyItem { i32 48, ptr @.str.45, i32 482, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.48, ptr @.str }, %struct.EnumPropertyItem { i32 8, ptr @.str.49, i32 460, ptr @.str.50, ptr @.str }, %struct.EnumPropertyItem { i32 17, ptr @.str.51, i32 462, ptr @.str.52, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.53, i32 457, ptr @.str.54, ptr @.str }, %struct.EnumPropertyItem { i32 14, ptr @.str.55, i32 456, ptr @.str.56, ptr @.str }, %struct.EnumPropertyItem { i32 9, ptr @.str.57, i32 449, ptr @.str.58, ptr @.str }, %struct.EnumPropertyItem { i32 43, ptr @.str.59, i32 465, ptr @.str.60, ptr @.str }, %struct.EnumPropertyItem { i32 47, ptr @.str.61, i32 463, ptr @.str.62, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.63, i32 458, ptr @.str.64, ptr @.str }, %struct.EnumPropertyItem { i32 18, ptr @.str.65, i32 463, ptr @.str.66, ptr @.str }, %struct.EnumPropertyItem { i32 25, ptr @.str.67, i32 461, ptr @.str.68, ptr @.str }, %struct.EnumPropertyItem { i32 28, ptr @.str.69, i32 466, ptr @.str.70, ptr @.str }, %struct.EnumPropertyItem { i32 16, ptr @.str.71, i32 465, ptr @.str.72, ptr @.str }, %struct.EnumPropertyItem { i32 35, ptr @.str.73, i32 479, ptr @.str.74, ptr @.str }, %struct.EnumPropertyItem { i32 7, ptr @.str.75, i32 443, ptr @.str.76, ptr @.str }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.77, ptr @.str }, %struct.EnumPropertyItem { i32 22, ptr @.str.78, i32 468, ptr @.str.79, ptr @.str }, %struct.EnumPropertyItem { i32 23, ptr @.str.80, i32 450, ptr @.str.81, ptr @.str }, %struct.EnumPropertyItem { i32 40, ptr @.str.82, i32 476, ptr @.str.83, ptr @.str }, %struct.EnumPropertyItem { i32 21, ptr @.str.84, i32 469, ptr @.str.85, ptr @.str }, %struct.EnumPropertyItem { i32 26, ptr @.str.86, i32 470, ptr @.str.87, ptr @.str }, %struct.EnumPropertyItem { i32 39, ptr @.str.88, i32 478, ptr @.str.89, ptr @.str }, %struct.EnumPropertyItem { i32 20, ptr @.str.90, i32 451, ptr @.str.91, ptr @.str }, %struct.EnumPropertyItem { i32 19, ptr @.str.92, i32 451, ptr @.str.93, ptr @.str }, %struct.EnumPropertyItem { i32 31, ptr @.str.94, i32 472, ptr @.str.95, ptr @.str }, %struct.EnumPropertyItem { i32 10, ptr @.str.96, i32 447, ptr @.str.97, ptr @.str }, %struct.EnumPropertyItem { i32 30, ptr @.str.98, i32 450, ptr @.str.99, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.100 = private unnamed_addr constant [7 x i8] c"BEAUTY\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"Beauty \00", align 1
@.str.102 = private unnamed_addr constant [49 x i8] c"Split the quads in nice triangles, slower method\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"FIXED\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"Fixed\00", align 1
@.str.105 = private unnamed_addr constant [48 x i8] c"Split the quads on the first and third vertices\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"FIXED_ALTERNATE\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"Fixed Alternate\00", align 1
@.str.108 = private unnamed_addr constant [44 x i8] c"Split the quads on the 2nd and 4th vertices\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"SHORTEST_DIAGONAL\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"Shortest Diagonal\00", align 1
@.str.111 = private unnamed_addr constant [59 x i8] c"Split the quads based on the distance between the vertices\00", align 1
@modifier_triangulate_quad_method_items = dso_local local_unnamed_addr global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.100, i32 0, ptr @.str.101, ptr @.str.102 }, %struct.EnumPropertyItem { i32 1, ptr @.str.103, i32 0, ptr @.str.104, ptr @.str.105 }, %struct.EnumPropertyItem { i32 2, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.108 }, %struct.EnumPropertyItem { i32 3, ptr @.str.109, i32 0, ptr @.str.110, ptr @.str.111 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.112 = private unnamed_addr constant [7 x i8] c"Beauty\00", align 1
@.str.113 = private unnamed_addr constant [40 x i8] c"Arrange the new triangles evenly (slow)\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"CLIP\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"Clip\00", align 1
@.str.116 = private unnamed_addr constant [50 x i8] c"Split the polygons with an ear clipping algorithm\00", align 1
@modifier_triangulate_ngon_method_items = dso_local local_unnamed_addr global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.100, i32 0, ptr @.str.112, ptr @.str.113 }, %struct.EnumPropertyItem { i32 1, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.116 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Modifier_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Modifier_rna_type, ptr null, i32 -1, ptr @.str.118, i32 128, ptr @.str.119, ptr @.str.120, i32 0, ptr @.str.121, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Modifier_rna_properties_begin, ptr @Modifier_rna_properties_next, ptr @Modifier_rna_properties_end, ptr @Modifier_rna_properties_get, ptr null, ptr null, ptr @Modifier_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@RNA_Texture = external global %struct.StructRNA, align 8
@rna_UVProjectModifier_projectors = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_UVProjectModifier_image, ptr @rna_UVProjectModifier_projector_count, i32 -1, ptr @.str.441, i32 16384, ptr @.str.442, ptr @.str, i32 0, ptr @.str.121, i32 6, i32 0, ptr null, i32 0, [3 x i32] [i32 10, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVProjectModifier_projectors_begin, ptr @UVProjectModifier_projectors_next, ptr @UVProjectModifier_projectors_end, ptr @UVProjectModifier_projectors_get, ptr null, ptr @UVProjectModifier_projectors_lookup_int, ptr null, ptr null, ptr @RNA_UVProjector }, align 8
@.str.117 = private unnamed_addr constant [44 x i8] c"Array iterator out of range: %s (index %d)\0A\00", align 1
@__func__.UVProjectModifier_projectors_lookup_int = private unnamed_addr constant [40 x i8] c"UVProjectModifier_projectors_lookup_int\00", align 1
@RNA_Image = external global %struct.StructRNA, align 8
@rna_UVProjector_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_UVProjector_rna_type, ptr null, i32 -1, ptr @.str.118, i32 128, ptr @.str.119, ptr @.str.120, i32 0, ptr @.str.121, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVProjector_rna_properties_begin, ptr @UVProjector_rna_properties_next, ptr @UVProjector_rna_properties_end, ptr @UVProjector_rna_properties_get, ptr null, ptr null, ptr @UVProjector_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_ParticleSystem = external global %struct.StructRNA, align 8
@RNA_ClothSettings = external global %struct.StructRNA, align 8
@RNA_ClothCollisionSettings = external global %struct.StructRNA, align 8
@RNA_PointCache = external global %struct.StructRNA, align 8
@RNA_FluidSettings = external global %struct.StructRNA, align 8
@RNA_CurveMapping = external global %struct.StructRNA, align 8
@RNA_SmokeDomainSettings = external global %struct.StructRNA, align 8
@RNA_SmokeFlowSettings = external global %struct.StructRNA, align 8
@RNA_SmokeCollSettings = external global %struct.StructRNA, align 8
@RNA_DynamicPaintCanvasSettings = external global %struct.StructRNA, align 8
@RNA_DynamicPaintBrushSettings = external global %struct.StructRNA, align 8
@rna_Modifier_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, i32 -1, ptr @.str.122, i32 8912896, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Modifier_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.118 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_Modifier_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Modifier_type, ptr @rna_Modifier_rna_type, i32 -1, ptr @.str.125, i32 262145, ptr @.str.126, ptr @.str.127, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 85458949, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Modifier_name_get, ptr @Modifier_name_length, ptr @Modifier_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.122 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_Modifier_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Modifier_show_viewport, ptr @rna_Modifier_name, i32 -1, ptr @.str.128, i32 2, ptr @.str.129, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Modifier_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Modifier_type_items, i32 51, i32 46 }, align 8
@.str.125 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"Modifier name\00", align 1
@rna_Modifier_show_viewport = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Modifier_show_render, ptr @rna_Modifier_type, i32 -1, ptr @.str.130, i32 65539, ptr @.str.131, ptr @.str.132, i32 253, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Modifier_show_viewport_get, ptr @Modifier_show_viewport_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.128 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@rna_Modifier_type_items = internal global [52 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str }, %struct.EnumPropertyItem { i32 46, ptr @.str.2, i32 463, ptr @.str.3, ptr @.str }, %struct.EnumPropertyItem { i32 15, ptr @.str.4, i32 455, ptr @.str.5, ptr @.str }, %struct.EnumPropertyItem { i32 45, ptr @.str.6, i32 455, ptr @.str.7, ptr @.str }, %struct.EnumPropertyItem { i32 36, ptr @.str.8, i32 475, ptr @.str.9, ptr @.str }, %struct.EnumPropertyItem { i32 37, ptr @.str.10, i32 475, ptr @.str.11, ptr @.str }, %struct.EnumPropertyItem { i32 38, ptr @.str.12, i32 475, ptr @.str.13, ptr @.str }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.14, ptr @.str }, %struct.EnumPropertyItem { i32 12, ptr @.str.15, i32 454, ptr @.str.16, ptr @.str }, %struct.EnumPropertyItem { i32 24, ptr @.str.17, i32 464, ptr @.str.18, ptr @.str }, %struct.EnumPropertyItem { i32 11, ptr @.str.19, i32 452, ptr @.str.20, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.21, i32 444, ptr @.str.22, ptr @.str }, %struct.EnumPropertyItem { i32 6, ptr @.str.23, i32 445, ptr @.str.24, ptr @.str }, %struct.EnumPropertyItem { i32 13, ptr @.str.25, i32 453, ptr @.str.26, ptr @.str }, %struct.EnumPropertyItem { i32 27, ptr @.str.27, i32 467, ptr @.str.28, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.29, i32 446, ptr @.str.30, ptr @.str }, %struct.EnumPropertyItem { i32 29, ptr @.str.31, i32 471, ptr @.str.32, ptr @.str }, %struct.EnumPropertyItem { i32 41, ptr @.str.33, i32 477, ptr @.str.34, ptr @.str }, %struct.EnumPropertyItem { i32 34, ptr @.str.35, i32 474, ptr @.str.36, ptr @.str }, %struct.EnumPropertyItem { i32 42, ptr @.str.37, i32 480, ptr @.str.38, ptr @.str }, %struct.EnumPropertyItem { i32 33, ptr @.str.39, i32 473, ptr @.str.40, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.41, i32 448, ptr @.str.42, ptr @.str }, %struct.EnumPropertyItem { i32 44, ptr @.str.43, i32 481, ptr @.str.44, ptr @.str }, %struct.EnumPropertyItem { i32 48, ptr @.str.45, i32 482, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.48, ptr @.str }, %struct.EnumPropertyItem { i32 8, ptr @.str.49, i32 460, ptr @.str.50, ptr @.str }, %struct.EnumPropertyItem { i32 17, ptr @.str.51, i32 462, ptr @.str.52, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.53, i32 457, ptr @.str.54, ptr @.str }, %struct.EnumPropertyItem { i32 14, ptr @.str.55, i32 456, ptr @.str.56, ptr @.str }, %struct.EnumPropertyItem { i32 9, ptr @.str.57, i32 449, ptr @.str.58, ptr @.str }, %struct.EnumPropertyItem { i32 43, ptr @.str.59, i32 465, ptr @.str.60, ptr @.str }, %struct.EnumPropertyItem { i32 47, ptr @.str.61, i32 463, ptr @.str.62, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.63, i32 458, ptr @.str.64, ptr @.str }, %struct.EnumPropertyItem { i32 18, ptr @.str.65, i32 463, ptr @.str.66, ptr @.str }, %struct.EnumPropertyItem { i32 25, ptr @.str.67, i32 461, ptr @.str.68, ptr @.str }, %struct.EnumPropertyItem { i32 28, ptr @.str.69, i32 466, ptr @.str.70, ptr @.str }, %struct.EnumPropertyItem { i32 16, ptr @.str.71, i32 465, ptr @.str.72, ptr @.str }, %struct.EnumPropertyItem { i32 35, ptr @.str.73, i32 479, ptr @.str.74, ptr @.str }, %struct.EnumPropertyItem { i32 7, ptr @.str.75, i32 443, ptr @.str.76, ptr @.str }, %struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.77, ptr @.str }, %struct.EnumPropertyItem { i32 22, ptr @.str.78, i32 468, ptr @.str.79, ptr @.str }, %struct.EnumPropertyItem { i32 23, ptr @.str.80, i32 450, ptr @.str.81, ptr @.str }, %struct.EnumPropertyItem { i32 40, ptr @.str.82, i32 476, ptr @.str.83, ptr @.str }, %struct.EnumPropertyItem { i32 21, ptr @.str.84, i32 469, ptr @.str.85, ptr @.str }, %struct.EnumPropertyItem { i32 26, ptr @.str.86, i32 470, ptr @.str.87, ptr @.str }, %struct.EnumPropertyItem { i32 39, ptr @.str.88, i32 478, ptr @.str.89, ptr @.str }, %struct.EnumPropertyItem { i32 20, ptr @.str.90, i32 451, ptr @.str.91, ptr @.str }, %struct.EnumPropertyItem { i32 19, ptr @.str.92, i32 451, ptr @.str.93, ptr @.str }, %struct.EnumPropertyItem { i32 31, ptr @.str.94, i32 472, ptr @.str.95, ptr @.str }, %struct.EnumPropertyItem { i32 10, ptr @.str.96, i32 447, ptr @.str.97, ptr @.str }, %struct.EnumPropertyItem { i32 30, ptr @.str.98, i32 450, ptr @.str.99, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Modifier_show_render = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Modifier_show_in_editmode, ptr @rna_Modifier_show_viewport, i32 -1, ptr @.str.133, i32 3, ptr @.str.134, ptr @.str.135, i32 83, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 85458944, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Modifier_show_render_get, ptr @Modifier_show_render_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.130 = private unnamed_addr constant [14 x i8] c"show_viewport\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"Realtime\00", align 1
@.str.132 = private unnamed_addr constant [29 x i8] c"Display modifier in viewport\00", align 1
@rna_Modifier_show_in_editmode = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Modifier_show_on_cage, ptr @rna_Modifier_show_render, i32 -1, ptr @.str.136, i32 3, ptr @.str.137, ptr @.str.138, i32 131, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Modifier_show_in_editmode_get, ptr @Modifier_show_in_editmode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.133 = private unnamed_addr constant [12 x i8] c"show_render\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"Render\00", align 1
@.str.135 = private unnamed_addr constant [27 x i8] c"Use modifier during render\00", align 1
@rna_Modifier_show_on_cage = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Modifier_show_expanded, ptr @rna_Modifier_show_in_editmode, i32 -1, ptr @.str.139, i32 3, ptr @.str.140, ptr @.str.141, i32 160, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Modifier_show_on_cage_get, ptr @Modifier_show_on_cage_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.136 = private unnamed_addr constant [17 x i8] c"show_in_editmode\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"Edit Mode\00", align 1
@.str.138 = private unnamed_addr constant [30 x i8] c"Display modifier in Edit mode\00", align 1
@rna_Modifier_show_expanded = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Modifier_use_apply_on_spline, ptr @rna_Modifier_show_on_cage, i32 -1, ptr @.str.142, i32 4099, ptr @.str.143, ptr @.str.144, i32 4, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Modifier_show_expanded_get, ptr @Modifier_show_expanded_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.139 = private unnamed_addr constant [13 x i8] c"show_on_cage\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"On Cage\00", align 1
@.str.141 = private unnamed_addr constant [36 x i8] c"Adjust edit cage to modifier result\00", align 1
@rna_Modifier_use_apply_on_spline = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Modifier_show_expanded, i32 -1, ptr @.str.145, i32 3, ptr @.str.146, ptr @.str.147, i32 188, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Modifier_use_apply_on_spline_get, ptr @Modifier_use_apply_on_spline_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.142 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"Expanded\00", align 1
@.str.144 = private unnamed_addr constant [44 x i8] c"Set modifier expanded in the user interface\00", align 1
@.str.145 = private unnamed_addr constant [20 x i8] c"use_apply_on_spline\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"Apply on spline\00", align 1
@.str.147 = private unnamed_addr constant [106 x i8] c"Apply this and all preceding deformation modifiers on splines' points rather than on filled curve/surface\00", align 1
@RNA_SubsurfModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LatticeModifier, ptr @RNA_Modifier, ptr null, %struct.ListBase { ptr @rna_SubsurfModifier_subdivision_type, ptr @rna_SubsurfModifier_use_subsurf_uv } }, ptr @.str.165, ptr null, ptr null, i32 4, ptr @.str.166, ptr @.str.167, ptr @.str.121, i32 448, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_MetaBallElements = external global %struct.StructRNA, align 8
@.str.148 = private unnamed_addr constant [9 x i8] c"Modifier\00", align 1
@.str.149 = private unnamed_addr constant [50 x i8] c"Modifier affecting the geometry data of an object\00", align 1
@RNA_Modifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SubsurfModifier, ptr @RNA_MetaBallElements, ptr null, %struct.ListBase { ptr @rna_Modifier_rna_properties, ptr @rna_Modifier_use_apply_on_spline } }, ptr @.str.148, ptr null, ptr null, i32 4, ptr @.str.148, ptr @.str.149, ptr @.str.121, i32 17, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr null, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_SubsurfModifier_levels = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SubsurfModifier_render_levels, ptr @rna_SubsurfModifier_subdivision_type, i32 -1, ptr @.str.153, i32 8195, ptr @.str.154, ptr @.str.155, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 114, i32 1, ptr null, ptr null }, ptr @SubsurfModifier_levels_get, ptr @SubsurfModifier_levels_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 6, i32 0, i32 11, i32 1, i32 0, ptr null }, align 8
@.str.150 = private unnamed_addr constant [17 x i8] c"subdivision_type\00", align 1
@.str.151 = private unnamed_addr constant [17 x i8] c"Subdivision Type\00", align 1
@.str.152 = private unnamed_addr constant [37 x i8] c"Select type of subdivision algorithm\00", align 1
@rna_SubsurfModifier_subdivision_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1075, i32 0, ptr @.str.1076, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.1077, i32 0, ptr @.str.1078, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SubsurfModifier_subdivision_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SubsurfModifier_levels, ptr null, i32 -1, ptr @.str.150, i32 3, ptr @.str.151, ptr @.str.152, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SubsurfModifier_subdivision_type_get, ptr @SubsurfModifier_subdivision_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SubsurfModifier_subdivision_type_items, i32 2, i32 0 }, align 8
@rna_SubsurfModifier_render_levels = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SubsurfModifier_show_only_control_edges, ptr @rna_SubsurfModifier_levels, i32 -1, ptr @.str.156, i32 8195, ptr @.str.157, ptr @.str.158, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 116, i32 1, ptr null, ptr null }, ptr @SubsurfModifier_render_levels_get, ptr @SubsurfModifier_render_levels_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 6, i32 0, i32 11, i32 1, i32 0, ptr null }, align 8
@.str.153 = private unnamed_addr constant [7 x i8] c"levels\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"Levels\00", align 1
@.str.155 = private unnamed_addr constant [34 x i8] c"Number of subdivisions to perform\00", align 1
@rna_SubsurfModifier_show_only_control_edges = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SubsurfModifier_use_subsurf_uv, ptr @rna_SubsurfModifier_render_levels, i32 -1, ptr @.str.159, i32 3, ptr @.str.160, ptr @.str.161, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SubsurfModifier_show_only_control_edges_get, ptr @SubsurfModifier_show_only_control_edges_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.156 = private unnamed_addr constant [14 x i8] c"render_levels\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"Render Levels\00", align 1
@.str.158 = private unnamed_addr constant [49 x i8] c"Number of subdivisions to perform when rendering\00", align 1
@rna_SubsurfModifier_use_subsurf_uv = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SubsurfModifier_show_only_control_edges, i32 -1, ptr @.str.162, i32 3, ptr @.str.163, ptr @.str.164, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SubsurfModifier_use_subsurf_uv_get, ptr @SubsurfModifier_use_subsurf_uv_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.159 = private unnamed_addr constant [24 x i8] c"show_only_control_edges\00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"Optimal Display\00", align 1
@.str.161 = private unnamed_addr constant [52 x i8] c"Skip drawing/rendering of interior subdivided edges\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"use_subsurf_uv\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"Subdivide UVs\00", align 1
@.str.164 = private unnamed_addr constant [29 x i8] c"Use subsurf to subdivide UVs\00", align 1
@RNA_LatticeModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CurveModifier, ptr @RNA_SubsurfModifier, ptr null, %struct.ListBase { ptr @rna_LatticeModifier_object, ptr @rna_LatticeModifier_strength } }, ptr @.str.177, ptr null, ptr null, i32 4, ptr @.str.178, ptr @.str.179, ptr @.str.121, i32 458, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.165 = private unnamed_addr constant [16 x i8] c"SubsurfModifier\00", align 1
@.str.166 = private unnamed_addr constant [17 x i8] c"Subsurf Modifier\00", align 1
@.str.167 = private unnamed_addr constant [29 x i8] c"Subdivision surface modifier\00", align 1
@rna_LatticeModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_LatticeModifier_strength, ptr @rna_LatticeModifier_object, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.173, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LatticeModifier_vertex_group_get, ptr @LatticeModifier_vertex_group_length, ptr @LatticeModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.168 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.170 = private unnamed_addr constant [30 x i8] c"Lattice object to deform with\00", align 1
@rna_LatticeModifier_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_LatticeModifier_vertex_group, ptr null, i32 -1, ptr @.str.168, i32 9437185, ptr @.str.169, ptr @.str.170, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LatticeModifier_object_get, ptr @LatticeModifier_object_set, ptr null, ptr @rna_Lattice_object_poll, ptr @RNA_Object }, align 8
@rna_LatticeModifier_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LatticeModifier_vertex_group, i32 -1, ptr @.str.174, i32 8195, ptr @.str.175, ptr @.str.176, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 184, i32 4, ptr null, ptr null }, ptr @LatticeModifier_strength_get, ptr @LatticeModifier_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.171 = private unnamed_addr constant [13 x i8] c"vertex_group\00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"Vertex Group\00", align 1
@.str.173 = private unnamed_addr constant [70 x i8] c"Name of Vertex Group which determines influence of modifier per point\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"Strength\00", align 1
@.str.176 = private unnamed_addr constant [28 x i8] c"Strength of modifier effect\00", align 1
@RNA_CurveModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BuildModifier, ptr @RNA_LatticeModifier, ptr null, %struct.ListBase { ptr @rna_CurveModifier_object, ptr @rna_CurveModifier_deform_axis } }, ptr @.str.184, ptr null, ptr null, i32 4, ptr @.str.185, ptr @.str.186, ptr @.str.121, i32 457, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.177 = private unnamed_addr constant [16 x i8] c"LatticeModifier\00", align 1
@.str.178 = private unnamed_addr constant [17 x i8] c"Lattice Modifier\00", align 1
@.str.179 = private unnamed_addr constant [29 x i8] c"Lattice deformation modifier\00", align 1
@rna_CurveModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveModifier_deform_axis, ptr @rna_CurveModifier_object, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.173, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveModifier_vertex_group_get, ptr @CurveModifier_vertex_group_length, ptr @CurveModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.180 = private unnamed_addr constant [28 x i8] c"Curve object to deform with\00", align 1
@rna_CurveModifier_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CurveModifier_vertex_group, ptr null, i32 -1, ptr @.str.168, i32 9437185, ptr @.str.169, ptr @.str.180, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveModifier_object_get, ptr @CurveModifier_object_set, ptr null, ptr @rna_Curve_object_poll, ptr @RNA_Object }, align 8
@rna_CurveModifier_deform_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CurveModifier_vertex_group, i32 -1, ptr @.str.181, i32 3, ptr @.str.182, ptr @.str.183, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CurveModifier_deform_axis_get, ptr @CurveModifier_deform_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_CurveModifier_deform_axis_items, i32 6, i32 1 }, align 8
@.str.181 = private unnamed_addr constant [12 x i8] c"deform_axis\00", align 1
@.str.182 = private unnamed_addr constant [12 x i8] c"Deform Axis\00", align 1
@.str.183 = private unnamed_addr constant [38 x i8] c"The axis that the curve deforms along\00", align 1
@rna_CurveModifier_deform_axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1079, i32 0, ptr @.str.206, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1080, i32 0, ptr @.str.209, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.1081, i32 0, ptr @.str.212, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.1082, i32 0, ptr @.str.1083, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.1084, i32 0, ptr @.str.1085, ptr @.str }, %struct.EnumPropertyItem { i32 6, ptr @.str.1086, i32 0, ptr @.str.1087, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_BuildModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MirrorModifier, ptr @RNA_CurveModifier, ptr null, %struct.ListBase { ptr @rna_BuildModifier_frame_start, ptr @rna_BuildModifier_seed } }, ptr @.str.202, ptr null, ptr null, i32 4, ptr @.str.203, ptr @.str.204, ptr @.str.121, i32 444, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.184 = private unnamed_addr constant [14 x i8] c"CurveModifier\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c"Curve Modifier\00", align 1
@.str.186 = private unnamed_addr constant [27 x i8] c"Curve deformation modifier\00", align 1
@rna_BuildModifier_frame_duration = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BuildModifier_use_reverse, ptr @rna_BuildModifier_frame_start, i32 -1, ptr @.str.190, i32 8195, ptr @.str.191, ptr @.str.192, i32 0, ptr @.str.121, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 116, i32 4, ptr null, ptr null }, ptr @BuildModifier_frame_duration_get, ptr @BuildModifier_frame_duration_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 3.000000e+05, float 1.000000e+00, float 3.000000e+05, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.187 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.189 = private unnamed_addr constant [26 x i8] c"Start frame of the effect\00", align 1
@rna_BuildModifier_frame_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BuildModifier_frame_duration, ptr null, i32 -1, ptr @.str.187, i32 8195, ptr @.str.188, ptr @.str.189, i32 0, ptr @.str.121, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @BuildModifier_frame_start_get, ptr @BuildModifier_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -3.000000e+05, float 3.000000e+05, float -3.000000e+05, float 3.000000e+05, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_BuildModifier_use_reverse = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BuildModifier_use_random_order, ptr @rna_BuildModifier_frame_duration, i32 -1, ptr @.str.193, i32 3, ptr @.str.194, ptr @.str.195, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BuildModifier_use_reverse_get, ptr @BuildModifier_use_reverse_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.190 = private unnamed_addr constant [15 x i8] c"frame_duration\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.192 = private unnamed_addr constant [37 x i8] c"Total time the build effect requires\00", align 1
@rna_BuildModifier_use_random_order = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BuildModifier_seed, ptr @rna_BuildModifier_use_reverse, i32 -1, ptr @.str.196, i32 3, ptr @.str.197, ptr @.str.198, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BuildModifier_use_random_order_get, ptr @BuildModifier_use_random_order_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.193 = private unnamed_addr constant [12 x i8] c"use_reverse\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"Reversed\00", align 1
@.str.195 = private unnamed_addr constant [44 x i8] c"Deconstruct the mesh instead of building it\00", align 1
@rna_BuildModifier_seed = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BuildModifier_use_random_order, i32 -1, ptr @.str.199, i32 8195, ptr @.str.200, ptr @.str.201, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 124, i32 0, ptr null, ptr null }, ptr @BuildModifier_seed_get, ptr @BuildModifier_seed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 300000, i32 1, i32 300000, i32 1, i32 0, ptr null }, align 8
@.str.196 = private unnamed_addr constant [17 x i8] c"use_random_order\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"Randomize\00", align 1
@.str.198 = private unnamed_addr constant [42 x i8] c"Randomize the faces or edges during build\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"Seed\00", align 1
@.str.201 = private unnamed_addr constant [24 x i8] c"Seed for random if used\00", align 1
@RNA_MirrorModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DecimateModifier, ptr @RNA_BuildModifier, ptr null, %struct.ListBase { ptr @rna_MirrorModifier_use_x, ptr @rna_MirrorModifier_mirror_object } }, ptr @.str.234, ptr null, ptr null, i32 4, ptr @.str.235, ptr @.str.236, ptr @.str.121, i32 446, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.202 = private unnamed_addr constant [14 x i8] c"BuildModifier\00", align 1
@.str.203 = private unnamed_addr constant [15 x i8] c"Build Modifier\00", align 1
@.str.204 = private unnamed_addr constant [22 x i8] c"Build effect modifier\00", align 1
@rna_MirrorModifier_use_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MirrorModifier_use_z, ptr @rna_MirrorModifier_use_x, i32 -1, ptr @.str.208, i32 3, ptr @.str.209, ptr @.str.210, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MirrorModifier_use_y_get, ptr @MirrorModifier_use_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.205 = private unnamed_addr constant [6 x i8] c"use_x\00", align 1
@.str.206 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.207 = private unnamed_addr constant [21 x i8] c"Enable X axis mirror\00", align 1
@rna_MirrorModifier_use_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MirrorModifier_use_y, ptr null, i32 -1, ptr @.str.205, i32 3, ptr @.str.206, ptr @.str.207, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MirrorModifier_use_x_get, ptr @MirrorModifier_use_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_MirrorModifier_use_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MirrorModifier_use_clip, ptr @rna_MirrorModifier_use_y, i32 -1, ptr @.str.211, i32 3, ptr @.str.212, ptr @.str.213, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MirrorModifier_use_z_get, ptr @MirrorModifier_use_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.208 = private unnamed_addr constant [6 x i8] c"use_y\00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.210 = private unnamed_addr constant [21 x i8] c"Enable Y axis mirror\00", align 1
@rna_MirrorModifier_use_clip = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MirrorModifier_use_mirror_vertex_groups, ptr @rna_MirrorModifier_use_z, i32 -1, ptr @.str.214, i32 3, ptr @.str.115, ptr @.str.215, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MirrorModifier_use_clip_get, ptr @MirrorModifier_use_clip_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.211 = private unnamed_addr constant [6 x i8] c"use_z\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.213 = private unnamed_addr constant [21 x i8] c"Enable Z axis mirror\00", align 1
@rna_MirrorModifier_use_mirror_vertex_groups = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MirrorModifier_use_mirror_merge, ptr @rna_MirrorModifier_use_clip, i32 -1, ptr @.str.216, i32 3, ptr @.str.217, ptr @.str.218, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MirrorModifier_use_mirror_vertex_groups_get, ptr @MirrorModifier_use_mirror_vertex_groups_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.214 = private unnamed_addr constant [9 x i8] c"use_clip\00", align 1
@.str.215 = private unnamed_addr constant [64 x i8] c"Prevent vertices from going through the mirror during transform\00", align 1
@rna_MirrorModifier_use_mirror_merge = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MirrorModifier_use_mirror_u, ptr @rna_MirrorModifier_use_mirror_vertex_groups, i32 -1, ptr @.str.219, i32 3, ptr @.str.220, ptr @.str.221, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MirrorModifier_use_mirror_merge_get, ptr @MirrorModifier_use_mirror_merge_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.216 = private unnamed_addr constant [25 x i8] c"use_mirror_vertex_groups\00", align 1
@.str.217 = private unnamed_addr constant [21 x i8] c"Mirror Vertex Groups\00", align 1
@.str.218 = private unnamed_addr constant [35 x i8] c"Mirror vertex groups (e.g. .R->.L)\00", align 1
@rna_MirrorModifier_use_mirror_u = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MirrorModifier_use_mirror_v, ptr @rna_MirrorModifier_use_mirror_merge, i32 -1, ptr @.str.222, i32 3, ptr @.str.223, ptr @.str.224, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MirrorModifier_use_mirror_u_get, ptr @MirrorModifier_use_mirror_u_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.219 = private unnamed_addr constant [17 x i8] c"use_mirror_merge\00", align 1
@.str.220 = private unnamed_addr constant [15 x i8] c"Merge Vertices\00", align 1
@.str.221 = private unnamed_addr constant [42 x i8] c"Merge vertices within the merge threshold\00", align 1
@rna_MirrorModifier_use_mirror_v = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MirrorModifier_merge_threshold, ptr @rna_MirrorModifier_use_mirror_u, i32 -1, ptr @.str.225, i32 3, ptr @.str.226, ptr @.str.227, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MirrorModifier_use_mirror_v_get, ptr @MirrorModifier_use_mirror_v_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.222 = private unnamed_addr constant [13 x i8] c"use_mirror_u\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"Mirror U\00", align 1
@.str.224 = private unnamed_addr constant [53 x i8] c"Mirror the U texture coordinate around the 0.5 point\00", align 1
@rna_MirrorModifier_merge_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MirrorModifier_mirror_object, ptr @rna_MirrorModifier_use_mirror_v, i32 -1, ptr @.str.228, i32 8195, ptr @.str.229, ptr @.str.230, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 116, i32 4, ptr null, ptr null }, ptr @MirrorModifier_merge_threshold_get, ptr @MirrorModifier_merge_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3F847AE140000000, i32 6, float 0.000000e+00, ptr null }, align 8
@.str.225 = private unnamed_addr constant [13 x i8] c"use_mirror_v\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"Mirror V\00", align 1
@.str.227 = private unnamed_addr constant [53 x i8] c"Mirror the V texture coordinate around the 0.5 point\00", align 1
@rna_MirrorModifier_mirror_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MirrorModifier_merge_threshold, i32 -1, ptr @.str.231, i32 9437185, ptr @.str.232, ptr @.str.233, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MirrorModifier_mirror_object_get, ptr @MirrorModifier_mirror_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.228 = private unnamed_addr constant [16 x i8] c"merge_threshold\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"Merge Limit\00", align 1
@.str.230 = private unnamed_addr constant [61 x i8] c"Distance from axis within which mirrored vertices are merged\00", align 1
@.str.231 = private unnamed_addr constant [14 x i8] c"mirror_object\00", align 1
@.str.232 = private unnamed_addr constant [14 x i8] c"Mirror Object\00", align 1
@.str.233 = private unnamed_addr constant [24 x i8] c"Object to use as mirror\00", align 1
@RNA_DecimateModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_WaveModifier, ptr @RNA_MirrorModifier, ptr null, %struct.ListBase { ptr @rna_DecimateModifier_decimate_type, ptr @rna_DecimateModifier_face_count } }, ptr @.str.263, ptr null, ptr null, i32 4, ptr @.str.264, ptr @.str.265, ptr @.str.121, i32 445, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.234 = private unnamed_addr constant [15 x i8] c"MirrorModifier\00", align 1
@.str.235 = private unnamed_addr constant [16 x i8] c"Mirror Modifier\00", align 1
@.str.236 = private unnamed_addr constant [19 x i8] c"Mirroring modifier\00", align 1
@rna_DecimateModifier_ratio = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DecimateModifier_iterations, ptr @rna_DecimateModifier_decimate_type, i32 -1, ptr @.str.239, i32 8195, ptr @.str.240, ptr @.str.241, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @DecimateModifier_ratio_get, ptr @DecimateModifier_ratio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 4, float 0.000000e+00, ptr null }, align 8
@.str.237 = private unnamed_addr constant [14 x i8] c"decimate_type\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@rna_DecimateModifier_decimate_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1088, i32 0, ptr @.str.1089, ptr @.str.1090 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1091, i32 0, ptr @.str.1092, ptr @.str.1093 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1094, i32 0, ptr @.str.1095, ptr @.str.1096 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DecimateModifier_decimate_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DecimateModifier_ratio, ptr null, i32 -1, ptr @.str.237, i32 3, ptr @.str.238, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DecimateModifier_decimate_type_get, ptr @DecimateModifier_decimate_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DecimateModifier_decimate_type_items, i32 3, i32 0 }, align 8
@rna_DecimateModifier_iterations = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_DecimateModifier_angle_limit, ptr @rna_DecimateModifier_ratio, i32 -1, ptr @.str.242, i32 8195, ptr @.str.243, ptr @.str.244, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 116, i32 1, ptr null, ptr null }, ptr @DecimateModifier_iterations_get, ptr @DecimateModifier_iterations_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 100, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.239 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"Ratio\00", align 1
@.str.241 = private unnamed_addr constant [48 x i8] c"Ratio of triangles to reduce to (collapse only)\00", align 1
@rna_DecimateModifier_angle_limit = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DecimateModifier_vertex_group, ptr @rna_DecimateModifier_iterations, i32 -1, ptr @.str.245, i32 8195, ptr @.str.246, ptr @.str.247, i32 0, ptr @.str.121, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 120, i32 4, ptr null, ptr null }, ptr @DecimateModifier_angle_limit_get, ptr @DecimateModifier_angle_limit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x400921FB60000000, float 0.000000e+00, float 0x400921FB60000000, float 1.000000e+02, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.242 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.243 = private unnamed_addr constant [11 x i8] c"Iterations\00", align 1
@.str.244 = private unnamed_addr constant [55 x i8] c"Number of times reduce the geometry (unsubdivide only)\00", align 1
@rna_DecimateModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DecimateModifier_invert_vertex_group, ptr @rna_DecimateModifier_angle_limit, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.248, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DecimateModifier_vertex_group_get, ptr @DecimateModifier_vertex_group_length, ptr @DecimateModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.245 = private unnamed_addr constant [12 x i8] c"angle_limit\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"Angle Limit\00", align 1
@.str.247 = private unnamed_addr constant [46 x i8] c"Only dissolve angles below this (planar only)\00", align 1
@rna_DecimateModifier_invert_vertex_group = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DecimateModifier_use_collapse_triangulate, ptr @rna_DecimateModifier_vertex_group, i32 -1, ptr @.str.249, i32 3, ptr @.str.250, ptr @.str.251, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DecimateModifier_invert_vertex_group_get, ptr @DecimateModifier_invert_vertex_group_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.248 = private unnamed_addr constant [34 x i8] c"Vertex group name (collapse only)\00", align 1
@rna_DecimateModifier_use_collapse_triangulate = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DecimateModifier_use_dissolve_boundaries, ptr @rna_DecimateModifier_invert_vertex_group, i32 -1, ptr @.str.252, i32 3, ptr @.str.44, ptr @.str.253, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DecimateModifier_use_collapse_triangulate_get, ptr @DecimateModifier_use_collapse_triangulate_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.249 = private unnamed_addr constant [20 x i8] c"invert_vertex_group\00", align 1
@.str.250 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.251 = private unnamed_addr constant [46 x i8] c"Invert vertex group influence (collapse only)\00", align 1
@rna_DecimateModifier_use_dissolve_boundaries = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_DecimateModifier_delimit, ptr @rna_DecimateModifier_use_collapse_triangulate, i32 -1, ptr @.str.254, i32 3, ptr @.str.255, ptr @.str.256, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DecimateModifier_use_dissolve_boundaries_get, ptr @DecimateModifier_use_dissolve_boundaries_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.252 = private unnamed_addr constant [25 x i8] c"use_collapse_triangulate\00", align 1
@.str.253 = private unnamed_addr constant [66 x i8] c"Keep triangulated faces resulting from decimation (collapse only)\00", align 1
@rna_DecimateModifier_delimit = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DecimateModifier_face_count, ptr @rna_DecimateModifier_use_dissolve_boundaries, i32 -1, ptr @.str.257, i32 2097155, ptr @.str.258, ptr @.str.259, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DecimateModifier_delimit_get, ptr @DecimateModifier_delimit_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DecimateModifier_delimit_items, i32 3, i32 1 }, align 8
@.str.254 = private unnamed_addr constant [24 x i8] c"use_dissolve_boundaries\00", align 1
@.str.255 = private unnamed_addr constant [15 x i8] c"All Boundaries\00", align 1
@.str.256 = private unnamed_addr constant [62 x i8] c"Dissolve all vertices inbetween face boundaries (planar only)\00", align 1
@rna_DecimateModifier_face_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DecimateModifier_delimit, i32 -1, ptr @.str.260, i32 8194, ptr @.str.261, ptr @.str.262, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 192, i32 0, ptr null, ptr null }, ptr @DecimateModifier_face_count_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.257 = private unnamed_addr constant [8 x i8] c"delimit\00", align 1
@.str.258 = private unnamed_addr constant [8 x i8] c"Delimit\00", align 1
@.str.259 = private unnamed_addr constant [23 x i8] c"Limit merging geometry\00", align 1
@rna_DecimateModifier_delimit_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1097, i32 0, ptr @.str.515, ptr @.str.1098 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1099, i32 0, ptr @.str.597, ptr @.str.1100 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1101, i32 0, ptr @.str.1102, ptr @.str.1103 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.260 = private unnamed_addr constant [11 x i8] c"face_count\00", align 1
@.str.261 = private unnamed_addr constant [11 x i8] c"Face Count\00", align 1
@.str.262 = private unnamed_addr constant [50 x i8] c"The current number of faces in the decimated mesh\00", align 1
@RNA_WaveModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ArmatureModifier, ptr @RNA_DecimateModifier, ptr null, %struct.ListBase { ptr @rna_WaveModifier_use_x, ptr @rna_WaveModifier_texture_coords_object } }, ptr @.str.327, ptr null, ptr null, i32 4, ptr @.str.328, ptr @.str.329, ptr @.str.121, i32 443, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.263 = private unnamed_addr constant [17 x i8] c"DecimateModifier\00", align 1
@.str.264 = private unnamed_addr constant [18 x i8] c"Decimate Modifier\00", align 1
@.str.265 = private unnamed_addr constant [20 x i8] c"Decimation modifier\00", align 1
@rna_WaveModifier_use_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_use_cyclic, ptr @rna_WaveModifier_use_x, i32 -1, ptr @.str.208, i32 3, ptr @.str.209, ptr @.str.267, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_use_y_get, ptr @WaveModifier_use_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.266 = private unnamed_addr constant [14 x i8] c"X axis motion\00", align 1
@rna_WaveModifier_use_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_use_y, ptr null, i32 -1, ptr @.str.205, i32 3, ptr @.str.206, ptr @.str.266, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_use_x_get, ptr @WaveModifier_use_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_WaveModifier_use_cyclic = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_use_normal, ptr @rna_WaveModifier_use_y, i32 -1, ptr @.str.268, i32 3, ptr @.str.269, ptr @.str.270, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_use_cyclic_get, ptr @WaveModifier_use_cyclic_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.267 = private unnamed_addr constant [14 x i8] c"Y axis motion\00", align 1
@rna_WaveModifier_use_normal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_use_normal_x, ptr @rna_WaveModifier_use_cyclic, i32 -1, ptr @.str.271, i32 3, ptr @.str.272, ptr @.str.273, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_use_normal_get, ptr @WaveModifier_use_normal_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.268 = private unnamed_addr constant [11 x i8] c"use_cyclic\00", align 1
@.str.269 = private unnamed_addr constant [7 x i8] c"Cyclic\00", align 1
@.str.270 = private unnamed_addr constant [19 x i8] c"Cyclic wave effect\00", align 1
@rna_WaveModifier_use_normal_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_use_normal_y, ptr @rna_WaveModifier_use_normal, i32 -1, ptr @.str.274, i32 3, ptr @.str.275, ptr @.str.276, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_use_normal_x_get, ptr @WaveModifier_use_normal_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.271 = private unnamed_addr constant [11 x i8] c"use_normal\00", align 1
@.str.272 = private unnamed_addr constant [8 x i8] c"Normals\00", align 1
@.str.273 = private unnamed_addr constant [23 x i8] c"Displace along normals\00", align 1
@rna_WaveModifier_use_normal_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_use_normal_z, ptr @rna_WaveModifier_use_normal_x, i32 -1, ptr @.str.277, i32 3, ptr @.str.278, ptr @.str.279, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_use_normal_y_get, ptr @WaveModifier_use_normal_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.274 = private unnamed_addr constant [13 x i8] c"use_normal_x\00", align 1
@.str.275 = private unnamed_addr constant [9 x i8] c"X Normal\00", align 1
@.str.276 = private unnamed_addr constant [39 x i8] c"Enable displacement along the X normal\00", align 1
@rna_WaveModifier_use_normal_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_time_offset, ptr @rna_WaveModifier_use_normal_y, i32 -1, ptr @.str.280, i32 3, ptr @.str.281, ptr @.str.282, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_use_normal_z_get, ptr @WaveModifier_use_normal_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.277 = private unnamed_addr constant [13 x i8] c"use_normal_y\00", align 1
@.str.278 = private unnamed_addr constant [9 x i8] c"Y Normal\00", align 1
@.str.279 = private unnamed_addr constant [39 x i8] c"Enable displacement along the Y normal\00", align 1
@rna_WaveModifier_time_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_lifetime, ptr @rna_WaveModifier_use_normal_z, i32 -1, ptr @.str.283, i32 8195, ptr @.str.284, ptr @.str.285, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 308, i32 4, ptr null, ptr null }, ptr @WaveModifier_time_offset_get, ptr @WaveModifier_time_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -3.000000e+05, float 3.000000e+05, float -3.000000e+05, float 3.000000e+05, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.280 = private unnamed_addr constant [13 x i8] c"use_normal_z\00", align 1
@.str.281 = private unnamed_addr constant [9 x i8] c"Z Normal\00", align 1
@.str.282 = private unnamed_addr constant [39 x i8] c"Enable displacement along the Z normal\00", align 1
@rna_WaveModifier_lifetime = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_damping_time, ptr @rna_WaveModifier_time_offset, i32 -1, ptr @.str.286, i32 8195, ptr @.str.287, ptr @.str.288, i32 0, ptr @.str.121, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 312, i32 4, ptr null, ptr null }, ptr @WaveModifier_lifetime_get, ptr @WaveModifier_lifetime_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -3.000000e+05, float 3.000000e+05, float -3.000000e+05, float 3.000000e+05, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.283 = private unnamed_addr constant [12 x i8] c"time_offset\00", align 1
@.str.284 = private unnamed_addr constant [12 x i8] c"Time Offset\00", align 1
@.str.285 = private unnamed_addr constant [85 x i8] c"Either the starting frame (for positive speed) or ending frame (for negative speed.)\00", align 1
@rna_WaveModifier_damping_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_falloff_radius, ptr @rna_WaveModifier_lifetime, i32 -1, ptr @.str.289, i32 8195, ptr @.str.290, ptr @.str.291, i32 0, ptr @.str.121, i32 2, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @WaveModifier_damping_time_get, ptr @WaveModifier_damping_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -3.000000e+05, float 3.000000e+05, float -3.000000e+05, float 3.000000e+05, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.286 = private unnamed_addr constant [9 x i8] c"lifetime\00", align 1
@.str.287 = private unnamed_addr constant [9 x i8] c"Lifetime\00", align 1
@.str.288 = private unnamed_addr constant [52 x i8] c"Lifetime of the wave in frames, zero means infinite\00", align 1
@rna_WaveModifier_falloff_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_start_position_x, ptr @rna_WaveModifier_damping_time, i32 -1, ptr @.str.292, i32 8195, ptr @.str.293, ptr @.str.294, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 304, i32 4, ptr null, ptr null }, ptr @WaveModifier_falloff_radius_get, ptr @WaveModifier_falloff_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+02, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.289 = private unnamed_addr constant [13 x i8] c"damping_time\00", align 1
@.str.290 = private unnamed_addr constant [13 x i8] c"Damping Time\00", align 1
@.str.291 = private unnamed_addr constant [59 x i8] c"Number of frames in which the wave damps out after it dies\00", align 1
@rna_WaveModifier_start_position_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_start_position_y, ptr @rna_WaveModifier_falloff_radius, i32 -1, ptr @.str.295, i32 8195, ptr @.str.296, ptr @.str.297, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 276, i32 4, ptr null, ptr null }, ptr @WaveModifier_start_position_x_get, ptr @WaveModifier_start_position_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+02, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.292 = private unnamed_addr constant [15 x i8] c"falloff_radius\00", align 1
@.str.293 = private unnamed_addr constant [15 x i8] c"Falloff Radius\00", align 1
@.str.294 = private unnamed_addr constant [34 x i8] c"Distance after which it fades out\00", align 1
@rna_WaveModifier_start_position_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_start_position_object, ptr @rna_WaveModifier_start_position_x, i32 -1, ptr @.str.298, i32 8195, ptr @.str.299, ptr @.str.300, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 280, i32 4, ptr null, ptr null }, ptr @WaveModifier_start_position_y_get, ptr @WaveModifier_start_position_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+02, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.295 = private unnamed_addr constant [17 x i8] c"start_position_x\00", align 1
@.str.296 = private unnamed_addr constant [17 x i8] c"Start Position X\00", align 1
@.str.297 = private unnamed_addr constant [35 x i8] c"X coordinate of the start position\00", align 1
@rna_WaveModifier_start_position_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_vertex_group, ptr @rna_WaveModifier_start_position_y, i32 -1, ptr @.str.301, i32 9437185, ptr @.str.302, ptr @.str.303, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_start_position_object_get, ptr @WaveModifier_start_position_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.298 = private unnamed_addr constant [17 x i8] c"start_position_y\00", align 1
@.str.299 = private unnamed_addr constant [17 x i8] c"Start Position Y\00", align 1
@.str.300 = private unnamed_addr constant [35 x i8] c"Y coordinate of the start position\00", align 1
@rna_WaveModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_speed, ptr @rna_WaveModifier_start_position_object, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.304, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_vertex_group_get, ptr @WaveModifier_vertex_group_length, ptr @WaveModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.301 = private unnamed_addr constant [22 x i8] c"start_position_object\00", align 1
@.str.302 = private unnamed_addr constant [22 x i8] c"Start Position Object\00", align 1
@.str.303 = private unnamed_addr constant [37 x i8] c"Object which defines the wave center\00", align 1
@rna_WaveModifier_speed = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_height, ptr @rna_WaveModifier_vertex_group, i32 -1, ptr @.str.305, i32 8195, ptr @.str.306, ptr @.str.307, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 296, i32 4, ptr null, ptr null }, ptr @WaveModifier_speed_get, ptr @WaveModifier_speed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.304 = private unnamed_addr constant [42 x i8] c"Vertex group name for modulating the wave\00", align 1
@rna_WaveModifier_height = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_width, ptr @rna_WaveModifier_speed, i32 -1, ptr @.str.308, i32 8195, ptr @.str.309, ptr @.str.310, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 284, i32 4, ptr null, ptr null }, ptr @WaveModifier_height_get, ptr @WaveModifier_height_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -2.000000e+00, float 2.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.305 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.306 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@.str.307 = private unnamed_addr constant [60 x i8] c"Speed of the wave, towards the starting point when negative\00", align 1
@rna_WaveModifier_width = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_narrowness, ptr @rna_WaveModifier_height, i32 -1, ptr @.str.311, i32 8195, ptr @.str.312, ptr @.str.313, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 288, i32 4, ptr null, ptr null }, ptr @WaveModifier_width_get, ptr @WaveModifier_width_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.308 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.309 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.310 = private unnamed_addr constant [19 x i8] c"Height of the wave\00", align 1
@rna_WaveModifier_narrowness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_texture, ptr @rna_WaveModifier_width, i32 -1, ptr @.str.314, i32 8195, ptr @.str.315, ptr @.str.316, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 292, i32 4, ptr null, ptr null }, ptr @WaveModifier_narrowness_get, ptr @WaveModifier_narrowness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.311 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.312 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.313 = private unnamed_addr constant [27 x i8] c"Distance between the waves\00", align 1
@rna_WaveModifier_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_texture_coords, ptr @rna_WaveModifier_narrowness, i32 -1, ptr @.str.317, i32 8388673, ptr @.str.318, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_texture_get, ptr @WaveModifier_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@.str.314 = private unnamed_addr constant [11 x i8] c"narrowness\00", align 1
@.str.315 = private unnamed_addr constant [11 x i8] c"Narrowness\00", align 1
@.str.316 = private unnamed_addr constant [96 x i8] c"Distance between the top and the base of a wave, the higher the value, the more narrow the wave\00", align 1
@rna_WaveModifier_texture_coords = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_uv_layer, ptr @rna_WaveModifier_texture, i32 -1, ptr @.str.319, i32 3, ptr @.str.320, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_texture_coords_get, ptr @WaveModifier_texture_coords_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_WaveModifier_texture_coords_items, i32 4, i32 0 }, align 8
@.str.317 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.318 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@rna_WaveModifier_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_WaveModifier_texture_coords_object, ptr @rna_WaveModifier_texture_coords, i32 -1, ptr @.str.321, i32 262145, ptr @.str.322, ptr @.str.323, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_uv_layer_get, ptr @WaveModifier_uv_layer_length, ptr @WaveModifier_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.319 = private unnamed_addr constant [15 x i8] c"texture_coords\00", align 1
@.str.320 = private unnamed_addr constant [20 x i8] c"Texture Coordinates\00", align 1
@rna_WaveModifier_texture_coords_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1104, i32 0, ptr @.str.1105, ptr @.str.1106 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1107, i32 0, ptr @.str.1108, ptr @.str.1109 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1110, i32 0, ptr @.str.169, ptr @.str.1111 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1112, i32 0, ptr @.str.1112, ptr @.str.1113 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WaveModifier_texture_coords_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WaveModifier_uv_layer, i32 -1, ptr @.str.324, i32 9437185, ptr @.str.325, ptr @.str.326, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WaveModifier_texture_coords_object_get, ptr @WaveModifier_texture_coords_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.321 = private unnamed_addr constant [9 x i8] c"uv_layer\00", align 1
@.str.322 = private unnamed_addr constant [7 x i8] c"UV Map\00", align 1
@.str.323 = private unnamed_addr constant [12 x i8] c"UV map name\00", align 1
@.str.324 = private unnamed_addr constant [22 x i8] c"texture_coords_object\00", align 1
@.str.325 = private unnamed_addr constant [26 x i8] c"Texture Coordinate Object\00", align 1
@.str.326 = private unnamed_addr constant [38 x i8] c"Object to set the texture coordinates\00", align 1
@RNA_ArmatureModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_HookModifier, ptr @RNA_WaveModifier, ptr null, %struct.ListBase { ptr @rna_ArmatureModifier_object, ptr @rna_ArmatureModifier_invert_vertex_group } }, ptr @.str.344, ptr null, ptr null, i32 4, ptr @.str.345, ptr @.str.346, ptr @.str.121, i32 460, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.327 = private unnamed_addr constant [13 x i8] c"WaveModifier\00", align 1
@.str.328 = private unnamed_addr constant [14 x i8] c"Wave Modifier\00", align 1
@.str.329 = private unnamed_addr constant [21 x i8] c"Wave effect modifier\00", align 1
@rna_ArmatureModifier_use_bone_envelopes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureModifier_use_vertex_groups, ptr @rna_ArmatureModifier_object, i32 -1, ptr @.str.331, i32 3, ptr @.str.332, ptr @.str.333, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureModifier_use_bone_envelopes_get, ptr @ArmatureModifier_use_bone_envelopes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.330 = private unnamed_addr constant [31 x i8] c"Armature object to deform with\00", align 1
@rna_ArmatureModifier_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureModifier_use_bone_envelopes, ptr null, i32 -1, ptr @.str.168, i32 9437185, ptr @.str.169, ptr @.str.330, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureModifier_object_get, ptr @ArmatureModifier_object_set, ptr null, ptr @rna_Armature_object_poll, ptr @RNA_Object }, align 8
@rna_ArmatureModifier_use_vertex_groups = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureModifier_use_deform_preserve_volume, ptr @rna_ArmatureModifier_use_bone_envelopes, i32 -1, ptr @.str.334, i32 3, ptr @.str.335, ptr @.str.336, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureModifier_use_vertex_groups_get, ptr @ArmatureModifier_use_vertex_groups_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.331 = private unnamed_addr constant [19 x i8] c"use_bone_envelopes\00", align 1
@.str.332 = private unnamed_addr constant [19 x i8] c"Use Bone Envelopes\00", align 1
@.str.333 = private unnamed_addr constant [41 x i8] c"Bind Bone envelopes to armature modifier\00", align 1
@rna_ArmatureModifier_use_deform_preserve_volume = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureModifier_use_multi_modifier, ptr @rna_ArmatureModifier_use_vertex_groups, i32 -1, ptr @.str.337, i32 3, ptr @.str.338, ptr @.str.339, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureModifier_use_deform_preserve_volume_get, ptr @ArmatureModifier_use_deform_preserve_volume_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.334 = private unnamed_addr constant [18 x i8] c"use_vertex_groups\00", align 1
@.str.335 = private unnamed_addr constant [18 x i8] c"Use Vertex Groups\00", align 1
@.str.336 = private unnamed_addr constant [40 x i8] c"Bind vertex groups to armature modifier\00", align 1
@rna_ArmatureModifier_use_multi_modifier = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureModifier_vertex_group, ptr @rna_ArmatureModifier_use_deform_preserve_volume, i32 -1, ptr @.str.340, i32 8195, ptr @.str.341, ptr @.str.342, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 114, i32 1, ptr null, ptr null }, ptr @ArmatureModifier_use_multi_modifier_get, ptr @ArmatureModifier_use_multi_modifier_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.337 = private unnamed_addr constant [27 x i8] c"use_deform_preserve_volume\00", align 1
@.str.338 = private unnamed_addr constant [16 x i8] c"Preserve Volume\00", align 1
@.str.339 = private unnamed_addr constant [47 x i8] c"Deform rotation interpolation with quaternions\00", align 1
@rna_ArmatureModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureModifier_invert_vertex_group, ptr @rna_ArmatureModifier_use_multi_modifier, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.173, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureModifier_vertex_group_get, ptr @ArmatureModifier_vertex_group_length, ptr @ArmatureModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.340 = private unnamed_addr constant [19 x i8] c"use_multi_modifier\00", align 1
@.str.341 = private unnamed_addr constant [15 x i8] c"Multi Modifier\00", align 1
@.str.342 = private unnamed_addr constant [74 x i8] c"Use same input as previous modifier, and mix results using overall vgroup\00", align 1
@rna_ArmatureModifier_invert_vertex_group = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ArmatureModifier_vertex_group, i32 -1, ptr @.str.249, i32 3, ptr @.str.250, ptr @.str.343, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureModifier_invert_vertex_group_get, ptr @ArmatureModifier_invert_vertex_group_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.343 = private unnamed_addr constant [30 x i8] c"Invert vertex group influence\00", align 1
@RNA_HookModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SoftBodyModifier, ptr @RNA_ArmatureModifier, ptr null, %struct.ListBase { ptr @rna_HookModifier_falloff, ptr @rna_HookModifier_vertex_group } }, ptr @.str.359, ptr null, ptr null, i32 4, ptr @.str.360, ptr @.str.361, ptr @.str.121, i32 449, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.344 = private unnamed_addr constant [17 x i8] c"ArmatureModifier\00", align 1
@.str.345 = private unnamed_addr constant [18 x i8] c"Armature Modifier\00", align 1
@.str.346 = private unnamed_addr constant [30 x i8] c"Armature deformation modifier\00", align 1
@rna_HookModifier_force = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_HookModifier_center, ptr @rna_HookModifier_falloff, i32 -1, ptr @.str.350, i32 8195, ptr @.str.351, ptr @.str.352, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 276, i32 4, ptr null, ptr null }, ptr @HookModifier_force_get, ptr @HookModifier_force_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.347 = private unnamed_addr constant [8 x i8] c"falloff\00", align 1
@.str.348 = private unnamed_addr constant [8 x i8] c"Falloff\00", align 1
@.str.349 = private unnamed_addr constant [61 x i8] c"If not zero, the distance from the hook where influence ends\00", align 1
@rna_HookModifier_falloff = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_HookModifier_force, ptr null, i32 -1, ptr @.str.347, i32 8195, ptr @.str.348, ptr @.str.349, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 260, i32 4, ptr null, ptr null }, ptr @HookModifier_falloff_get, ptr @HookModifier_falloff_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+02, i32 2, float 0.000000e+00, ptr null }, align 8
@rna_HookModifier_center = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_HookModifier_object, ptr @rna_HookModifier_force, i32 -1, ptr @.str.353, i32 8195, ptr @.str.354, ptr @.str, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 248, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @HookModifier_center_get, ptr @HookModifier_center_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_HookModifier_center_default }, align 8
@.str.350 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.351 = private unnamed_addr constant [6 x i8] c"Force\00", align 1
@.str.352 = private unnamed_addr constant [27 x i8] c"Relative force of the hook\00", align 1
@rna_HookModifier_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_HookModifier_subtarget, ptr @rna_HookModifier_center, i32 -1, ptr @.str.168, i32 9437185, ptr @.str.169, ptr @.str.355, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @HookModifier_object_get, ptr @HookModifier_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.353 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.354 = private unnamed_addr constant [12 x i8] c"Hook Center\00", align 1
@rna_HookModifier_center_default = internal global [3 x float] zeroinitializer, align 4
@rna_HookModifier_subtarget = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_HookModifier_vertex_group, ptr @rna_HookModifier_object, i32 -1, ptr @.str.356, i32 262145, ptr @.str.357, ptr @.str.358, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @HookModifier_subtarget_get, ptr @HookModifier_subtarget_length, ptr @HookModifier_subtarget_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.355 = private unnamed_addr constant [60 x i8] c"Parent Object for hook, also recalculates and clears offset\00", align 1
@rna_HookModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_HookModifier_subtarget, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.173, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @HookModifier_vertex_group_get, ptr @HookModifier_vertex_group_length, ptr @HookModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.356 = private unnamed_addr constant [10 x i8] c"subtarget\00", align 1
@.str.357 = private unnamed_addr constant [11 x i8] c"Sub-Target\00", align 1
@.str.358 = private unnamed_addr constant [82 x i8] c"Name of Parent Bone for hook (if applicable), also recalculates and clears offset\00", align 1
@RNA_SoftBodyModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BooleanModifier, ptr @RNA_HookModifier, ptr null, %struct.ListBase { ptr @rna_SoftBodyModifier_settings, ptr @rna_SoftBodyModifier_point_cache } }, ptr @.str.366, ptr null, ptr null, i32 4, ptr @.str.367, ptr @.str.368, ptr @.str.121, i32 447, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.359 = private unnamed_addr constant [13 x i8] c"HookModifier\00", align 1
@.str.360 = private unnamed_addr constant [14 x i8] c"Hook Modifier\00", align 1
@.str.361 = private unnamed_addr constant [49 x i8] c"Hook modifier to modify the location of vertices\00", align 1
@rna_SoftBodyModifier_point_cache = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SoftBodyModifier_settings, i32 -1, ptr @.str.364, i32 8650752, ptr @.str.365, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoftBodyModifier_point_cache_get, ptr null, ptr null, ptr null, ptr @RNA_PointCache }, align 8
@.str.362 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.363 = private unnamed_addr constant [19 x i8] c"Soft Body Settings\00", align 1
@RNA_SoftBodySettings = external global %struct.StructRNA, align 8
@rna_SoftBodyModifier_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SoftBodyModifier_point_cache, ptr null, i32 -1, ptr @.str.362, i32 8650752, ptr @.str.363, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SoftBodyModifier_settings_get, ptr null, ptr null, ptr null, ptr @RNA_SoftBodySettings }, align 8
@.str.364 = private unnamed_addr constant [12 x i8] c"point_cache\00", align 1
@.str.365 = private unnamed_addr constant [22 x i8] c"Soft Body Point Cache\00", align 1
@RNA_BooleanModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ArrayModifier, ptr @RNA_SoftBodyModifier, ptr null, %struct.ListBase { ptr @rna_BooleanModifier_object, ptr @rna_BooleanModifier_operation } }, ptr @.str.372, ptr null, ptr null, i32 4, ptr @.str.373, ptr @.str.374, ptr @.str.121, i32 452, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.366 = private unnamed_addr constant [17 x i8] c"SoftBodyModifier\00", align 1
@.str.367 = private unnamed_addr constant [19 x i8] c"Soft Body Modifier\00", align 1
@.str.368 = private unnamed_addr constant [30 x i8] c"Soft body simulation modifier\00", align 1
@rna_BooleanModifier_operation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BooleanModifier_object, i32 -1, ptr @.str.370, i32 3, ptr @.str.371, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BooleanModifier_operation_get, ptr @BooleanModifier_operation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BooleanModifier_operation_items, i32 3, i32 0 }, align 8
@.str.369 = private unnamed_addr constant [41 x i8] c"Mesh object to use for Boolean operation\00", align 1
@rna_BooleanModifier_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_BooleanModifier_operation, ptr null, i32 -1, ptr @.str.168, i32 9437185, ptr @.str.169, ptr @.str.369, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BooleanModifier_object_get, ptr @BooleanModifier_object_set, ptr null, ptr @rna_Mesh_object_poll, ptr @RNA_Object }, align 8
@.str.370 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.371 = private unnamed_addr constant [10 x i8] c"Operation\00", align 1
@rna_BooleanModifier_operation_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1114, i32 0, ptr @.str.1115, ptr @.str.1116 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1117, i32 0, ptr @.str.1118, ptr @.str.1119 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1120, i32 0, ptr @.str.1121, ptr @.str.1122 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_ArrayModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_EdgeSplitModifier, ptr @RNA_BooleanModifier, ptr null, %struct.ListBase { ptr @rna_ArrayModifier_fit_type, ptr @rna_ArrayModifier_end_cap } }, ptr @.str.414, ptr null, ptr null, i32 4, ptr @.str.415, ptr @.str.416, ptr @.str.121, i32 454, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.372 = private unnamed_addr constant [16 x i8] c"BooleanModifier\00", align 1
@.str.373 = private unnamed_addr constant [17 x i8] c"Boolean Modifier\00", align 1
@.str.374 = private unnamed_addr constant [28 x i8] c"Boolean operations modifier\00", align 1
@rna_ArrayModifier_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_fit_length, ptr @rna_ArrayModifier_fit_type, i32 -1, ptr @.str.378, i32 8195, ptr @.str.379, ptr @.str.380, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 188, i32 0, ptr null, ptr null }, ptr @ArrayModifier_count_get, ptr @ArrayModifier_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 1000, i32 1, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.375 = private unnamed_addr constant [9 x i8] c"fit_type\00", align 1
@.str.376 = private unnamed_addr constant [9 x i8] c"Fit Type\00", align 1
@.str.377 = private unnamed_addr constant [32 x i8] c"Array length calculation method\00", align 1
@rna_ArrayModifier_fit_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1123, i32 0, ptr @.str.1124, ptr @.str.1125 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1126, i32 0, ptr @.str.1127, ptr @.str.1128 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1129, i32 0, ptr @.str.1130, ptr @.str.1131 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ArrayModifier_fit_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_count, ptr null, i32 -1, ptr @.str.375, i32 3, ptr @.str.376, ptr @.str.377, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArrayModifier_fit_type_get, ptr @ArrayModifier_fit_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ArrayModifier_fit_type_items, i32 3, i32 0 }, align 8
@rna_ArrayModifier_fit_length = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_curve, ptr @rna_ArrayModifier_count, i32 -1, ptr @.str.381, i32 8195, ptr @.str.191, ptr @.str.382, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 168, i32 4, ptr null, ptr null }, ptr @ArrayModifier_fit_length_get, ptr @ArrayModifier_fit_length_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 0x41E0000000000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.378 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.379 = private unnamed_addr constant [6 x i8] c"Count\00", align 1
@.str.380 = private unnamed_addr constant [29 x i8] c"Number of duplicates to make\00", align 1
@rna_ArrayModifier_curve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_use_constant_offset, ptr @rna_ArrayModifier_fit_length, i32 -1, ptr @.str.383, i32 9437185, ptr @.str.54, ptr @.str.384, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArrayModifier_curve_get, ptr @ArrayModifier_curve_set, ptr null, ptr @rna_Curve_object_poll, ptr @RNA_Object }, align 8
@.str.381 = private unnamed_addr constant [11 x i8] c"fit_length\00", align 1
@.str.382 = private unnamed_addr constant [27 x i8] c"Length to fit array within\00", align 1
@rna_ArrayModifier_use_constant_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_constant_offset_displace, ptr @rna_ArrayModifier_curve, i32 -1, ptr @.str.385, i32 3, ptr @.str.386, ptr @.str.387, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArrayModifier_use_constant_offset_get, ptr @ArrayModifier_use_constant_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.383 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.384 = private unnamed_addr constant [36 x i8] c"Curve object to fit array length to\00", align 1
@rna_ArrayModifier_constant_offset_displace = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_use_relative_offset, ptr @rna_ArrayModifier_use_constant_offset, i32 -1, ptr @.str.388, i32 8195, ptr @.str.389, ptr @.str.390, i32 0, ptr @.str.121, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ArrayModifier_constant_offset_displace_get, ptr @ArrayModifier_constant_offset_displace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_ArrayModifier_constant_offset_displace_default }, align 8
@.str.385 = private unnamed_addr constant [20 x i8] c"use_constant_offset\00", align 1
@.str.386 = private unnamed_addr constant [16 x i8] c"Constant Offset\00", align 1
@.str.387 = private unnamed_addr constant [22 x i8] c"Add a constant offset\00", align 1
@rna_ArrayModifier_use_relative_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_relative_offset_displace, ptr @rna_ArrayModifier_constant_offset_displace, i32 -1, ptr @.str.391, i32 3, ptr @.str.392, ptr @.str.393, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArrayModifier_use_relative_offset_get, ptr @ArrayModifier_use_relative_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.388 = private unnamed_addr constant [25 x i8] c"constant_offset_displace\00", align 1
@.str.389 = private unnamed_addr constant [29 x i8] c"Constant Offset Displacement\00", align 1
@.str.390 = private unnamed_addr constant [45 x i8] c"Value for the distance between arrayed items\00", align 1
@rna_ArrayModifier_constant_offset_displace_default = internal global [3 x float] zeroinitializer, align 4
@rna_ArrayModifier_relative_offset_displace = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_use_merge_vertices, ptr @rna_ArrayModifier_use_relative_offset, i32 -1, ptr @.str.394, i32 8195, ptr @.str.395, ptr @.str.396, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 156, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @ArrayModifier_relative_offset_displace_get, ptr @ArrayModifier_relative_offset_displace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_ArrayModifier_relative_offset_displace_default }, align 8
@.str.391 = private unnamed_addr constant [20 x i8] c"use_relative_offset\00", align 1
@.str.392 = private unnamed_addr constant [16 x i8] c"Relative Offset\00", align 1
@.str.393 = private unnamed_addr constant [52 x i8] c"Add an offset relative to the object's bounding box\00", align 1
@rna_ArrayModifier_use_merge_vertices = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_use_merge_vertices_cap, ptr @rna_ArrayModifier_relative_offset_displace, i32 -1, ptr @.str.397, i32 3, ptr @.str.220, ptr @.str.398, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArrayModifier_use_merge_vertices_get, ptr @ArrayModifier_use_merge_vertices_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.394 = private unnamed_addr constant [25 x i8] c"relative_offset_displace\00", align 1
@.str.395 = private unnamed_addr constant [29 x i8] c"Relative Offset Displacement\00", align 1
@.str.396 = private unnamed_addr constant [75 x i8] c"The size of the geometry will determine the distance between arrayed items\00", align 1
@rna_ArrayModifier_relative_offset_displace_default = internal global [3 x float] zeroinitializer, align 4
@rna_ArrayModifier_use_merge_vertices_cap = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_merge_threshold, ptr @rna_ArrayModifier_use_merge_vertices, i32 -1, ptr @.str.399, i32 3, ptr @.str.220, ptr @.str.400, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArrayModifier_use_merge_vertices_cap_get, ptr @ArrayModifier_use_merge_vertices_cap_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.397 = private unnamed_addr constant [19 x i8] c"use_merge_vertices\00", align 1
@.str.398 = private unnamed_addr constant [38 x i8] c"Merge vertices in adjacent duplicates\00", align 1
@rna_ArrayModifier_merge_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_use_object_offset, ptr @rna_ArrayModifier_use_merge_vertices_cap, i32 -1, ptr @.str.228, i32 8195, ptr @.str.401, ptr @.str.402, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 172, i32 4, ptr null, ptr null }, ptr @ArrayModifier_merge_threshold_get, ptr @ArrayModifier_merge_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 4, float 0.000000e+00, ptr null }, align 8
@.str.399 = private unnamed_addr constant [23 x i8] c"use_merge_vertices_cap\00", align 1
@.str.400 = private unnamed_addr constant [44 x i8] c"Merge vertices in first and last duplicates\00", align 1
@rna_ArrayModifier_use_object_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_offset_object, ptr @rna_ArrayModifier_merge_threshold, i32 -1, ptr @.str.403, i32 3, ptr @.str.404, ptr @.str.405, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArrayModifier_use_object_offset_get, ptr @ArrayModifier_use_object_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.401 = private unnamed_addr constant [15 x i8] c"Merge Distance\00", align 1
@.str.402 = private unnamed_addr constant [36 x i8] c"Limit below which to merge vertices\00", align 1
@rna_ArrayModifier_offset_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_start_cap, ptr @rna_ArrayModifier_use_object_offset, i32 -1, ptr @.str.406, i32 9437185, ptr @.str.404, ptr @.str.407, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArrayModifier_offset_object_get, ptr @ArrayModifier_offset_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.403 = private unnamed_addr constant [18 x i8] c"use_object_offset\00", align 1
@.str.404 = private unnamed_addr constant [14 x i8] c"Object Offset\00", align 1
@.str.405 = private unnamed_addr constant [56 x i8] c"Add another object's transformation to the total offset\00", align 1
@rna_ArrayModifier_start_cap = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ArrayModifier_end_cap, ptr @rna_ArrayModifier_offset_object, i32 -1, ptr @.str.408, i32 9437185, ptr @.str.409, ptr @.str.410, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArrayModifier_start_cap_get, ptr @ArrayModifier_start_cap_set, ptr null, ptr @rna_Mesh_object_poll, ptr @RNA_Object }, align 8
@.str.406 = private unnamed_addr constant [14 x i8] c"offset_object\00", align 1
@.str.407 = private unnamed_addr constant [118 x i8] c"Use the location and rotation of another object to determine the distance and rotational change between arrayed items\00", align 1
@rna_ArrayModifier_end_cap = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ArrayModifier_start_cap, i32 -1, ptr @.str.411, i32 9437185, ptr @.str.412, ptr @.str.413, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArrayModifier_end_cap_get, ptr @ArrayModifier_end_cap_set, ptr null, ptr @rna_Mesh_object_poll, ptr @RNA_Object }, align 8
@.str.408 = private unnamed_addr constant [10 x i8] c"start_cap\00", align 1
@.str.409 = private unnamed_addr constant [10 x i8] c"Start Cap\00", align 1
@.str.410 = private unnamed_addr constant [34 x i8] c"Mesh object to use as a start cap\00", align 1
@.str.411 = private unnamed_addr constant [8 x i8] c"end_cap\00", align 1
@.str.412 = private unnamed_addr constant [8 x i8] c"End Cap\00", align 1
@.str.413 = private unnamed_addr constant [33 x i8] c"Mesh object to use as an end cap\00", align 1
@RNA_EdgeSplitModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DisplaceModifier, ptr @RNA_ArrayModifier, ptr null, %struct.ListBase { ptr @rna_EdgeSplitModifier_split_angle, ptr @rna_EdgeSplitModifier_use_edge_sharp } }, ptr @.str.426, ptr null, ptr null, i32 4, ptr @.str.427, ptr @.str.428, ptr @.str.121, i32 453, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.414 = private unnamed_addr constant [14 x i8] c"ArrayModifier\00", align 1
@.str.415 = private unnamed_addr constant [15 x i8] c"Array Modifier\00", align 1
@.str.416 = private unnamed_addr constant [27 x i8] c"Array duplication modifier\00", align 1
@rna_EdgeSplitModifier_use_edge_angle = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EdgeSplitModifier_use_edge_sharp, ptr @rna_EdgeSplitModifier_split_angle, i32 -1, ptr @.str.420, i32 3, ptr @.str.421, ptr @.str.422, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EdgeSplitModifier_use_edge_angle_get, ptr @EdgeSplitModifier_use_edge_angle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.417 = private unnamed_addr constant [12 x i8] c"split_angle\00", align 1
@.str.418 = private unnamed_addr constant [12 x i8] c"Split Angle\00", align 1
@.str.419 = private unnamed_addr constant [33 x i8] c"Angle above which to split edges\00", align 1
@rna_EdgeSplitModifier_split_angle = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EdgeSplitModifier_use_edge_angle, ptr null, i32 -1, ptr @.str.417, i32 8195, ptr @.str.418, ptr @.str.419, i32 0, ptr @.str.121, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @EdgeSplitModifier_split_angle_get, ptr @EdgeSplitModifier_split_angle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x400921FB60000000, float 0.000000e+00, float 0x400921FB60000000, float 1.000000e+02, i32 2, float 0.000000e+00, ptr null }, align 8
@rna_EdgeSplitModifier_use_edge_sharp = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_EdgeSplitModifier_use_edge_angle, i32 -1, ptr @.str.423, i32 3, ptr @.str.424, ptr @.str.425, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EdgeSplitModifier_use_edge_sharp_get, ptr @EdgeSplitModifier_use_edge_sharp_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.420 = private unnamed_addr constant [15 x i8] c"use_edge_angle\00", align 1
@.str.421 = private unnamed_addr constant [15 x i8] c"Use Edge Angle\00", align 1
@.str.422 = private unnamed_addr constant [42 x i8] c"Split edges with high angle between faces\00", align 1
@.str.423 = private unnamed_addr constant [15 x i8] c"use_edge_sharp\00", align 1
@.str.424 = private unnamed_addr constant [16 x i8] c"Use Sharp Edges\00", align 1
@.str.425 = private unnamed_addr constant [37 x i8] c"Split edges that are marked as sharp\00", align 1
@RNA_DisplaceModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_UVProjectModifier, ptr @RNA_EdgeSplitModifier, ptr null, %struct.ListBase { ptr @rna_DisplaceModifier_vertex_group, ptr @rna_DisplaceModifier_texture_coords_object } }, ptr @.str.435, ptr null, ptr null, i32 4, ptr @.str.436, ptr @.str.437, ptr @.str.121, i32 456, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.426 = private unnamed_addr constant [18 x i8] c"EdgeSplitModifier\00", align 1
@.str.427 = private unnamed_addr constant [19 x i8] c"EdgeSplit Modifier\00", align 1
@.str.428 = private unnamed_addr constant [46 x i8] c"Edge splitting modifier to create sharp edges\00", align 1
@rna_DisplaceModifier_mid_level = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DisplaceModifier_strength, ptr @rna_DisplaceModifier_vertex_group, i32 -1, ptr @.str.429, i32 8195, ptr @.str.430, ptr @.str.431, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 272, i32 4, ptr null, ptr null }, ptr @DisplaceModifier_mid_level_get, ptr @DisplaceModifier_mid_level_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_DisplaceModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DisplaceModifier_mid_level, ptr null, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.173, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DisplaceModifier_vertex_group_get, ptr @DisplaceModifier_vertex_group_length, ptr @DisplaceModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_DisplaceModifier_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_DisplaceModifier_direction, ptr @rna_DisplaceModifier_mid_level, i32 -1, ptr @.str.174, i32 8195, ptr @.str.175, ptr @.str.432, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 200, i32 4, ptr null, ptr null }, ptr @DisplaceModifier_strength_get, ptr @DisplaceModifier_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.429 = private unnamed_addr constant [10 x i8] c"mid_level\00", align 1
@.str.430 = private unnamed_addr constant [9 x i8] c"Midlevel\00", align 1
@.str.431 = private unnamed_addr constant [42 x i8] c"Material value that gives no displacement\00", align 1
@rna_DisplaceModifier_direction = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DisplaceModifier_texture, ptr @rna_DisplaceModifier_strength, i32 -1, ptr @.str.433, i32 3, ptr @.str.434, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DisplaceModifier_direction_get, ptr @DisplaceModifier_direction_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DisplaceModifier_direction_items, i32 5, i32 0 }, align 8
@.str.432 = private unnamed_addr constant [28 x i8] c"Amount to displace geometry\00", align 1
@rna_DisplaceModifier_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DisplaceModifier_texture_coords, ptr @rna_DisplaceModifier_direction, i32 -1, ptr @.str.317, i32 8388673, ptr @.str.318, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DisplaceModifier_texture_get, ptr @DisplaceModifier_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@.str.433 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.434 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@rna_DisplaceModifier_direction_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.206, i32 0, ptr @.str.206, ptr @.str.1132 }, %struct.EnumPropertyItem { i32 1, ptr @.str.209, i32 0, ptr @.str.209, ptr @.str.1133 }, %struct.EnumPropertyItem { i32 2, ptr @.str.212, i32 0, ptr @.str.212, ptr @.str.1134 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1097, i32 0, ptr @.str.515, ptr @.str.1135 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1136, i32 0, ptr @.str.1137, ptr @.str.1138 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DisplaceModifier_texture_coords = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_DisplaceModifier_uv_layer, ptr @rna_DisplaceModifier_texture, i32 -1, ptr @.str.319, i32 3, ptr @.str.320, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DisplaceModifier_texture_coords_get, ptr @DisplaceModifier_texture_coords_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DisplaceModifier_texture_coords_items, i32 4, i32 0 }, align 8
@rna_DisplaceModifier_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_DisplaceModifier_texture_coords_object, ptr @rna_DisplaceModifier_texture_coords, i32 -1, ptr @.str.321, i32 262145, ptr @.str.322, ptr @.str.323, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DisplaceModifier_uv_layer_get, ptr @DisplaceModifier_uv_layer_length, ptr @DisplaceModifier_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_DisplaceModifier_texture_coords_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1104, i32 0, ptr @.str.1105, ptr @.str.1106 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1107, i32 0, ptr @.str.1108, ptr @.str.1109 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1110, i32 0, ptr @.str.169, ptr @.str.1111 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1112, i32 0, ptr @.str.1112, ptr @.str.1113 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_DisplaceModifier_texture_coords_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DisplaceModifier_uv_layer, i32 -1, ptr @.str.324, i32 9437185, ptr @.str.325, ptr @.str.326, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DisplaceModifier_texture_coords_object_get, ptr @DisplaceModifier_texture_coords_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@RNA_UVProjectModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_UVProjector, ptr @RNA_DisplaceModifier, ptr null, %struct.ListBase { ptr @rna_UVProjectModifier_uv_layer, ptr @rna_UVProjectModifier_use_image_override } }, ptr @.str.456, ptr null, ptr null, i32 4, ptr @.str.457, ptr @.str.458, ptr @.str.121, i32 455, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.435 = private unnamed_addr constant [17 x i8] c"DisplaceModifier\00", align 1
@.str.436 = private unnamed_addr constant [18 x i8] c"Displace Modifier\00", align 1
@.str.437 = private unnamed_addr constant [22 x i8] c"Displacement modifier\00", align 1
@rna_UVProjectModifier_projector_count = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_UVProjectModifier_projectors, ptr @rna_UVProjectModifier_uv_layer, i32 -1, ptr @.str.438, i32 3, ptr @.str.439, ptr @.str.440, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVProjectModifier_projector_count_get, ptr @UVProjectModifier_projector_count_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 10, i32 1, i32 10, i32 1, i32 0, ptr null }, align 8
@rna_UVProjectModifier_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_UVProjectModifier_projector_count, ptr null, i32 -1, ptr @.str.321, i32 262145, ptr @.str.322, ptr @.str.323, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVProjectModifier_uv_layer_get, ptr @UVProjectModifier_uv_layer_length, ptr @UVProjectModifier_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.438 = private unnamed_addr constant [16 x i8] c"projector_count\00", align 1
@.str.439 = private unnamed_addr constant [21 x i8] c"Number of Projectors\00", align 1
@.str.440 = private unnamed_addr constant [28 x i8] c"Number of projectors to use\00", align 1
@rna_UVProjectModifier_image = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_UVProjectModifier_aspect_x, ptr @rna_UVProjectModifier_projectors, i32 -1, ptr @.str.443, i32 8388673, ptr @.str.444, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVProjectModifier_image_get, ptr @UVProjectModifier_image_set, ptr null, ptr null, ptr @RNA_Image }, align 8
@.str.441 = private unnamed_addr constant [11 x i8] c"projectors\00", align 1
@.str.442 = private unnamed_addr constant [11 x i8] c"Projectors\00", align 1
@RNA_UVProjector = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SmoothModifier, ptr @RNA_UVProjectModifier, ptr null, %struct.ListBase { ptr @rna_UVProjector_rna_properties, ptr @rna_UVProjector_object } }, ptr @.str.460, ptr null, ptr null, i32 4, ptr @.str.460, ptr @.str.461, ptr @.str.121, i32 17, ptr null, ptr @rna_UVProjector_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_UVProjectModifier_aspect_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_UVProjectModifier_aspect_y, ptr @rna_UVProjectModifier_image, i32 -1, ptr @.str.445, i32 67117059, ptr @.str.446, ptr @.str, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 208, i32 4, ptr null, ptr null }, ptr @UVProjectModifier_aspect_x_get, ptr @UVProjectModifier_aspect_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 1.000000e+03, float 1.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.443 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.444 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@rna_UVProjectModifier_aspect_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_UVProjectModifier_scale_x, ptr @rna_UVProjectModifier_aspect_x, i32 -1, ptr @.str.447, i32 67117059, ptr @.str.448, ptr @.str, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 212, i32 4, ptr null, ptr null }, ptr @UVProjectModifier_aspect_y_get, ptr @UVProjectModifier_aspect_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 1.000000e+00, float 1.000000e+03, float 1.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.445 = private unnamed_addr constant [9 x i8] c"aspect_x\00", align 1
@.str.446 = private unnamed_addr constant [24 x i8] c"Horizontal Aspect Ratio\00", align 1
@rna_UVProjectModifier_scale_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_UVProjectModifier_scale_y, ptr @rna_UVProjectModifier_aspect_y, i32 -1, ptr @.str.449, i32 67117059, ptr @.str.450, ptr @.str, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 216, i32 4, ptr null, ptr null }, ptr @UVProjectModifier_scale_x_get, ptr @UVProjectModifier_scale_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.447 = private unnamed_addr constant [9 x i8] c"aspect_y\00", align 1
@.str.448 = private unnamed_addr constant [22 x i8] c"Vertical Aspect Ratio\00", align 1
@rna_UVProjectModifier_scale_y = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_UVProjectModifier_use_image_override, ptr @rna_UVProjectModifier_scale_x, i32 -1, ptr @.str.451, i32 67117059, ptr @.str.452, ptr @.str, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 220, i32 4, ptr null, ptr null }, ptr @UVProjectModifier_scale_y_get, ptr @UVProjectModifier_scale_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.449 = private unnamed_addr constant [8 x i8] c"scale_x\00", align 1
@.str.450 = private unnamed_addr constant [17 x i8] c"Horizontal Scale\00", align 1
@rna_UVProjectModifier_use_image_override = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_UVProjectModifier_scale_y, i32 -1, ptr @.str.453, i32 3, ptr @.str.454, ptr @.str.455, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVProjectModifier_use_image_override_get, ptr @UVProjectModifier_use_image_override_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.451 = private unnamed_addr constant [8 x i8] c"scale_y\00", align 1
@.str.452 = private unnamed_addr constant [15 x i8] c"Vertical Scale\00", align 1
@.str.453 = private unnamed_addr constant [19 x i8] c"use_image_override\00", align 1
@.str.454 = private unnamed_addr constant [15 x i8] c"Override Image\00", align 1
@.str.455 = private unnamed_addr constant [52 x i8] c"Override faces' current images with the given image\00", align 1
@.str.456 = private unnamed_addr constant [18 x i8] c"UVProjectModifier\00", align 1
@.str.457 = private unnamed_addr constant [20 x i8] c"UV Project Modifier\00", align 1
@.str.458 = private unnamed_addr constant [51 x i8] c"UV projection modifier to set UVs from a projector\00", align 1
@rna_UVProjector_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_UVProjector_object, ptr @rna_UVProjector_rna_properties, i32 -1, ptr @.str.122, i32 8912896, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVProjector_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_UVProjector_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_UVProjector_rna_type, i32 -1, ptr @.str.168, i32 9437185, ptr @.str.169, ptr @.str.459, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVProjector_object_get, ptr @UVProjector_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.459 = private unnamed_addr constant [37 x i8] c"Object to use as projector transform\00", align 1
@RNA_SmoothModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CastModifier, ptr @RNA_UVProjector, ptr null, %struct.ListBase { ptr @rna_SmoothModifier_use_x, ptr @rna_SmoothModifier_vertex_group } }, ptr @.str.468, ptr null, ptr null, i32 4, ptr @.str.469, ptr @.str.470, ptr @.str.121, i32 465, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.460 = private unnamed_addr constant [12 x i8] c"UVProjector\00", align 1
@.str.461 = private unnamed_addr constant [45 x i8] c"UV projector used by the UV project modifier\00", align 1
@rna_SmoothModifier_use_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmoothModifier_use_z, ptr @rna_SmoothModifier_use_x, i32 -1, ptr @.str.208, i32 3, ptr @.str.209, ptr @.str.463, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmoothModifier_use_y_get, ptr @SmoothModifier_use_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.462 = private unnamed_addr constant [27 x i8] c"Smooth object along X axis\00", align 1
@rna_SmoothModifier_use_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmoothModifier_use_y, ptr null, i32 -1, ptr @.str.205, i32 3, ptr @.str.206, ptr @.str.462, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmoothModifier_use_x_get, ptr @SmoothModifier_use_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SmoothModifier_use_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SmoothModifier_factor, ptr @rna_SmoothModifier_use_y, i32 -1, ptr @.str.211, i32 3, ptr @.str.212, ptr @.str.464, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmoothModifier_use_z_get, ptr @SmoothModifier_use_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.463 = private unnamed_addr constant [27 x i8] c"Smooth object along Y axis\00", align 1
@rna_SmoothModifier_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SmoothModifier_iterations, ptr @rna_SmoothModifier_use_z, i32 -1, ptr @.str.465, i32 8195, ptr @.str.466, ptr @.str.176, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @SmoothModifier_factor_get, ptr @SmoothModifier_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+01, float 1.000000e+01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.464 = private unnamed_addr constant [27 x i8] c"Smooth object along Z axis\00", align 1
@rna_SmoothModifier_iterations = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SmoothModifier_vertex_group, ptr @rna_SmoothModifier_factor, i32 -1, ptr @.str.242, i32 8195, ptr @.str.467, ptr @.str, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 182, i32 1, ptr null, ptr null }, ptr @SmoothModifier_iterations_get, ptr @SmoothModifier_iterations_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 30, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.465 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.466 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@rna_SmoothModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SmoothModifier_iterations, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.173, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmoothModifier_vertex_group_get, ptr @SmoothModifier_vertex_group_length, ptr @SmoothModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.467 = private unnamed_addr constant [7 x i8] c"Repeat\00", align 1
@RNA_CastModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MeshDeformModifier, ptr @RNA_SmoothModifier, ptr null, %struct.ListBase { ptr @rna_CastModifier_cast_type, ptr @rna_CastModifier_vertex_group } }, ptr @.str.488, ptr null, ptr null, i32 4, ptr @.str.489, ptr @.str.490, ptr @.str.121, i32 462, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.468 = private unnamed_addr constant [15 x i8] c"SmoothModifier\00", align 1
@.str.469 = private unnamed_addr constant [16 x i8] c"Smooth Modifier\00", align 1
@.str.470 = private unnamed_addr constant [26 x i8] c"Smoothing effect modifier\00", align 1
@rna_CastModifier_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_CastModifier_use_x, ptr @rna_CastModifier_cast_type, i32 -1, ptr @.str.168, i32 9437185, ptr @.str.169, ptr @.str.474, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CastModifier_object_get, ptr @CastModifier_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.471 = private unnamed_addr constant [10 x i8] c"cast_type\00", align 1
@.str.472 = private unnamed_addr constant [10 x i8] c"Cast Type\00", align 1
@.str.473 = private unnamed_addr constant [20 x i8] c"Target object shape\00", align 1
@rna_CastModifier_cast_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1139, i32 0, ptr @.str.1140, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.1141, i32 0, ptr @.str.1142, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1143, i32 0, ptr @.str.1144, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_CastModifier_cast_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_CastModifier_object, ptr null, i32 -1, ptr @.str.471, i32 3, ptr @.str.472, ptr @.str.473, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CastModifier_cast_type_get, ptr @CastModifier_cast_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_CastModifier_cast_type_items, i32 3, i32 0 }, align 8
@rna_CastModifier_use_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CastModifier_use_y, ptr @rna_CastModifier_object, i32 -1, ptr @.str.205, i32 3, ptr @.str.206, ptr @.str, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CastModifier_use_x_get, ptr @CastModifier_use_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.474 = private unnamed_addr constant [79 x i8] c"Control object: if available, its location determines the center of the effect\00", align 1
@rna_CastModifier_use_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CastModifier_use_z, ptr @rna_CastModifier_use_x, i32 -1, ptr @.str.208, i32 3, ptr @.str.209, ptr @.str, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CastModifier_use_y_get, ptr @CastModifier_use_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_CastModifier_use_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CastModifier_use_radius_as_size, ptr @rna_CastModifier_use_y, i32 -1, ptr @.str.211, i32 3, ptr @.str.212, ptr @.str, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CastModifier_use_z_get, ptr @CastModifier_use_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_CastModifier_use_radius_as_size = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CastModifier_use_transform, ptr @rna_CastModifier_use_z, i32 -1, ptr @.str.475, i32 3, ptr @.str.476, ptr @.str.477, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CastModifier_use_radius_as_size_get, ptr @CastModifier_use_radius_as_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_CastModifier_use_transform = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_CastModifier_factor, ptr @rna_CastModifier_use_radius_as_size, i32 -1, ptr @.str.478, i32 3, ptr @.str.479, ptr @.str.480, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CastModifier_use_transform_get, ptr @CastModifier_use_transform_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.475 = private unnamed_addr constant [19 x i8] c"use_radius_as_size\00", align 1
@.str.476 = private unnamed_addr constant [12 x i8] c"From Radius\00", align 1
@.str.477 = private unnamed_addr constant [50 x i8] c"Use radius as size of projection shape (0 = auto)\00", align 1
@rna_CastModifier_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CastModifier_radius, ptr @rna_CastModifier_use_transform, i32 -1, ptr @.str.465, i32 8195, ptr @.str.466, ptr @.str, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 120, i32 4, ptr null, ptr null }, ptr @CastModifier_factor_get, ptr @CastModifier_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+01, float 1.000000e+01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 5.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.478 = private unnamed_addr constant [14 x i8] c"use_transform\00", align 1
@.str.479 = private unnamed_addr constant [14 x i8] c"Use transform\00", align 1
@.str.480 = private unnamed_addr constant [49 x i8] c"Use object transform to control projection shape\00", align 1
@rna_CastModifier_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CastModifier_size, ptr @rna_CastModifier_factor, i32 -1, ptr @.str.481, i32 8195, ptr @.str.482, ptr @.str.483, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 124, i32 4, ptr null, ptr null }, ptr @CastModifier_radius_get, ptr @CastModifier_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 5.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@rna_CastModifier_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_CastModifier_vertex_group, ptr @rna_CastModifier_radius, i32 -1, ptr @.str.484, i32 8195, ptr @.str.485, ptr @.str.486, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 128, i32 4, ptr null, ptr null }, ptr @CastModifier_size_get, ptr @CastModifier_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 5.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.481 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.482 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.483 = private unnamed_addr constant [99 x i8] c"Only deform vertices within this distance from the center of the effect (leave as 0 for infinite.)\00", align 1
@rna_CastModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_CastModifier_size, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.487, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CastModifier_vertex_group_get, ptr @CastModifier_vertex_group_length, ptr @CastModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.484 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.485 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.486 = private unnamed_addr constant [47 x i8] c"Size of projection shape (leave as 0 for auto)\00", align 1
@.str.487 = private unnamed_addr constant [18 x i8] c"Vertex group name\00", align 1
@RNA_MeshDeformModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ParticleSystemModifier, ptr @RNA_CastModifier, ptr null, %struct.ListBase { ptr @rna_MeshDeformModifier_object, ptr @rna_MeshDeformModifier_use_dynamic_bind } }, ptr @.str.501, ptr null, ptr null, i32 4, ptr @.str.502, ptr @.str.503, ptr @.str.121, i32 463, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.488 = private unnamed_addr constant [13 x i8] c"CastModifier\00", align 1
@.str.489 = private unnamed_addr constant [14 x i8] c"Cast Modifier\00", align 1
@.str.490 = private unnamed_addr constant [33 x i8] c"Modifier to cast to other shapes\00", align 1
@rna_MeshDeformModifier_is_bound = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshDeformModifier_invert_vertex_group, ptr @rna_MeshDeformModifier_object, i32 -1, ptr @.str.492, i32 2, ptr @.str.493, ptr @.str.494, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshDeformModifier_is_bound_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.491 = private unnamed_addr constant [27 x i8] c"Mesh object to deform with\00", align 1
@rna_MeshDeformModifier_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshDeformModifier_is_bound, ptr null, i32 -1, ptr @.str.168, i32 9437185, ptr @.str.169, ptr @.str.491, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshDeformModifier_object_get, ptr @MeshDeformModifier_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_MeshDeformModifier_invert_vertex_group = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshDeformModifier_vertex_group, ptr @rna_MeshDeformModifier_is_bound, i32 -1, ptr @.str.249, i32 3, ptr @.str.250, ptr @.str.343, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshDeformModifier_invert_vertex_group_get, ptr @MeshDeformModifier_invert_vertex_group_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.492 = private unnamed_addr constant [9 x i8] c"is_bound\00", align 1
@.str.493 = private unnamed_addr constant [6 x i8] c"Bound\00", align 1
@.str.494 = private unnamed_addr constant [48 x i8] c"Whether geometry has been bound to control cage\00", align 1
@rna_MeshDeformModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshDeformModifier_precision, ptr @rna_MeshDeformModifier_invert_vertex_group, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.487, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshDeformModifier_vertex_group_get, ptr @MeshDeformModifier_vertex_group_length, ptr @MeshDeformModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_MeshDeformModifier_precision = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshDeformModifier_use_dynamic_bind, ptr @rna_MeshDeformModifier_vertex_group, i32 -1, ptr @.str.495, i32 8195, ptr @.str.496, ptr @.str.497, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 184, i32 1, ptr null, ptr null }, ptr @MeshDeformModifier_precision_get, ptr @MeshDeformModifier_precision_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2, i32 10, i32 2, i32 10, i32 1, i32 0, ptr null }, align 8
@rna_MeshDeformModifier_use_dynamic_bind = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MeshDeformModifier_precision, i32 -1, ptr @.str.498, i32 3, ptr @.str.499, ptr @.str.500, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshDeformModifier_use_dynamic_bind_get, ptr @MeshDeformModifier_use_dynamic_bind_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.495 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.496 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.497 = private unnamed_addr constant [26 x i8] c"The grid size for binding\00", align 1
@.str.498 = private unnamed_addr constant [17 x i8] c"use_dynamic_bind\00", align 1
@.str.499 = private unnamed_addr constant [8 x i8] c"Dynamic\00", align 1
@.str.500 = private unnamed_addr constant [91 x i8] c"Recompute binding dynamically on top of other deformers (slower and more memory consuming)\00", align 1
@RNA_ParticleSystemModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ParticleInstanceModifier, ptr @RNA_MeshDeformModifier, ptr null, %struct.ListBase { ptr @rna_ParticleSystemModifier_particle_system, ptr @rna_ParticleSystemModifier_particle_system } }, ptr @.str.506, ptr null, ptr null, i32 4, ptr @.str.507, ptr @.str.508, ptr @.str.121, i32 451, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.501 = private unnamed_addr constant [19 x i8] c"MeshDeformModifier\00", align 1
@.str.502 = private unnamed_addr constant [20 x i8] c"MeshDeform Modifier\00", align 1
@.str.503 = private unnamed_addr constant [54 x i8] c"Mesh deformation modifier to deform with other meshes\00", align 1
@.str.504 = private unnamed_addr constant [16 x i8] c"particle_system\00", align 1
@.str.505 = private unnamed_addr constant [44 x i8] c"Particle System that this modifier controls\00", align 1
@rna_ParticleSystemModifier_particle_system = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.504, i32 8650752, ptr @.str.93, ptr @.str.505, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleSystemModifier_particle_system_get, ptr null, ptr null, ptr null, ptr @RNA_ParticleSystem }, align 8
@RNA_ParticleInstanceModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ExplodeModifier, ptr @RNA_ParticleSystemModifier, ptr null, %struct.ListBase { ptr @rna_ParticleInstanceModifier_object, ptr @rna_ParticleInstanceModifier_random_position } }, ptr @.str.543, ptr null, ptr null, i32 4, ptr @.str.544, ptr @.str.545, ptr @.str.121, i32 451, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.506 = private unnamed_addr constant [23 x i8] c"ParticleSystemModifier\00", align 1
@.str.507 = private unnamed_addr constant [24 x i8] c"ParticleSystem Modifier\00", align 1
@.str.508 = private unnamed_addr constant [36 x i8] c"Particle system simulation modifier\00", align 1
@rna_ParticleInstanceModifier_particle_system_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_axis, ptr @rna_ParticleInstanceModifier_object, i32 -1, ptr @.str.510, i32 8195, ptr @.str.511, ptr @.str, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 120, i32 1, ptr null, ptr null }, ptr @ParticleInstanceModifier_particle_system_index_get, ptr @ParticleInstanceModifier_particle_system_index_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 10, i32 1, i32 10, i32 1, i32 0, ptr null }, align 8
@.str.509 = private unnamed_addr constant [36 x i8] c"Object that has the particle system\00", align 1
@rna_ParticleInstanceModifier_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_particle_system_index, ptr null, i32 -1, ptr @.str.168, i32 9437185, ptr @.str.169, ptr @.str.509, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleInstanceModifier_object_get, ptr @ParticleInstanceModifier_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_ParticleInstanceModifier_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_use_normal, ptr @rna_ParticleInstanceModifier_particle_system_index, i32 -1, ptr @.str.512, i32 3, ptr @.str.513, ptr @.str.514, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleInstanceModifier_axis_get, ptr @ParticleInstanceModifier_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ParticleInstanceModifier_axis_items, i32 3, i32 0 }, align 8
@.str.510 = private unnamed_addr constant [22 x i8] c"particle_system_index\00", align 1
@.str.511 = private unnamed_addr constant [23 x i8] c"Particle System Number\00", align 1
@rna_ParticleInstanceModifier_use_normal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_use_children, ptr @rna_ParticleInstanceModifier_axis, i32 -1, ptr @.str.271, i32 3, ptr @.str.515, ptr @.str.516, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleInstanceModifier_use_normal_get, ptr @ParticleInstanceModifier_use_normal_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.512 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.513 = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@.str.514 = private unnamed_addr constant [23 x i8] c"Pole axis for rotation\00", align 1
@rna_ParticleInstanceModifier_axis_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.206, i32 0, ptr @.str.206, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.209, i32 0, ptr @.str.209, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.212, i32 0, ptr @.str.212, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ParticleInstanceModifier_use_children = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_use_path, ptr @rna_ParticleInstanceModifier_use_normal, i32 -1, ptr @.str.517, i32 3, ptr @.str.518, ptr @.str.519, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleInstanceModifier_use_children_get, ptr @ParticleInstanceModifier_use_children_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.515 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.516 = private unnamed_addr constant [39 x i8] c"Create instances from normal particles\00", align 1
@rna_ParticleInstanceModifier_use_path = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_show_unborn, ptr @rna_ParticleInstanceModifier_use_children, i32 -1, ptr @.str.520, i32 3, ptr @.str.521, ptr @.str.522, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleInstanceModifier_use_path_get, ptr @ParticleInstanceModifier_use_path_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.517 = private unnamed_addr constant [13 x i8] c"use_children\00", align 1
@.str.518 = private unnamed_addr constant [9 x i8] c"Children\00", align 1
@.str.519 = private unnamed_addr constant [38 x i8] c"Create instances from child particles\00", align 1
@rna_ParticleInstanceModifier_show_unborn = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_show_alive, ptr @rna_ParticleInstanceModifier_use_path, i32 -1, ptr @.str.523, i32 3, ptr @.str.524, ptr @.str.525, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleInstanceModifier_show_unborn_get, ptr @ParticleInstanceModifier_show_unborn_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.520 = private unnamed_addr constant [9 x i8] c"use_path\00", align 1
@.str.521 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.522 = private unnamed_addr constant [38 x i8] c"Create instances along particle paths\00", align 1
@rna_ParticleInstanceModifier_show_alive = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_show_dead, ptr @rna_ParticleInstanceModifier_show_unborn, i32 -1, ptr @.str.526, i32 3, ptr @.str.527, ptr @.str.528, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleInstanceModifier_show_alive_get, ptr @ParticleInstanceModifier_show_alive_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.523 = private unnamed_addr constant [12 x i8] c"show_unborn\00", align 1
@.str.524 = private unnamed_addr constant [7 x i8] c"Unborn\00", align 1
@.str.525 = private unnamed_addr constant [41 x i8] c"Show instances when particles are unborn\00", align 1
@rna_ParticleInstanceModifier_show_dead = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_use_preserve_shape, ptr @rna_ParticleInstanceModifier_show_alive, i32 -1, ptr @.str.529, i32 3, ptr @.str.530, ptr @.str.531, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleInstanceModifier_show_dead_get, ptr @ParticleInstanceModifier_show_dead_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.526 = private unnamed_addr constant [11 x i8] c"show_alive\00", align 1
@.str.527 = private unnamed_addr constant [6 x i8] c"Alive\00", align 1
@.str.528 = private unnamed_addr constant [40 x i8] c"Show instances when particles are alive\00", align 1
@rna_ParticleInstanceModifier_use_preserve_shape = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_use_size, ptr @rna_ParticleInstanceModifier_show_dead, i32 -1, ptr @.str.532, i32 3, ptr @.str.533, ptr @.str.534, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleInstanceModifier_use_preserve_shape_get, ptr @ParticleInstanceModifier_use_preserve_shape_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.529 = private unnamed_addr constant [10 x i8] c"show_dead\00", align 1
@.str.530 = private unnamed_addr constant [5 x i8] c"Dead\00", align 1
@.str.531 = private unnamed_addr constant [39 x i8] c"Show instances when particles are dead\00", align 1
@rna_ParticleInstanceModifier_use_size = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_position, ptr @rna_ParticleInstanceModifier_use_preserve_shape, i32 -1, ptr @.str.535, i32 3, ptr @.str.485, ptr @.str.536, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ParticleInstanceModifier_use_size_get, ptr @ParticleInstanceModifier_use_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.532 = private unnamed_addr constant [19 x i8] c"use_preserve_shape\00", align 1
@.str.533 = private unnamed_addr constant [11 x i8] c"Keep Shape\00", align 1
@.str.534 = private unnamed_addr constant [25 x i8] c"Don't stretch the object\00", align 1
@rna_ParticleInstanceModifier_position = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ParticleInstanceModifier_random_position, ptr @rna_ParticleInstanceModifier_use_size, i32 -1, ptr @.str.537, i32 8195, ptr @.str.538, ptr @.str.539, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 128, i32 4, ptr null, ptr null }, ptr @ParticleInstanceModifier_position_get, ptr @ParticleInstanceModifier_position_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.535 = private unnamed_addr constant [9 x i8] c"use_size\00", align 1
@.str.536 = private unnamed_addr constant [41 x i8] c"Use particle size to scale the instances\00", align 1
@rna_ParticleInstanceModifier_random_position = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ParticleInstanceModifier_position, i32 -1, ptr @.str.540, i32 8195, ptr @.str.541, ptr @.str.542, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 132, i32 4, ptr null, ptr null }, ptr @ParticleInstanceModifier_random_position_get, ptr @ParticleInstanceModifier_random_position_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.537 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.538 = private unnamed_addr constant [9 x i8] c"Position\00", align 1
@.str.539 = private unnamed_addr constant [20 x i8] c"Position along path\00", align 1
@.str.540 = private unnamed_addr constant [16 x i8] c"random_position\00", align 1
@.str.541 = private unnamed_addr constant [16 x i8] c"Random Position\00", align 1
@.str.542 = private unnamed_addr constant [30 x i8] c"Randomize position along path\00", align 1
@RNA_ExplodeModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ClothModifier, ptr @RNA_ParticleInstanceModifier, ptr null, %struct.ListBase { ptr @rna_ExplodeModifier_vertex_group, ptr @rna_ExplodeModifier_particle_uv } }, ptr @.str.559, ptr null, ptr null, i32 4, ptr @.str.560, ptr @.str.561, ptr @.str.121, i32 469, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.543 = private unnamed_addr constant [25 x i8] c"ParticleInstanceModifier\00", align 1
@.str.544 = private unnamed_addr constant [26 x i8] c"ParticleInstance Modifier\00", align 1
@.str.545 = private unnamed_addr constant [36 x i8] c"Particle system instancing modifier\00", align 1
@rna_ExplodeModifier_protect = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ExplodeModifier_use_edge_cut, ptr @rna_ExplodeModifier_vertex_group, i32 -1, ptr @.str.546, i32 8195, ptr @.str.547, ptr @.str.548, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 124, i32 4, ptr null, ptr null }, ptr @ExplodeModifier_protect_get, ptr @ExplodeModifier_protect_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_ExplodeModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ExplodeModifier_protect, ptr null, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ExplodeModifier_vertex_group_get, ptr @ExplodeModifier_vertex_group_length, ptr @ExplodeModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 0, ptr @.str }, align 8
@rna_ExplodeModifier_use_edge_cut = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ExplodeModifier_show_unborn, ptr @rna_ExplodeModifier_protect, i32 -1, ptr @.str.549, i32 3, ptr @.str.550, ptr @.str.551, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ExplodeModifier_use_edge_cut_get, ptr @ExplodeModifier_use_edge_cut_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.546 = private unnamed_addr constant [8 x i8] c"protect\00", align 1
@.str.547 = private unnamed_addr constant [8 x i8] c"Protect\00", align 1
@.str.548 = private unnamed_addr constant [25 x i8] c"Clean vertex group edges\00", align 1
@rna_ExplodeModifier_show_unborn = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ExplodeModifier_show_alive, ptr @rna_ExplodeModifier_use_edge_cut, i32 -1, ptr @.str.523, i32 3, ptr @.str.524, ptr @.str.552, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ExplodeModifier_show_unborn_get, ptr @ExplodeModifier_show_unborn_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.549 = private unnamed_addr constant [13 x i8] c"use_edge_cut\00", align 1
@.str.550 = private unnamed_addr constant [10 x i8] c"Cut Edges\00", align 1
@.str.551 = private unnamed_addr constant [34 x i8] c"Cut face edges for nicer shrapnel\00", align 1
@rna_ExplodeModifier_show_alive = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ExplodeModifier_show_dead, ptr @rna_ExplodeModifier_show_unborn, i32 -1, ptr @.str.526, i32 3, ptr @.str.527, ptr @.str.553, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ExplodeModifier_show_alive_get, ptr @ExplodeModifier_show_alive_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.552 = private unnamed_addr constant [36 x i8] c"Show mesh when particles are unborn\00", align 1
@rna_ExplodeModifier_show_dead = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ExplodeModifier_use_size, ptr @rna_ExplodeModifier_show_alive, i32 -1, ptr @.str.529, i32 3, ptr @.str.530, ptr @.str.554, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ExplodeModifier_show_dead_get, ptr @ExplodeModifier_show_dead_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.553 = private unnamed_addr constant [35 x i8] c"Show mesh when particles are alive\00", align 1
@rna_ExplodeModifier_use_size = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ExplodeModifier_particle_uv, ptr @rna_ExplodeModifier_show_dead, i32 -1, ptr @.str.535, i32 3, ptr @.str.485, ptr @.str.555, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ExplodeModifier_use_size_get, ptr @ExplodeModifier_use_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.554 = private unnamed_addr constant [34 x i8] c"Show mesh when particles are dead\00", align 1
@rna_ExplodeModifier_particle_uv = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ExplodeModifier_use_size, i32 -1, ptr @.str.556, i32 262145, ptr @.str.557, ptr @.str.558, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ExplodeModifier_particle_uv_get, ptr @ExplodeModifier_particle_uv_length, ptr @ExplodeModifier_particle_uv_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.555 = private unnamed_addr constant [35 x i8] c"Use particle size for the shrapnel\00", align 1
@.str.556 = private unnamed_addr constant [12 x i8] c"particle_uv\00", align 1
@.str.557 = private unnamed_addr constant [12 x i8] c"Particle UV\00", align 1
@.str.558 = private unnamed_addr constant [35 x i8] c"UV map to change with particle age\00", align 1
@RNA_ClothModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_CollisionModifier, ptr @RNA_ExplodeModifier, ptr null, %struct.ListBase { ptr @rna_ClothModifier_settings, ptr @rna_ClothModifier_point_cache } }, ptr @.str.566, ptr null, ptr null, i32 4, ptr @.str.567, ptr @.str.568, ptr @.str.121, i32 468, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.559 = private unnamed_addr constant [16 x i8] c"ExplodeModifier\00", align 1
@.str.560 = private unnamed_addr constant [17 x i8] c"Explode Modifier\00", align 1
@.str.561 = private unnamed_addr constant [53 x i8] c"Explosion effect modifier based on a particle system\00", align 1
@rna_ClothModifier_collision_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothModifier_point_cache, ptr @rna_ClothModifier_settings, i32 -1, ptr @.str.563, i32 8650752, ptr @.str.564, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothModifier_collision_settings_get, ptr null, ptr null, ptr null, ptr @RNA_ClothCollisionSettings }, align 8
@.str.562 = private unnamed_addr constant [15 x i8] c"Cloth Settings\00", align 1
@rna_ClothModifier_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ClothModifier_collision_settings, ptr null, i32 -1, ptr @.str.362, i32 8650752, ptr @.str.562, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothModifier_settings_get, ptr null, ptr null, ptr null, ptr @RNA_ClothSettings }, align 8
@rna_ClothModifier_point_cache = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ClothModifier_collision_settings, i32 -1, ptr @.str.364, i32 8650752, ptr @.str.565, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ClothModifier_point_cache_get, ptr null, ptr null, ptr null, ptr @RNA_PointCache }, align 8
@.str.563 = private unnamed_addr constant [19 x i8] c"collision_settings\00", align 1
@.str.564 = private unnamed_addr constant [25 x i8] c"Cloth Collision Settings\00", align 1
@.str.565 = private unnamed_addr constant [12 x i8] c"Point Cache\00", align 1
@RNA_CollisionModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BevelModifier, ptr @RNA_ClothModifier, ptr null, %struct.ListBase { ptr @rna_CollisionModifier_settings, ptr @rna_CollisionModifier_settings } }, ptr @.str.570, ptr null, ptr null, i32 4, ptr @.str.571, ptr @.str.572, ptr @.str.121, i32 450, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.566 = private unnamed_addr constant [14 x i8] c"ClothModifier\00", align 1
@.str.567 = private unnamed_addr constant [15 x i8] c"Cloth Modifier\00", align 1
@.str.568 = private unnamed_addr constant [26 x i8] c"Cloth simulation modifier\00", align 1
@.str.569 = private unnamed_addr constant [9 x i8] c"Settings\00", align 1
@RNA_CollisionSettings = external global %struct.StructRNA, align 8
@rna_CollisionModifier_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.362, i32 8650752, ptr @.str.569, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @CollisionModifier_settings_get, ptr null, ptr null, ptr null, ptr @RNA_CollisionSettings }, align 8
@RNA_BevelModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ShrinkwrapModifier, ptr @RNA_CollisionModifier, ptr null, %struct.ListBase { ptr @rna_BevelModifier_width, ptr @rna_BevelModifier_material } }, ptr @.str.599, ptr null, ptr null, i32 4, ptr @.str.600, ptr @.str.601, ptr @.str.121, i32 464, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.570 = private unnamed_addr constant [18 x i8] c"CollisionModifier\00", align 1
@.str.571 = private unnamed_addr constant [19 x i8] c"Collision Modifier\00", align 1
@.str.572 = private unnamed_addr constant [71 x i8] c"Collision modifier defining modifier stack position used for collision\00", align 1
@rna_BevelModifier_segments = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_BevelModifier_use_only_vertices, ptr @rna_BevelModifier_width, i32 -1, ptr @.str.574, i32 8195, ptr @.str.575, ptr @.str.576, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 116, i32 0, ptr null, ptr null }, ptr @BevelModifier_segments_get, ptr @BevelModifier_segments_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 100, i32 1, i32 100, i32 1, i32 0, ptr null }, align 8
@.str.573 = private unnamed_addr constant [19 x i8] c"Bevel value/amount\00", align 1
@rna_BevelModifier_width = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BevelModifier_segments, ptr null, i32 -1, ptr @.str.311, i32 8195, ptr @.str.312, ptr @.str.573, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @BevelModifier_width_get, ptr @BevelModifier_width_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 4, float 0.000000e+00, ptr null }, align 8
@rna_BevelModifier_use_only_vertices = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BevelModifier_limit_method, ptr @rna_BevelModifier_segments, i32 -1, ptr @.str.577, i32 3, ptr @.str.578, ptr @.str.579, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BevelModifier_use_only_vertices_get, ptr @BevelModifier_use_only_vertices_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.574 = private unnamed_addr constant [9 x i8] c"segments\00", align 1
@.str.575 = private unnamed_addr constant [9 x i8] c"Segments\00", align 1
@.str.576 = private unnamed_addr constant [41 x i8] c"Number of segments for round edges/verts\00", align 1
@rna_BevelModifier_limit_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BevelModifier_edge_weight_method, ptr @rna_BevelModifier_use_only_vertices, i32 -1, ptr @.str.580, i32 3, ptr @.str.581, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BevelModifier_limit_method_get, ptr @BevelModifier_limit_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BevelModifier_limit_method_items, i32 4, i32 0 }, align 8
@.str.577 = private unnamed_addr constant [18 x i8] c"use_only_vertices\00", align 1
@.str.578 = private unnamed_addr constant [14 x i8] c"Only Vertices\00", align 1
@.str.579 = private unnamed_addr constant [31 x i8] c"Bevel verts/corners, not edges\00", align 1
@rna_BevelModifier_edge_weight_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BevelModifier_angle_limit, ptr @rna_BevelModifier_limit_method, i32 -1, ptr @.str.582, i32 3, ptr @.str.583, ptr @.str.584, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BevelModifier_edge_weight_method_get, ptr @BevelModifier_edge_weight_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BevelModifier_edge_weight_method_items, i32 3, i32 0 }, align 8
@.str.580 = private unnamed_addr constant [13 x i8] c"limit_method\00", align 1
@.str.581 = private unnamed_addr constant [13 x i8] c"Limit Method\00", align 1
@rna_BevelModifier_limit_method_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1145, i32 0, ptr @.str.1146, ptr @.str.1147 }, %struct.EnumPropertyItem { i32 8, ptr @.str.1148, i32 0, ptr @.str.585, ptr @.str.1149 }, %struct.EnumPropertyItem { i32 16, ptr @.str.1150, i32 0, ptr @.str.1067, ptr @.str.1151 }, %struct.EnumPropertyItem { i32 32, ptr @.str.1152, i32 0, ptr @.str.172, ptr @.str.1153 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BevelModifier_angle_limit = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BevelModifier_vertex_group, ptr @rna_BevelModifier_edge_weight_method, i32 -1, ptr @.str.245, i32 8195, ptr @.str.585, ptr @.str.586, i32 0, ptr @.str.121, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 140, i32 4, ptr null, ptr null }, ptr @BevelModifier_angle_limit_get, ptr @BevelModifier_angle_limit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x400921FB60000000, float 0.000000e+00, float 0x400921FB60000000, float 1.000000e+02, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.582 = private unnamed_addr constant [19 x i8] c"edge_weight_method\00", align 1
@.str.583 = private unnamed_addr constant [19 x i8] c"Edge Weight Method\00", align 1
@.str.584 = private unnamed_addr constant [47 x i8] c"What edge weight to use for weighting a vertex\00", align 1
@rna_BevelModifier_edge_weight_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1154, i32 0, ptr @.str.1155, ptr @.str }, %struct.EnumPropertyItem { i32 128, ptr @.str.1156, i32 0, ptr @.str.1157, ptr @.str }, %struct.EnumPropertyItem { i32 256, ptr @.str.1158, i32 0, ptr @.str.1159, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BevelModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_BevelModifier_use_clamp_overlap, ptr @rna_BevelModifier_angle_limit, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.487, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BevelModifier_vertex_group_get, ptr @BevelModifier_vertex_group_length, ptr @BevelModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.585 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.586 = private unnamed_addr constant [33 x i8] c"Angle above which to bevel edges\00", align 1
@rna_BevelModifier_use_clamp_overlap = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_BevelModifier_offset_type, ptr @rna_BevelModifier_vertex_group, i32 -1, ptr @.str.587, i32 3, ptr @.str.588, ptr @.str.589, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BevelModifier_use_clamp_overlap_get, ptr @BevelModifier_use_clamp_overlap_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_BevelModifier_offset_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_BevelModifier_profile, ptr @rna_BevelModifier_use_clamp_overlap, i32 -1, ptr @.str.590, i32 3, ptr @.str.591, ptr @.str.592, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @BevelModifier_offset_type_get, ptr @BevelModifier_offset_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_BevelModifier_offset_type_items, i32 4, i32 0 }, align 8
@.str.587 = private unnamed_addr constant [18 x i8] c"use_clamp_overlap\00", align 1
@.str.588 = private unnamed_addr constant [14 x i8] c"Clamp Overlap\00", align 1
@.str.589 = private unnamed_addr constant [33 x i8] c"Clamp the width to avoid overlap\00", align 1
@rna_BevelModifier_profile = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_BevelModifier_material, ptr @rna_BevelModifier_offset_type, i32 -1, ptr @.str.593, i32 8195, ptr @.str.594, ptr @.str.595, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 136, i32 4, ptr null, ptr null }, ptr @BevelModifier_profile_get, ptr @BevelModifier_profile_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3FC3333340000000, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FA99999A0000000, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.590 = private unnamed_addr constant [12 x i8] c"offset_type\00", align 1
@.str.591 = private unnamed_addr constant [12 x i8] c"Amount Type\00", align 1
@.str.592 = private unnamed_addr constant [29 x i8] c"What distance Width measures\00", align 1
@rna_BevelModifier_offset_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1160, i32 0, ptr @.str.613, ptr @.str.1161 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1162, i32 0, ptr @.str.312, ptr @.str.1163 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1164, i32 0, ptr @.str.931, ptr @.str.1165 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1166, i32 0, ptr @.str.1167, ptr @.str.1168 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_BevelModifier_material = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_BevelModifier_profile, i32 -1, ptr @.str.596, i32 8195, ptr @.str.597, ptr @.str.598, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 128, i32 1, ptr null, ptr null }, ptr @BevelModifier_material_get, ptr @BevelModifier_material_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, i32 32767, i32 -1, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.593 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.594 = private unnamed_addr constant [8 x i8] c"Profile\00", align 1
@.str.595 = private unnamed_addr constant [32 x i8] c"The profile shape (0.5 = round)\00", align 1
@.str.596 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.597 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.598 = private unnamed_addr constant [52 x i8] c"Material index of generated faces, -1 for automatic\00", align 1
@RNA_ShrinkwrapModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_FluidSimulationModifier, ptr @RNA_BevelModifier, ptr null, %struct.ListBase { ptr @rna_ShrinkwrapModifier_wrap_method, ptr @rna_ShrinkwrapModifier_use_keep_above_surface } }, ptr @.str.632, ptr null, ptr null, i32 4, ptr @.str.633, ptr @.str.634, ptr @.str.121, i32 461, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.599 = private unnamed_addr constant [14 x i8] c"BevelModifier\00", align 1
@.str.600 = private unnamed_addr constant [15 x i8] c"Bevel Modifier\00", align 1
@.str.601 = private unnamed_addr constant [55 x i8] c"Bevel modifier to make edges and vertices more rounded\00", align 1
@rna_ShrinkwrapModifier_cull_face = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_target, ptr @rna_ShrinkwrapModifier_wrap_method, i32 -1, ptr @.str.603, i32 3, ptr @.str.604, ptr @.str.605, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapModifier_cull_face_get, ptr @ShrinkwrapModifier_cull_face_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ShrinkwrapModifier_cull_face_items, i32 3, i32 0 }, align 8
@.str.602 = private unnamed_addr constant [12 x i8] c"wrap_method\00", align 1
@rna_ShrinkwrapModifier_wrap_method_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1169, i32 0, ptr @.str.1170, ptr @.str.1171 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1172, i32 0, ptr @.str.1173, ptr @.str.1174 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1175, i32 0, ptr @.str.1176, ptr @.str.1177 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ShrinkwrapModifier_wrap_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_cull_face, ptr null, i32 -1, ptr @.str.602, i32 3, ptr @.str.238, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapModifier_wrap_method_get, ptr @ShrinkwrapModifier_wrap_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ShrinkwrapModifier_wrap_method_items, i32 3, i32 0 }, align 8
@rna_ShrinkwrapModifier_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_auxiliary_target, ptr @rna_ShrinkwrapModifier_cull_face, i32 -1, ptr @.str.606, i32 9437185, ptr @.str.607, ptr @.str.608, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapModifier_target_get, ptr @ShrinkwrapModifier_target_set, ptr null, ptr @rna_Mesh_object_poll, ptr @RNA_Object }, align 8
@.str.603 = private unnamed_addr constant [10 x i8] c"cull_face\00", align 1
@.str.604 = private unnamed_addr constant [10 x i8] c"Face Cull\00", align 1
@.str.605 = private unnamed_addr constant [79 x i8] c"Stop vertices from projecting to a face on the target when facing towards/away\00", align 1
@rna_ShrinkwrapModifier_cull_face_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1178, i32 0, ptr @.str.1179, ptr @.str.1180 }, %struct.EnumPropertyItem { i32 8, ptr @.str.1181, i32 0, ptr @.str.1182, ptr @.str.1183 }, %struct.EnumPropertyItem { i32 16, ptr @.str.1184, i32 0, ptr @.str.1185, ptr @.str.1186 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ShrinkwrapModifier_auxiliary_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_vertex_group, ptr @rna_ShrinkwrapModifier_target, i32 -1, ptr @.str.609, i32 9437185, ptr @.str.610, ptr @.str.611, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapModifier_auxiliary_target_get, ptr @ShrinkwrapModifier_auxiliary_target_set, ptr null, ptr @rna_Mesh_object_poll, ptr @RNA_Object }, align 8
@.str.606 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.607 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@.str.608 = private unnamed_addr constant [25 x i8] c"Mesh target to shrink to\00", align 1
@rna_ShrinkwrapModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_offset, ptr @rna_ShrinkwrapModifier_auxiliary_target, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.487, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapModifier_vertex_group_get, ptr @ShrinkwrapModifier_vertex_group_length, ptr @ShrinkwrapModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.609 = private unnamed_addr constant [17 x i8] c"auxiliary_target\00", align 1
@.str.610 = private unnamed_addr constant [17 x i8] c"Auxiliary Target\00", align 1
@.str.611 = private unnamed_addr constant [36 x i8] c"Additional mesh target to shrink to\00", align 1
@rna_ShrinkwrapModifier_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_project_limit, ptr @rna_ShrinkwrapModifier_vertex_group, i32 -1, ptr @.str.612, i32 8195, ptr @.str.613, ptr @.str.614, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 192, i32 4, ptr null, ptr null }, ptr @ShrinkwrapModifier_offset_get, ptr @ShrinkwrapModifier_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@rna_ShrinkwrapModifier_project_limit = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_use_project_x, ptr @rna_ShrinkwrapModifier_offset, i32 -1, ptr @.str.615, i32 8195, ptr @.str.616, ptr @.str.617, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 200, i32 4, ptr null, ptr null }, ptr @ShrinkwrapModifier_project_limit_get, ptr @ShrinkwrapModifier_project_limit_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.612 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.613 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.614 = private unnamed_addr constant [33 x i8] c"Distance to keep from the target\00", align 1
@rna_ShrinkwrapModifier_use_project_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_use_project_y, ptr @rna_ShrinkwrapModifier_project_limit, i32 -1, ptr @.str.618, i32 3, ptr @.str.206, ptr @.str, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapModifier_use_project_x_get, ptr @ShrinkwrapModifier_use_project_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.615 = private unnamed_addr constant [14 x i8] c"project_limit\00", align 1
@.str.616 = private unnamed_addr constant [14 x i8] c"Project Limit\00", align 1
@.str.617 = private unnamed_addr constant [55 x i8] c"Limit the distance used for projection (zero disables)\00", align 1
@rna_ShrinkwrapModifier_use_project_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_use_project_z, ptr @rna_ShrinkwrapModifier_use_project_x, i32 -1, ptr @.str.619, i32 3, ptr @.str.209, ptr @.str, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapModifier_use_project_y_get, ptr @ShrinkwrapModifier_use_project_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.618 = private unnamed_addr constant [14 x i8] c"use_project_x\00", align 1
@rna_ShrinkwrapModifier_use_project_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_subsurf_levels, ptr @rna_ShrinkwrapModifier_use_project_y, i32 -1, ptr @.str.620, i32 3, ptr @.str.212, ptr @.str, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapModifier_use_project_z_get, ptr @ShrinkwrapModifier_use_project_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.619 = private unnamed_addr constant [14 x i8] c"use_project_y\00", align 1
@rna_ShrinkwrapModifier_subsurf_levels = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_use_negative_direction, ptr @rna_ShrinkwrapModifier_use_project_z, i32 -1, ptr @.str.621, i32 8195, ptr @.str.622, ptr @.str.623, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 205, i32 2, ptr null, ptr null }, ptr @ShrinkwrapModifier_subsurf_levels_get, ptr @ShrinkwrapModifier_subsurf_levels_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 6, i32 0, i32 6, i32 1, i32 0, ptr null }, align 8
@.str.620 = private unnamed_addr constant [14 x i8] c"use_project_z\00", align 1
@rna_ShrinkwrapModifier_use_negative_direction = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_use_positive_direction, ptr @rna_ShrinkwrapModifier_subsurf_levels, i32 -1, ptr @.str.624, i32 3, ptr @.str.625, ptr @.str.626, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapModifier_use_negative_direction_get, ptr @ShrinkwrapModifier_use_negative_direction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.621 = private unnamed_addr constant [15 x i8] c"subsurf_levels\00", align 1
@.str.622 = private unnamed_addr constant [15 x i8] c"Subsurf Levels\00", align 1
@.str.623 = private unnamed_addr constant [96 x i8] c"Number of subdivisions that must be performed before extracting vertices' positions and normals\00", align 1
@rna_ShrinkwrapModifier_use_positive_direction = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ShrinkwrapModifier_use_keep_above_surface, ptr @rna_ShrinkwrapModifier_use_negative_direction, i32 -1, ptr @.str.627, i32 3, ptr @.str.628, ptr @.str.629, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapModifier_use_positive_direction_get, ptr @ShrinkwrapModifier_use_positive_direction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.624 = private unnamed_addr constant [23 x i8] c"use_negative_direction\00", align 1
@.str.625 = private unnamed_addr constant [9 x i8] c"Negative\00", align 1
@.str.626 = private unnamed_addr constant [57 x i8] c"Allow vertices to move in the negative direction of axis\00", align 1
@rna_ShrinkwrapModifier_use_keep_above_surface = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ShrinkwrapModifier_use_positive_direction, i32 -1, ptr @.str.630, i32 3, ptr @.str.631, ptr @.str, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ShrinkwrapModifier_use_keep_above_surface_get, ptr @ShrinkwrapModifier_use_keep_above_surface_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.627 = private unnamed_addr constant [23 x i8] c"use_positive_direction\00", align 1
@.str.628 = private unnamed_addr constant [9 x i8] c"Positive\00", align 1
@.str.629 = private unnamed_addr constant [57 x i8] c"Allow vertices to move in the positive direction of axis\00", align 1
@.str.630 = private unnamed_addr constant [23 x i8] c"use_keep_above_surface\00", align 1
@.str.631 = private unnamed_addr constant [19 x i8] c"Keep Above Surface\00", align 1
@RNA_FluidSimulationModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MaskModifier, ptr @RNA_ShrinkwrapModifier, ptr null, %struct.ListBase { ptr @rna_FluidSimulationModifier_settings, ptr @rna_FluidSimulationModifier_settings } }, ptr @.str.636, ptr null, ptr null, i32 4, ptr @.str.637, ptr @.str.638, ptr @.str.121, i32 470, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.632 = private unnamed_addr constant [19 x i8] c"ShrinkwrapModifier\00", align 1
@.str.633 = private unnamed_addr constant [20 x i8] c"Shrinkwrap Modifier\00", align 1
@.str.634 = private unnamed_addr constant [63 x i8] c"Shrink wrapping modifier to shrink wrap and object to a target\00", align 1
@.str.635 = private unnamed_addr constant [61 x i8] c"Settings for how this object is used in the fluid simulation\00", align 1
@rna_FluidSimulationModifier_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.362, i32 8650752, ptr @.str.569, ptr @.str.635, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @FluidSimulationModifier_settings_get, ptr null, ptr null, ptr null, ptr @RNA_FluidSettings }, align 8
@RNA_MaskModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SimpleDeformModifier, ptr @RNA_FluidSimulationModifier, ptr null, %struct.ListBase { ptr @rna_MaskModifier_mode, ptr @rna_MaskModifier_invert_vertex_group } }, ptr @.str.643, ptr null, ptr null, i32 4, ptr @.str.644, ptr @.str.645, ptr @.str.121, i32 467, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.636 = private unnamed_addr constant [24 x i8] c"FluidSimulationModifier\00", align 1
@.str.637 = private unnamed_addr constant [26 x i8] c"Fluid Simulation Modifier\00", align 1
@.str.638 = private unnamed_addr constant [26 x i8] c"Fluid simulation modifier\00", align 1
@rna_MaskModifier_armature = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskModifier_vertex_group, ptr @rna_MaskModifier_mode, i32 -1, ptr @.str.640, i32 9437185, ptr @.str.50, ptr @.str.641, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskModifier_armature_get, ptr @MaskModifier_armature_set, ptr null, ptr @rna_Armature_object_poll, ptr @RNA_Object }, align 8
@.str.639 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@rna_MaskModifier_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1187, i32 0, ptr @.str.172, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.49, i32 0, ptr @.str.50, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MaskModifier_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskModifier_armature, ptr null, i32 -1, ptr @.str.639, i32 3, ptr @.str.238, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskModifier_mode_get, ptr @MaskModifier_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MaskModifier_mode_items, i32 2, i32 0 }, align 8
@rna_MaskModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MaskModifier_invert_vertex_group, ptr @rna_MaskModifier_armature, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.487, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskModifier_vertex_group_get, ptr @MaskModifier_vertex_group_length, ptr @MaskModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.640 = private unnamed_addr constant [9 x i8] c"armature\00", align 1
@.str.641 = private unnamed_addr constant [43 x i8] c"Armature to use as source of bones to mask\00", align 1
@rna_MaskModifier_invert_vertex_group = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MaskModifier_vertex_group, i32 -1, ptr @.str.249, i32 3, ptr @.str.250, ptr @.str.642, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MaskModifier_invert_vertex_group_get, ptr @MaskModifier_invert_vertex_group_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.642 = private unnamed_addr constant [49 x i8] c"Use vertices that are not part of region defined\00", align 1
@RNA_SimpleDeformModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_WarpModifier, ptr @RNA_MaskModifier, ptr null, %struct.ListBase { ptr @rna_SimpleDeformModifier_deform_method, ptr @rna_SimpleDeformModifier_lock_y } }, ptr @.str.662, ptr null, ptr null, i32 4, ptr @.str.663, ptr @.str.664, ptr @.str.121, i32 466, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.643 = private unnamed_addr constant [13 x i8] c"MaskModifier\00", align 1
@.str.644 = private unnamed_addr constant [14 x i8] c"Mask Modifier\00", align 1
@.str.645 = private unnamed_addr constant [40 x i8] c"Mask modifier to hide parts of the mesh\00", align 1
@rna_SimpleDeformModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SimpleDeformModifier_origin, ptr @rna_SimpleDeformModifier_deform_method, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.487, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SimpleDeformModifier_vertex_group_get, ptr @SimpleDeformModifier_vertex_group_length, ptr @SimpleDeformModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.646 = private unnamed_addr constant [14 x i8] c"deform_method\00", align 1
@rna_SimpleDeformModifier_deform_method_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1188, i32 0, ptr @.str.1189, ptr @.str.1190 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1191, i32 0, ptr @.str.1192, ptr @.str.1193 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1194, i32 0, ptr @.str.1195, ptr @.str.1196 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1197, i32 0, ptr @.str.1198, ptr @.str.1199 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_SimpleDeformModifier_deform_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_SimpleDeformModifier_vertex_group, ptr null, i32 -1, ptr @.str.646, i32 3, ptr @.str.238, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SimpleDeformModifier_deform_method_get, ptr @SimpleDeformModifier_deform_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SimpleDeformModifier_deform_method_items, i32 4, i32 1 }, align 8
@rna_SimpleDeformModifier_origin = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SimpleDeformModifier_factor, ptr @rna_SimpleDeformModifier_vertex_group, i32 -1, ptr @.str.647, i32 9437185, ptr @.str.648, ptr @.str.649, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SimpleDeformModifier_origin_get, ptr @SimpleDeformModifier_origin_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_SimpleDeformModifier_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SimpleDeformModifier_angle, ptr @rna_SimpleDeformModifier_origin, i32 -1, ptr @.str.465, i32 8195, ptr @.str.466, ptr @.str.650, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 184, i32 4, ptr null, ptr null }, ptr @SimpleDeformModifier_factor_get, ptr @SimpleDeformModifier_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+01, float 1.000000e+01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.647 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.648 = private unnamed_addr constant [7 x i8] c"Origin\00", align 1
@.str.649 = private unnamed_addr constant [37 x i8] c"Origin of modifier space coordinates\00", align 1
@rna_SimpleDeformModifier_angle = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SimpleDeformModifier_limits, ptr @rna_SimpleDeformModifier_factor, i32 -1, ptr @.str.651, i32 8195, ptr @.str.585, ptr @.str.652, i32 0, ptr @.str.121, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 184, i32 4, ptr null, ptr null }, ptr @SimpleDeformModifier_angle_get, ptr @SimpleDeformModifier_angle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC00921FB60000000, float 0x400921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3F91DF46A0000000, i32 3, float 0x3FE921FB60000000, ptr null }, align 8
@.str.650 = private unnamed_addr constant [24 x i8] c"Amount to deform object\00", align 1
@rna_SimpleDeformModifier_limits = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SimpleDeformModifier_lock_x, ptr @rna_SimpleDeformModifier_angle, i32 -1, ptr @.str.653, i32 8195, ptr @.str.654, ptr @.str.655, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 188, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @SimpleDeformModifier_limits_get, ptr @SimpleDeformModifier_limits_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 5.000000e+00, i32 2, float 0.000000e+00, ptr @rna_SimpleDeformModifier_limits_default }, align 8
@.str.651 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.652 = private unnamed_addr constant [21 x i8] c"Angle of deformation\00", align 1
@rna_SimpleDeformModifier_lock_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SimpleDeformModifier_lock_y, ptr @rna_SimpleDeformModifier_limits, i32 -1, ptr @.str.656, i32 3, ptr @.str.657, ptr @.str.658, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SimpleDeformModifier_lock_x_get, ptr @SimpleDeformModifier_lock_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.653 = private unnamed_addr constant [7 x i8] c"limits\00", align 1
@.str.654 = private unnamed_addr constant [7 x i8] c"Limits\00", align 1
@.str.655 = private unnamed_addr constant [30 x i8] c"Lower/Upper limits for deform\00", align 1
@rna_SimpleDeformModifier_limits_default = internal global [2 x float] zeroinitializer, align 4
@rna_SimpleDeformModifier_lock_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SimpleDeformModifier_lock_x, i32 -1, ptr @.str.659, i32 3, ptr @.str.660, ptr @.str.661, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SimpleDeformModifier_lock_y_get, ptr @SimpleDeformModifier_lock_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.656 = private unnamed_addr constant [7 x i8] c"lock_x\00", align 1
@.str.657 = private unnamed_addr constant [12 x i8] c"Lock X Axis\00", align 1
@.str.658 = private unnamed_addr constant [42 x i8] c"Do not allow deformation along the X axis\00", align 1
@.str.659 = private unnamed_addr constant [7 x i8] c"lock_y\00", align 1
@.str.660 = private unnamed_addr constant [12 x i8] c"Lock Y Axis\00", align 1
@.str.661 = private unnamed_addr constant [42 x i8] c"Do not allow deformation along the Y axis\00", align 1
@RNA_WarpModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MultiresModifier, ptr @RNA_SimpleDeformModifier, ptr null, %struct.ListBase { ptr @rna_WarpModifier_object_from, ptr @rna_WarpModifier_texture_coords_object } }, ptr @.str.680, ptr null, ptr null, i32 4, ptr @.str.681, ptr @.str.682, ptr @.str.121, i32 479, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.662 = private unnamed_addr constant [21 x i8] c"SimpleDeformModifier\00", align 1
@.str.663 = private unnamed_addr constant [22 x i8] c"SimpleDeform Modifier\00", align 1
@.str.664 = private unnamed_addr constant [74 x i8] c"Simple deformation modifier to apply effects such as twisting and bending\00", align 1
@rna_WarpModifier_object_to = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WarpModifier_strength, ptr @rna_WarpModifier_object_from, i32 -1, ptr @.str.668, i32 9437185, ptr @.str.669, ptr @.str.670, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WarpModifier_object_to_get, ptr @WarpModifier_object_to_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.665 = private unnamed_addr constant [12 x i8] c"object_from\00", align 1
@.str.666 = private unnamed_addr constant [5 x i8] c"From\00", align 1
@.str.667 = private unnamed_addr constant [25 x i8] c"Object to transform from\00", align 1
@rna_WarpModifier_object_from = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WarpModifier_object_to, ptr null, i32 -1, ptr @.str.665, i32 9437185, ptr @.str.666, ptr @.str.667, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WarpModifier_object_from_get, ptr @WarpModifier_object_from_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_WarpModifier_strength = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WarpModifier_falloff_type, ptr @rna_WarpModifier_object_to, i32 -1, ptr @.str.174, i32 8195, ptr @.str.175, ptr @.str, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 288, i32 4, ptr null, ptr null }, ptr @WarpModifier_strength_get, ptr @WarpModifier_strength_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+02, float 1.000000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.668 = private unnamed_addr constant [10 x i8] c"object_to\00", align 1
@.str.669 = private unnamed_addr constant [3 x i8] c"To\00", align 1
@.str.670 = private unnamed_addr constant [23 x i8] c"Object to transform to\00", align 1
@rna_WarpModifier_falloff_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_WarpModifier_falloff_radius, ptr @rna_WarpModifier_strength, i32 -1, ptr @.str.671, i32 3, ptr @.str.672, ptr @.str, i32 0, ptr @.str.54, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WarpModifier_falloff_type_get, ptr @WarpModifier_falloff_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_WarpModifier_falloff_type_items, i32 8, i32 0 }, align 8
@rna_WarpModifier_falloff_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WarpModifier_falloff_curve, ptr @rna_WarpModifier_falloff_type, i32 -1, ptr @.str.292, i32 8195, ptr @.str.482, ptr @.str.673, i32 0, ptr @.str.121, i32 2, i32 65567, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 292, i32 4, ptr null, ptr null }, ptr @WarpModifier_falloff_radius_get, ptr @WarpModifier_falloff_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.671 = private unnamed_addr constant [13 x i8] c"falloff_type\00", align 1
@.str.672 = private unnamed_addr constant [13 x i8] c"Falloff Type\00", align 1
@rna_WarpModifier_falloff_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1145, i32 0, ptr @.str.1200, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.71, i32 558, ptr @.str.72, ptr @.str }, %struct.EnumPropertyItem { i32 7, ptr @.str.1139, i32 559, ptr @.str.1140, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.1201, i32 560, ptr @.str.1202, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1203, i32 561, ptr @.str.1204, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.1205, i32 562, ptr @.str.1206, ptr @.str }, %struct.EnumPropertyItem { i32 6, ptr @.str.1207, i32 563, ptr @.str.1208, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WarpModifier_falloff_curve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WarpModifier_use_volume_preserve, ptr @rna_WarpModifier_falloff_radius, i32 -1, ptr @.str.674, i32 8388608, ptr @.str.675, ptr @.str.676, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WarpModifier_falloff_curve_get, ptr null, ptr null, ptr null, ptr @RNA_CurveMapping }, align 8
@.str.673 = private unnamed_addr constant [16 x i8] c"Radius to apply\00", align 1
@rna_WarpModifier_use_volume_preserve = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WarpModifier_vertex_group, ptr @rna_WarpModifier_falloff_curve, i32 -1, ptr @.str.677, i32 3, ptr @.str.338, ptr @.str.678, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WarpModifier_use_volume_preserve_get, ptr @WarpModifier_use_volume_preserve_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.674 = private unnamed_addr constant [14 x i8] c"falloff_curve\00", align 1
@.str.675 = private unnamed_addr constant [14 x i8] c"Falloff Curve\00", align 1
@.str.676 = private unnamed_addr constant [26 x i8] c"Custom Lamp Falloff Curve\00", align 1
@rna_WarpModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_WarpModifier_texture, ptr @rna_WarpModifier_use_volume_preserve, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.679, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WarpModifier_vertex_group_get, ptr @WarpModifier_vertex_group_length, ptr @WarpModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.677 = private unnamed_addr constant [20 x i8] c"use_volume_preserve\00", align 1
@.str.678 = private unnamed_addr constant [40 x i8] c"Preserve volume when rotations are used\00", align 1
@rna_WarpModifier_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WarpModifier_texture_coords, ptr @rna_WarpModifier_vertex_group, i32 -1, ptr @.str.317, i32 8388673, ptr @.str.318, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WarpModifier_texture_get, ptr @WarpModifier_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@.str.679 = private unnamed_addr constant [44 x i8] c"Vertex group name for modulating the deform\00", align 1
@rna_WarpModifier_texture_coords = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_WarpModifier_uv_layer, ptr @rna_WarpModifier_texture, i32 -1, ptr @.str.319, i32 3, ptr @.str.320, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WarpModifier_texture_coords_get, ptr @WarpModifier_texture_coords_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_WarpModifier_texture_coords_items, i32 4, i32 0 }, align 8
@rna_WarpModifier_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_WarpModifier_texture_coords_object, ptr @rna_WarpModifier_texture_coords, i32 -1, ptr @.str.321, i32 262145, ptr @.str.322, ptr @.str.323, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WarpModifier_uv_layer_get, ptr @WarpModifier_uv_layer_length, ptr @WarpModifier_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_WarpModifier_texture_coords_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1104, i32 0, ptr @.str.1105, ptr @.str.1106 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1107, i32 0, ptr @.str.1108, ptr @.str.1109 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1110, i32 0, ptr @.str.169, ptr @.str.1111 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1112, i32 0, ptr @.str.1112, ptr @.str.1113 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WarpModifier_texture_coords_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WarpModifier_uv_layer, i32 -1, ptr @.str.324, i32 9437185, ptr @.str.325, ptr @.str.326, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WarpModifier_texture_coords_object_get, ptr @WarpModifier_texture_coords_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@RNA_MultiresModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SurfaceModifier, ptr @RNA_WarpModifier, ptr null, %struct.ListBase { ptr @rna_MultiresModifier_subdivision_type, ptr @rna_MultiresModifier_use_subsurf_uv } }, ptr @.str.697, ptr null, ptr null, i32 4, ptr @.str.698, ptr @.str.699, ptr @.str.121, i32 471, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.680 = private unnamed_addr constant [13 x i8] c"WarpModifier\00", align 1
@.str.681 = private unnamed_addr constant [14 x i8] c"Warp Modifier\00", align 1
@.str.682 = private unnamed_addr constant [14 x i8] c"Warp modifier\00", align 1
@rna_MultiresModifier_levels = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MultiresModifier_sculpt_levels, ptr @rna_MultiresModifier_subdivision_type, i32 -1, ptr @.str.153, i32 8195, ptr @.str.154, ptr @.str.683, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 112, i32 2, ptr null, ptr null }, ptr @MultiresModifier_levels_get, ptr @MultiresModifier_levels_set, ptr null, ptr null, ptr @rna_MultiresModifier_level_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 255, i32 0, i32 255, i32 1, i32 0, ptr null }, align 8
@rna_MultiresModifier_subdivision_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1075, i32 0, ptr @.str.1076, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.1077, i32 0, ptr @.str.1078, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MultiresModifier_subdivision_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MultiresModifier_levels, ptr null, i32 -1, ptr @.str.150, i32 3, ptr @.str.151, ptr @.str.152, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MultiresModifier_subdivision_type_get, ptr @MultiresModifier_subdivision_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MultiresModifier_subdivision_type_items, i32 2, i32 0 }, align 8
@rna_MultiresModifier_sculpt_levels = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MultiresModifier_render_levels, ptr @rna_MultiresModifier_levels, i32 -1, ptr @.str.684, i32 8195, ptr @.str.685, ptr @.str.686, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 113, i32 2, ptr null, ptr null }, ptr @MultiresModifier_sculpt_levels_get, ptr @MultiresModifier_sculpt_levels_set, ptr null, ptr null, ptr @rna_MultiresModifier_level_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 255, i32 0, i32 255, i32 1, i32 0, ptr null }, align 8
@.str.683 = private unnamed_addr constant [46 x i8] c"Number of subdivisions to use in the viewport\00", align 1
@rna_MultiresModifier_render_levels = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MultiresModifier_total_levels, ptr @rna_MultiresModifier_sculpt_levels, i32 -1, ptr @.str.156, i32 8195, ptr @.str.157, ptr @.str.687, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 114, i32 2, ptr null, ptr null }, ptr @MultiresModifier_render_levels_get, ptr @MultiresModifier_render_levels_set, ptr null, ptr null, ptr @rna_MultiresModifier_level_range, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 255, i32 0, i32 255, i32 1, i32 0, ptr null }, align 8
@.str.684 = private unnamed_addr constant [14 x i8] c"sculpt_levels\00", align 1
@.str.685 = private unnamed_addr constant [14 x i8] c"Sculpt Levels\00", align 1
@.str.686 = private unnamed_addr constant [45 x i8] c"Number of subdivisions to use in sculpt mode\00", align 1
@rna_MultiresModifier_total_levels = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_MultiresModifier_is_external, ptr @rna_MultiresModifier_render_levels, i32 -1, ptr @.str.688, i32 8194, ptr @.str.689, ptr @.str.690, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 115, i32 2, ptr null, ptr null }, ptr @MultiresModifier_total_levels_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 255, i32 0, i32 255, i32 1, i32 0, ptr null }, align 8
@.str.687 = private unnamed_addr constant [45 x i8] c"The subdivision level visible at render time\00", align 1
@rna_MultiresModifier_is_external = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MultiresModifier_filepath, ptr @rna_MultiresModifier_total_levels, i32 -1, ptr @.str.691, i32 2, ptr @.str.692, ptr @.str.693, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MultiresModifier_is_external_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.688 = private unnamed_addr constant [13 x i8] c"total_levels\00", align 1
@.str.689 = private unnamed_addr constant [13 x i8] c"Total Levels\00", align 1
@.str.690 = private unnamed_addr constant [58 x i8] c"Number of subdivisions for which displacements are stored\00", align 1
@rna_MultiresModifier_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MultiresModifier_show_only_control_edges, ptr @rna_MultiresModifier_is_external, i32 -1, ptr @.str.694, i32 262145, ptr @.str.695, ptr @.str.696, i32 0, ptr @.str.121, i32 3, i32 1, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MultiresModifier_filepath_get, ptr @MultiresModifier_filepath_length, ptr @MultiresModifier_filepath_set, ptr null, ptr null, ptr null, i32 0, ptr @.str }, align 8
@.str.691 = private unnamed_addr constant [12 x i8] c"is_external\00", align 1
@.str.692 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@.str.693 = private unnamed_addr constant [69 x i8] c"Store multires displacements outside the .blend file, to save memory\00", align 1
@rna_MultiresModifier_show_only_control_edges = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_MultiresModifier_use_subsurf_uv, ptr @rna_MultiresModifier_filepath, i32 -1, ptr @.str.159, i32 3, ptr @.str.160, ptr @.str.161, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MultiresModifier_show_only_control_edges_get, ptr @MultiresModifier_show_only_control_edges_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.694 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.695 = private unnamed_addr constant [10 x i8] c"File Path\00", align 1
@.str.696 = private unnamed_addr constant [36 x i8] c"Path to external displacements file\00", align 1
@rna_MultiresModifier_use_subsurf_uv = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MultiresModifier_show_only_control_edges, i32 -1, ptr @.str.162, i32 3, ptr @.str.163, ptr @.str.164, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MultiresModifier_use_subsurf_uv_get, ptr @MultiresModifier_use_subsurf_uv_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@RNA_SurfaceModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SmokeModifier, ptr @RNA_MultiresModifier, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.700, ptr null, ptr null, i32 4, ptr @.str.701, ptr @.str.702, ptr @.str.121, i32 450, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.697 = private unnamed_addr constant [17 x i8] c"MultiresModifier\00", align 1
@.str.698 = private unnamed_addr constant [18 x i8] c"Multires Modifier\00", align 1
@.str.699 = private unnamed_addr constant [30 x i8] c"Multiresolution mesh modifier\00", align 1
@RNA_SmokeModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SolidifyModifier, ptr @RNA_SurfaceModifier, ptr null, %struct.ListBase { ptr @rna_SmokeModifier_domain_settings, ptr @rna_SmokeModifier_smoke_type } }, ptr @.str.710, ptr null, ptr null, i32 4, ptr @.str.711, ptr @.str.712, ptr @.str.121, i32 472, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.700 = private unnamed_addr constant [16 x i8] c"SurfaceModifier\00", align 1
@.str.701 = private unnamed_addr constant [17 x i8] c"Surface Modifier\00", align 1
@.str.702 = private unnamed_addr constant [74 x i8] c"Surface modifier defining modifier stack position used for surface fields\00", align 1
@rna_SmokeModifier_flow_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeModifier_coll_settings, ptr @rna_SmokeModifier_domain_settings, i32 -1, ptr @.str.705, i32 8388608, ptr @.str.706, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeModifier_flow_settings_get, ptr null, ptr null, ptr null, ptr @RNA_SmokeFlowSettings }, align 8
@.str.703 = private unnamed_addr constant [16 x i8] c"domain_settings\00", align 1
@.str.704 = private unnamed_addr constant [16 x i8] c"Domain Settings\00", align 1
@rna_SmokeModifier_domain_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeModifier_flow_settings, ptr null, i32 -1, ptr @.str.703, i32 8388608, ptr @.str.704, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeModifier_domain_settings_get, ptr null, ptr null, ptr null, ptr @RNA_SmokeDomainSettings }, align 8
@rna_SmokeModifier_coll_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_SmokeModifier_smoke_type, ptr @rna_SmokeModifier_flow_settings, i32 -1, ptr @.str.707, i32 8388608, ptr @.str.708, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeModifier_coll_settings_get, ptr null, ptr null, ptr null, ptr @RNA_SmokeCollSettings }, align 8
@.str.705 = private unnamed_addr constant [14 x i8] c"flow_settings\00", align 1
@.str.706 = private unnamed_addr constant [14 x i8] c"Flow Settings\00", align 1
@rna_SmokeModifier_smoke_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SmokeModifier_coll_settings, i32 -1, ptr @.str.709, i32 1, ptr @.str.129, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Smoke_set_type, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SmokeModifier_smoke_type_get, ptr @SmokeModifier_smoke_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_SmokeModifier_smoke_type_items, i32 4, i32 0 }, align 8
@.str.707 = private unnamed_addr constant [14 x i8] c"coll_settings\00", align 1
@.str.708 = private unnamed_addr constant [19 x i8] c"Collision Settings\00", align 1
@.str.709 = private unnamed_addr constant [11 x i8] c"smoke_type\00", align 1
@rna_SmokeModifier_smoke_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1145, i32 0, ptr @.str.1146, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.1209, i32 0, ptr @.str.1210, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1211, i32 0, ptr @.str.1212, ptr @.str.1213 }, %struct.EnumPropertyItem { i32 4, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_SolidifyModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ScrewModifier, ptr @RNA_SmokeModifier, ptr null, %struct.ListBase { ptr @rna_SolidifyModifier_thickness, ptr @rna_SolidifyModifier_use_rim_only } }, ptr @.str.755, ptr null, ptr null, i32 4, ptr @.str.756, ptr @.str.757, ptr @.str.121, i32 473, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.710 = private unnamed_addr constant [14 x i8] c"SmokeModifier\00", align 1
@.str.711 = private unnamed_addr constant [15 x i8] c"Smoke Modifier\00", align 1
@.str.712 = private unnamed_addr constant [26 x i8] c"Smoke simulation modifier\00", align 1
@rna_SolidifyModifier_thickness_clamp = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_thickness_vertex_group, ptr @rna_SolidifyModifier_thickness, i32 -1, ptr @.str.716, i32 8195, ptr @.str.717, ptr @.str.718, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 188, i32 4, ptr null, ptr null }, ptr @SolidifyModifier_thickness_clamp_get, ptr @SolidifyModifier_thickness_clamp_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 1.000000e+02, float 0x3FB99999A0000000, i32 4, float 0.000000e+00, ptr null }, align 8
@.str.713 = private unnamed_addr constant [10 x i8] c"thickness\00", align 1
@.str.714 = private unnamed_addr constant [10 x i8] c"Thickness\00", align 1
@.str.715 = private unnamed_addr constant [23 x i8] c"Thickness of the shell\00", align 1
@rna_SolidifyModifier_thickness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_thickness_clamp, ptr null, i32 -1, ptr @.str.713, i32 8195, ptr @.str.714, ptr @.str.715, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 176, i32 4, ptr null, ptr null }, ptr @SolidifyModifier_thickness_get, ptr @SolidifyModifier_thickness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+01, float 1.000000e+01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 4, float 0.000000e+00, ptr null }, align 8
@rna_SolidifyModifier_thickness_vertex_group = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_offset, ptr @rna_SolidifyModifier_thickness_clamp, i32 -1, ptr @.str.719, i32 8195, ptr @.str.720, ptr @.str.721, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 184, i32 4, ptr null, ptr null }, ptr @SolidifyModifier_thickness_vertex_group_get, ptr @SolidifyModifier_thickness_vertex_group_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.716 = private unnamed_addr constant [16 x i8] c"thickness_clamp\00", align 1
@.str.717 = private unnamed_addr constant [6 x i8] c"Clamp\00", align 1
@.str.718 = private unnamed_addr constant [37 x i8] c"Offset clamp based on geometry scale\00", align 1
@rna_SolidifyModifier_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_edge_crease_inner, ptr @rna_SolidifyModifier_thickness_vertex_group, i32 -1, ptr @.str.612, i32 8195, ptr @.str.613, ptr @.str.722, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 180, i32 4, ptr null, ptr null }, ptr @SolidifyModifier_offset_get, ptr @SolidifyModifier_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 4, float 0.000000e+00, ptr null }, align 8
@.str.719 = private unnamed_addr constant [23 x i8] c"thickness_vertex_group\00", align 1
@.str.720 = private unnamed_addr constant [20 x i8] c"Vertex Group Factor\00", align 1
@.str.721 = private unnamed_addr constant [56 x i8] c"Thickness factor to use for zero vertex group influence\00", align 1
@rna_SolidifyModifier_edge_crease_inner = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_edge_crease_outer, ptr @rna_SolidifyModifier_offset, i32 -1, ptr @.str.723, i32 8195, ptr @.str.724, ptr @.str.725, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 196, i32 4, ptr null, ptr null }, ptr @SolidifyModifier_edge_crease_inner_get, ptr @SolidifyModifier_edge_crease_inner_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.722 = private unnamed_addr constant [37 x i8] c"Offset the thickness from the center\00", align 1
@rna_SolidifyModifier_edge_crease_outer = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_edge_crease_rim, ptr @rna_SolidifyModifier_edge_crease_inner, i32 -1, ptr @.str.726, i32 8195, ptr @.str.727, ptr @.str.728, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 200, i32 4, ptr null, ptr null }, ptr @SolidifyModifier_edge_crease_outer_get, ptr @SolidifyModifier_edge_crease_outer_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.723 = private unnamed_addr constant [18 x i8] c"edge_crease_inner\00", align 1
@.str.724 = private unnamed_addr constant [13 x i8] c"Inner Crease\00", align 1
@.str.725 = private unnamed_addr constant [31 x i8] c"Assign a crease to inner edges\00", align 1
@rna_SolidifyModifier_edge_crease_rim = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_material_offset, ptr @rna_SolidifyModifier_edge_crease_outer, i32 -1, ptr @.str.729, i32 8195, ptr @.str.730, ptr @.str.731, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 204, i32 4, ptr null, ptr null }, ptr @SolidifyModifier_edge_crease_rim_get, ptr @SolidifyModifier_edge_crease_rim_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.726 = private unnamed_addr constant [18 x i8] c"edge_crease_outer\00", align 1
@.str.727 = private unnamed_addr constant [13 x i8] c"Outer Crease\00", align 1
@.str.728 = private unnamed_addr constant [31 x i8] c"Assign a crease to outer edges\00", align 1
@rna_SolidifyModifier_material_offset = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_material_offset_rim, ptr @rna_SolidifyModifier_edge_crease_rim, i32 -1, ptr @.str.732, i32 8195, ptr @.str.733, ptr @.str.734, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 212, i32 1, ptr null, ptr null }, ptr @SolidifyModifier_material_offset_get, ptr @SolidifyModifier_material_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -32768, i32 32767, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.729 = private unnamed_addr constant [16 x i8] c"edge_crease_rim\00", align 1
@.str.730 = private unnamed_addr constant [11 x i8] c"Rim Crease\00", align 1
@.str.731 = private unnamed_addr constant [47 x i8] c"Assign a crease to the edges making up the rim\00", align 1
@rna_SolidifyModifier_material_offset_rim = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_vertex_group, ptr @rna_SolidifyModifier_material_offset, i32 -1, ptr @.str.735, i32 8195, ptr @.str.736, ptr @.str.737, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 214, i32 1, ptr null, ptr null }, ptr @SolidifyModifier_material_offset_rim_get, ptr @SolidifyModifier_material_offset_rim_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -32768, i32 32767, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.732 = private unnamed_addr constant [16 x i8] c"material_offset\00", align 1
@.str.733 = private unnamed_addr constant [16 x i8] c"Material Offset\00", align 1
@.str.734 = private unnamed_addr constant [41 x i8] c"Offset material index of generated faces\00", align 1
@rna_SolidifyModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_use_rim, ptr @rna_SolidifyModifier_material_offset_rim, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.487, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SolidifyModifier_vertex_group_get, ptr @SolidifyModifier_vertex_group_length, ptr @SolidifyModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.735 = private unnamed_addr constant [20 x i8] c"material_offset_rim\00", align 1
@.str.736 = private unnamed_addr constant [20 x i8] c"Rim Material Offset\00", align 1
@.str.737 = private unnamed_addr constant [45 x i8] c"Offset material index of generated rim faces\00", align 1
@rna_SolidifyModifier_use_rim = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_use_even_offset, ptr @rna_SolidifyModifier_vertex_group, i32 -1, ptr @.str.738, i32 3, ptr @.str.739, ptr @.str.740, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SolidifyModifier_use_rim_get, ptr @SolidifyModifier_use_rim_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SolidifyModifier_use_even_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_use_quality_normals, ptr @rna_SolidifyModifier_use_rim, i32 -1, ptr @.str.741, i32 3, ptr @.str.742, ptr @.str.743, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SolidifyModifier_use_even_offset_get, ptr @SolidifyModifier_use_even_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.738 = private unnamed_addr constant [8 x i8] c"use_rim\00", align 1
@.str.739 = private unnamed_addr constant [9 x i8] c"Fill Rim\00", align 1
@.str.740 = private unnamed_addr constant [101 x i8] c"Create edge loops between the inner and outer surfaces on face edges (slow, disable when not needed)\00", align 1
@rna_SolidifyModifier_use_quality_normals = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_invert_vertex_group, ptr @rna_SolidifyModifier_use_even_offset, i32 -1, ptr @.str.744, i32 3, ptr @.str.745, ptr @.str.746, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SolidifyModifier_use_quality_normals_get, ptr @SolidifyModifier_use_quality_normals_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.741 = private unnamed_addr constant [16 x i8] c"use_even_offset\00", align 1
@.str.742 = private unnamed_addr constant [15 x i8] c"Even Thickness\00", align 1
@.str.743 = private unnamed_addr constant [82 x i8] c"Maintain thickness by adjusting for sharp corners (slow, disable when not needed)\00", align 1
@rna_SolidifyModifier_invert_vertex_group = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_use_flip_normals, ptr @rna_SolidifyModifier_use_quality_normals, i32 -1, ptr @.str.249, i32 3, ptr @.str.747, ptr @.str.748, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SolidifyModifier_invert_vertex_group_get, ptr @SolidifyModifier_invert_vertex_group_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.744 = private unnamed_addr constant [20 x i8] c"use_quality_normals\00", align 1
@.str.745 = private unnamed_addr constant [21 x i8] c"High Quality Normals\00", align 1
@.str.746 = private unnamed_addr constant [86 x i8] c"Calculate normals which result in more even thickness (slow, disable when not needed)\00", align 1
@rna_SolidifyModifier_use_flip_normals = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SolidifyModifier_use_rim_only, ptr @rna_SolidifyModifier_invert_vertex_group, i32 -1, ptr @.str.749, i32 3, ptr @.str.750, ptr @.str.751, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SolidifyModifier_use_flip_normals_get, ptr @SolidifyModifier_use_flip_normals_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.747 = private unnamed_addr constant [20 x i8] c"Vertex Group Invert\00", align 1
@.str.748 = private unnamed_addr constant [34 x i8] c"Invert the vertex group influence\00", align 1
@rna_SolidifyModifier_use_rim_only = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SolidifyModifier_use_flip_normals, i32 -1, ptr @.str.752, i32 3, ptr @.str.753, ptr @.str.754, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SolidifyModifier_use_rim_only_get, ptr @SolidifyModifier_use_rim_only_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.749 = private unnamed_addr constant [17 x i8] c"use_flip_normals\00", align 1
@.str.750 = private unnamed_addr constant [13 x i8] c"Flip Normals\00", align 1
@.str.751 = private unnamed_addr constant [26 x i8] c"Invert the face direction\00", align 1
@.str.752 = private unnamed_addr constant [13 x i8] c"use_rim_only\00", align 1
@.str.753 = private unnamed_addr constant [9 x i8] c"Only Rim\00", align 1
@.str.754 = private unnamed_addr constant [38 x i8] c"Only add the rim to the original data\00", align 1
@RNA_ScrewModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_UVWarpModifier, ptr @RNA_SolidifyModifier, ptr null, %struct.ListBase { ptr @rna_ScrewModifier_object, ptr @rna_ScrewModifier_use_stretch_v } }, ptr @.str.787, ptr null, ptr null, i32 4, ptr @.str.788, ptr @.str.789, ptr @.str.121, i32 474, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.755 = private unnamed_addr constant [17 x i8] c"SolidifyModifier\00", align 1
@.str.756 = private unnamed_addr constant [18 x i8] c"Solidify Modifier\00", align 1
@.str.757 = private unnamed_addr constant [64 x i8] c"Create a solid skin by extruding, compensating for sharp angles\00", align 1
@rna_ScrewModifier_steps = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_render_steps, ptr @rna_ScrewModifier_object, i32 -1, ptr @.str.759, i32 8195, ptr @.str.760, ptr @.str.761, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 120, i32 0, ptr null, ptr null }, ptr @ScrewModifier_steps_get, ptr @ScrewModifier_steps_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 3, i32 512, i32 2, i32 10000, i32 1, i32 0, ptr null }, align 8
@.str.758 = private unnamed_addr constant [32 x i8] c"Object to define the screw axis\00", align 1
@rna_ScrewModifier_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_steps, ptr null, i32 -1, ptr @.str.168, i32 9437185, ptr @.str.169, ptr @.str.758, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ScrewModifier_object_get, ptr @ScrewModifier_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_ScrewModifier_render_steps = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_iterations, ptr @rna_ScrewModifier_steps, i32 -1, ptr @.str.762, i32 8195, ptr @.str.763, ptr @.str.761, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 124, i32 0, ptr null, ptr null }, ptr @ScrewModifier_render_steps_get, ptr @ScrewModifier_render_steps_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2, i32 512, i32 2, i32 10000, i32 1, i32 0, ptr null }, align 8
@.str.759 = private unnamed_addr constant [6 x i8] c"steps\00", align 1
@.str.760 = private unnamed_addr constant [6 x i8] c"Steps\00", align 1
@.str.761 = private unnamed_addr constant [34 x i8] c"Number of steps in the revolution\00", align 1
@rna_ScrewModifier_iterations = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_axis, ptr @rna_ScrewModifier_render_steps, i32 -1, ptr @.str.242, i32 8195, ptr @.str.243, ptr @.str.764, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 128, i32 0, ptr null, ptr null }, ptr @ScrewModifier_iterations_get, ptr @ScrewModifier_iterations_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 100, i32 1, i32 10000, i32 1, i32 0, ptr null }, align 8
@.str.762 = private unnamed_addr constant [13 x i8] c"render_steps\00", align 1
@.str.763 = private unnamed_addr constant [13 x i8] c"Render Steps\00", align 1
@rna_ScrewModifier_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_angle, ptr @rna_ScrewModifier_iterations, i32 -1, ptr @.str.512, i32 3, ptr @.str.513, ptr @.str.765, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ScrewModifier_axis_get, ptr @ScrewModifier_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_ScrewModifier_axis_items, i32 3, i32 0 }, align 8
@.str.764 = private unnamed_addr constant [45 x i8] c"Number of times to apply the screw operation\00", align 1
@rna_ScrewModifier_angle = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_screw_offset, ptr @rna_ScrewModifier_axis, i32 -1, ptr @.str.651, i32 8195, ptr @.str.585, ptr @.str.766, i32 0, ptr @.str.121, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 136, i32 4, ptr null, ptr null }, ptr @ScrewModifier_angle_get, ptr @ScrewModifier_angle_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 2.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.765 = private unnamed_addr constant [11 x i8] c"Screw axis\00", align 1
@rna_ScrewModifier_axis_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.206, i32 0, ptr @.str.1214, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.209, i32 0, ptr @.str.1215, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.212, i32 0, ptr @.str.1216, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ScrewModifier_screw_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_use_normal_flip, ptr @rna_ScrewModifier_angle, i32 -1, ptr @.str.767, i32 8195, ptr @.str.36, ptr @.str.768, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 132, i32 4, ptr null, ptr null }, ptr @ScrewModifier_screw_offset_get, ptr @ScrewModifier_screw_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.766 = private unnamed_addr constant [20 x i8] c"Angle of revolution\00", align 1
@rna_ScrewModifier_use_normal_flip = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_use_normal_calculate, ptr @rna_ScrewModifier_screw_offset, i32 -1, ptr @.str.769, i32 3, ptr @.str.770, ptr @.str.771, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ScrewModifier_use_normal_flip_get, ptr @ScrewModifier_use_normal_flip_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.767 = private unnamed_addr constant [13 x i8] c"screw_offset\00", align 1
@.str.768 = private unnamed_addr constant [37 x i8] c"Offset the revolution along its axis\00", align 1
@rna_ScrewModifier_use_normal_calculate = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_use_object_screw_offset, ptr @rna_ScrewModifier_use_normal_flip, i32 -1, ptr @.str.772, i32 3, ptr @.str.773, ptr @.str.774, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ScrewModifier_use_normal_calculate_get, ptr @ScrewModifier_use_normal_calculate_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.769 = private unnamed_addr constant [16 x i8] c"use_normal_flip\00", align 1
@.str.770 = private unnamed_addr constant [5 x i8] c"Flip\00", align 1
@.str.771 = private unnamed_addr constant [29 x i8] c"Flip normals of lathed faces\00", align 1
@rna_ScrewModifier_use_object_screw_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_use_smooth_shade, ptr @rna_ScrewModifier_use_normal_calculate, i32 -1, ptr @.str.775, i32 3, ptr @.str.776, ptr @.str.777, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ScrewModifier_use_object_screw_offset_get, ptr @ScrewModifier_use_object_screw_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.772 = private unnamed_addr constant [21 x i8] c"use_normal_calculate\00", align 1
@.str.773 = private unnamed_addr constant [11 x i8] c"Calc Order\00", align 1
@.str.774 = private unnamed_addr constant [65 x i8] c"Calculate the order of edges (needed for meshes, but not curves)\00", align 1
@rna_ScrewModifier_use_smooth_shade = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_use_stretch_u, ptr @rna_ScrewModifier_use_object_screw_offset, i32 -1, ptr @.str.778, i32 3, ptr @.str.779, ptr @.str.780, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ScrewModifier_use_smooth_shade_get, ptr @ScrewModifier_use_smooth_shade_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.775 = private unnamed_addr constant [24 x i8] c"use_object_screw_offset\00", align 1
@.str.776 = private unnamed_addr constant [13 x i8] c"Object Screw\00", align 1
@.str.777 = private unnamed_addr constant [53 x i8] c"Use the distance between the objects to make a screw\00", align 1
@rna_ScrewModifier_use_stretch_u = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ScrewModifier_use_stretch_v, ptr @rna_ScrewModifier_use_smooth_shade, i32 -1, ptr @.str.781, i32 3, ptr @.str.782, ptr @.str.783, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ScrewModifier_use_stretch_u_get, ptr @ScrewModifier_use_stretch_u_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.778 = private unnamed_addr constant [17 x i8] c"use_smooth_shade\00", align 1
@.str.779 = private unnamed_addr constant [15 x i8] c"Smooth Shading\00", align 1
@.str.780 = private unnamed_addr constant [57 x i8] c"Output faces with smooth shading rather than flat shaded\00", align 1
@rna_ScrewModifier_use_stretch_v = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ScrewModifier_use_stretch_u, i32 -1, ptr @.str.784, i32 3, ptr @.str.785, ptr @.str.786, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ScrewModifier_use_stretch_v_get, ptr @ScrewModifier_use_stretch_v_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.781 = private unnamed_addr constant [14 x i8] c"use_stretch_u\00", align 1
@.str.782 = private unnamed_addr constant [10 x i8] c"Stretch U\00", align 1
@.str.783 = private unnamed_addr constant [60 x i8] c"Stretch the U coordinates between 0-1 when UV's are present\00", align 1
@.str.784 = private unnamed_addr constant [14 x i8] c"use_stretch_v\00", align 1
@.str.785 = private unnamed_addr constant [10 x i8] c"Stretch V\00", align 1
@.str.786 = private unnamed_addr constant [60 x i8] c"Stretch the V coordinates between 0-1 when UV's are present\00", align 1
@RNA_UVWarpModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_VertexWeightEditModifier, ptr @RNA_ScrewModifier, ptr null, %struct.ListBase { ptr @rna_UVWarpModifier_axis_u, ptr @rna_UVWarpModifier_uv_layer } }, ptr @.str.802, ptr null, ptr null, i32 4, ptr @.str.803, ptr @.str.804, ptr @.str.121, i32 455, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.787 = private unnamed_addr constant [14 x i8] c"ScrewModifier\00", align 1
@.str.788 = private unnamed_addr constant [15 x i8] c"Screw Modifier\00", align 1
@.str.789 = private unnamed_addr constant [14 x i8] c"Revolve edges\00", align 1
@rna_UVWarpModifier_axis_v = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_UVWarpModifier_center, ptr @rna_UVWarpModifier_axis_u, i32 -1, ptr @.str.792, i32 3, ptr @.str.793, ptr @.str.514, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVWarpModifier_axis_v_get, ptr @UVWarpModifier_axis_v_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_UVWarpModifier_axis_v_items, i32 3, i32 0 }, align 8
@.str.790 = private unnamed_addr constant [7 x i8] c"axis_u\00", align 1
@.str.791 = private unnamed_addr constant [7 x i8] c"U-Axis\00", align 1
@rna_UVWarpModifier_axis_u_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.206, i32 0, ptr @.str.206, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.209, i32 0, ptr @.str.209, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.212, i32 0, ptr @.str.212, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_UVWarpModifier_axis_u = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_UVWarpModifier_axis_v, ptr null, i32 -1, ptr @.str.790, i32 3, ptr @.str.791, ptr @.str.514, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVWarpModifier_axis_u_get, ptr @UVWarpModifier_axis_u_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_UVWarpModifier_axis_u_items, i32 3, i32 0 }, align 8
@rna_UVWarpModifier_center = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_UVWarpModifier_object_from, ptr @rna_UVWarpModifier_axis_v, i32 -1, ptr @.str.353, i32 8195, ptr @.str.794, ptr @.str.795, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 120, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @UVWarpModifier_center_get, ptr @UVWarpModifier_center_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_UVWarpModifier_center_default }, align 8
@.str.792 = private unnamed_addr constant [7 x i8] c"axis_v\00", align 1
@.str.793 = private unnamed_addr constant [7 x i8] c"V-Axis\00", align 1
@rna_UVWarpModifier_axis_v_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.206, i32 0, ptr @.str.206, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.209, i32 0, ptr @.str.209, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.212, i32 0, ptr @.str.212, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_UVWarpModifier_object_from = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_UVWarpModifier_bone_from, ptr @rna_UVWarpModifier_center, i32 -1, ptr @.str.665, i32 8388609, ptr @.str.607, ptr @.str.796, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVWarpModifier_object_from_get, ptr @UVWarpModifier_object_from_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.794 = private unnamed_addr constant [10 x i8] c"UV Center\00", align 1
@.str.795 = private unnamed_addr constant [30 x i8] c"Center point for rotate/scale\00", align 1
@rna_UVWarpModifier_center_default = internal global [2 x float] zeroinitializer, align 4
@rna_UVWarpModifier_bone_from = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_UVWarpModifier_object_to, ptr @rna_UVWarpModifier_object_from, i32 -1, ptr @.str.797, i32 262145, ptr @.str.357, ptr @.str.798, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVWarpModifier_bone_from_get, ptr @UVWarpModifier_bone_from_length, ptr @UVWarpModifier_bone_from_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.796 = private unnamed_addr constant [23 x i8] c"Object defining offset\00", align 1
@rna_UVWarpModifier_object_to = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_UVWarpModifier_bone_to, ptr @rna_UVWarpModifier_bone_from, i32 -1, ptr @.str.668, i32 8388609, ptr @.str.607, ptr @.str.796, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVWarpModifier_object_to_get, ptr @UVWarpModifier_object_to_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.797 = private unnamed_addr constant [10 x i8] c"bone_from\00", align 1
@.str.798 = private unnamed_addr constant [21 x i8] c"Bone defining offset\00", align 1
@rna_UVWarpModifier_bone_to = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_UVWarpModifier_vertex_group, ptr @rna_UVWarpModifier_object_to, i32 -1, ptr @.str.799, i32 262145, ptr @.str.357, ptr @.str.798, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVWarpModifier_bone_to_get, ptr @UVWarpModifier_bone_to_length, ptr @UVWarpModifier_bone_to_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_UVWarpModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_UVWarpModifier_uv_layer, ptr @rna_UVWarpModifier_bone_to, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.487, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVWarpModifier_vertex_group_get, ptr @UVWarpModifier_vertex_group_length, ptr @UVWarpModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.799 = private unnamed_addr constant [8 x i8] c"bone_to\00", align 1
@rna_UVWarpModifier_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_UVWarpModifier_vertex_group, i32 -1, ptr @.str.321, i32 262145, ptr @.str.800, ptr @.str.801, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UVWarpModifier_uv_layer_get, ptr @UVWarpModifier_uv_layer_length, ptr @UVWarpModifier_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.800 = private unnamed_addr constant [9 x i8] c"UV Layer\00", align 1
@.str.801 = private unnamed_addr constant [14 x i8] c"UV Layer name\00", align 1
@RNA_VertexWeightEditModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_VertexWeightMixModifier, ptr @RNA_UVWarpModifier, ptr null, %struct.ListBase { ptr @rna_VertexWeightEditModifier_vertex_group, ptr @rna_VertexWeightEditModifier_mask_tex_map_object } }, ptr @.str.841, ptr null, ptr null, i32 4, ptr @.str.842, ptr @.str.843, ptr @.str.121, i32 475, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.802 = private unnamed_addr constant [15 x i8] c"UVWarpModifier\00", align 1
@.str.803 = private unnamed_addr constant [16 x i8] c"UVWarp Modifier\00", align 1
@.str.804 = private unnamed_addr constant [38 x i8] c"Add target position to uv coordinates\00", align 1
@rna_VertexWeightEditModifier_falloff_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_use_add, ptr @rna_VertexWeightEditModifier_vertex_group, i32 -1, ptr @.str.671, i32 3, ptr @.str.672, ptr @.str.805, i32 0, ptr @.str.54, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightEditModifier_falloff_type_get, ptr @VertexWeightEditModifier_falloff_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightEditModifier_falloff_type_items, i32 8, i32 0 }, align 8
@rna_VertexWeightEditModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_falloff_type, ptr null, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.487, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightEditModifier_vertex_group_get, ptr @VertexWeightEditModifier_vertex_group_length, ptr @VertexWeightEditModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_VertexWeightEditModifier_use_add = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_use_remove, ptr @rna_VertexWeightEditModifier_falloff_type, i32 -1, ptr @.str.806, i32 3, ptr @.str.807, ptr @.str.808, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightEditModifier_use_add_get, ptr @VertexWeightEditModifier_use_add_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.805 = private unnamed_addr constant [43 x i8] c"How weights are mapped to their new values\00", align 1
@rna_VertexWeightEditModifier_falloff_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1205, i32 562, ptr @.str.1206, ptr @.str.1217 }, %struct.EnumPropertyItem { i32 1, ptr @.str.53, i32 564, ptr @.str.1218, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1203, i32 561, ptr @.str.1204, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.71, i32 558, ptr @.str.72, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.1201, i32 560, ptr @.str.1202, ptr @.str }, %struct.EnumPropertyItem { i32 7, ptr @.str.1219, i32 559, ptr @.str.1140, ptr @.str }, %struct.EnumPropertyItem { i32 8, ptr @.str.1220, i32 564, ptr @.str.1221, ptr @.str }, %struct.EnumPropertyItem { i32 9, ptr @.str.1222, i32 563, ptr @.str.1223, ptr @.str.1224 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightEditModifier_use_remove = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_default_weight, ptr @rna_VertexWeightEditModifier_use_add, i32 -1, ptr @.str.809, i32 3, ptr @.str.810, ptr @.str.811, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightEditModifier_use_remove_get, ptr @VertexWeightEditModifier_use_remove_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.806 = private unnamed_addr constant [8 x i8] c"use_add\00", align 1
@.str.807 = private unnamed_addr constant [10 x i8] c"Group Add\00", align 1
@.str.808 = private unnamed_addr constant [50 x i8] c"Add vertices with weight over threshold to vgroup\00", align 1
@rna_VertexWeightEditModifier_default_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_map_curve, ptr @rna_VertexWeightEditModifier_use_remove, i32 -1, ptr @.str.812, i32 8195, ptr @.str.813, ptr @.str.814, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 180, i32 4, ptr null, ptr null }, ptr @VertexWeightEditModifier_default_weight_get, ptr @VertexWeightEditModifier_default_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.809 = private unnamed_addr constant [11 x i8] c"use_remove\00", align 1
@.str.810 = private unnamed_addr constant [13 x i8] c"Group Remove\00", align 1
@.str.811 = private unnamed_addr constant [56 x i8] c"Remove vertices with weight below threshold from vgroup\00", align 1
@rna_VertexWeightEditModifier_map_curve = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_add_threshold, ptr @rna_VertexWeightEditModifier_default_weight, i32 -1, ptr @.str.815, i32 8388608, ptr @.str.816, ptr @.str.817, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightEditModifier_map_curve_get, ptr null, ptr null, ptr null, ptr @RNA_CurveMapping }, align 8
@.str.812 = private unnamed_addr constant [15 x i8] c"default_weight\00", align 1
@.str.813 = private unnamed_addr constant [15 x i8] c"Default Weight\00", align 1
@.str.814 = private unnamed_addr constant [61 x i8] c"Default weight a vertex will have if it is not in the vgroup\00", align 1
@rna_VertexWeightEditModifier_add_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_remove_threshold, ptr @rna_VertexWeightEditModifier_map_curve, i32 -1, ptr @.str.818, i32 8195, ptr @.str.819, ptr @.str.820, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 192, i32 4, ptr null, ptr null }, ptr @VertexWeightEditModifier_add_threshold_get, ptr @VertexWeightEditModifier_add_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.815 = private unnamed_addr constant [10 x i8] c"map_curve\00", align 1
@.str.816 = private unnamed_addr constant [14 x i8] c"Mapping Curve\00", align 1
@.str.817 = private unnamed_addr constant [21 x i8] c"Custom mapping curve\00", align 1
@rna_VertexWeightEditModifier_remove_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_mask_constant, ptr @rna_VertexWeightEditModifier_add_threshold, i32 -1, ptr @.str.821, i32 8195, ptr @.str.822, ptr @.str.823, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 196, i32 4, ptr null, ptr null }, ptr @VertexWeightEditModifier_remove_threshold_get, ptr @VertexWeightEditModifier_remove_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.818 = private unnamed_addr constant [14 x i8] c"add_threshold\00", align 1
@.str.819 = private unnamed_addr constant [14 x i8] c"Add Threshold\00", align 1
@.str.820 = private unnamed_addr constant [60 x i8] c"Lower bound for a vertex's weight to be added to the vgroup\00", align 1
@rna_VertexWeightEditModifier_mask_constant = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_mask_vertex_group, ptr @rna_VertexWeightEditModifier_remove_threshold, i32 -1, ptr @.str.824, i32 8195, ptr @.str.825, ptr @.str.826, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 200, i32 4, ptr null, ptr null }, ptr @VertexWeightEditModifier_mask_constant_get, ptr @VertexWeightEditModifier_mask_constant_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.821 = private unnamed_addr constant [17 x i8] c"remove_threshold\00", align 1
@.str.822 = private unnamed_addr constant [17 x i8] c"Remove Threshold\00", align 1
@.str.823 = private unnamed_addr constant [64 x i8] c"Upper bound for a vertex's weight to be removed from the vgroup\00", align 1
@rna_VertexWeightEditModifier_mask_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_mask_texture, ptr @rna_VertexWeightEditModifier_mask_constant, i32 -1, ptr @.str.827, i32 262145, ptr @.str.828, ptr @.str.829, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightEditModifier_mask_vertex_group_get, ptr @VertexWeightEditModifier_mask_vertex_group_length, ptr @VertexWeightEditModifier_mask_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.824 = private unnamed_addr constant [14 x i8] c"mask_constant\00", align 1
@.str.825 = private unnamed_addr constant [10 x i8] c"Influence\00", align 1
@.str.826 = private unnamed_addr constant [52 x i8] c"Global influence of current modifications on vgroup\00", align 1
@rna_VertexWeightEditModifier_mask_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_mask_tex_use_channel, ptr @rna_VertexWeightEditModifier_mask_vertex_group, i32 -1, ptr @.str.830, i32 8388673, ptr @.str.831, ptr @.str.832, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightEditModifier_mask_texture_get, ptr @VertexWeightEditModifier_mask_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@.str.827 = private unnamed_addr constant [18 x i8] c"mask_vertex_group\00", align 1
@.str.828 = private unnamed_addr constant [12 x i8] c"Mask VGroup\00", align 1
@.str.829 = private unnamed_addr constant [26 x i8] c"Masking vertex group name\00", align 1
@rna_VertexWeightEditModifier_mask_tex_use_channel = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_mask_tex_mapping, ptr @rna_VertexWeightEditModifier_mask_texture, i32 -1, ptr @.str.833, i32 3, ptr @.str.834, ptr @.str.835, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightEditModifier_mask_tex_use_channel_get, ptr @VertexWeightEditModifier_mask_tex_use_channel_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightEditModifier_mask_tex_use_channel_items, i32 8, i32 1 }, align 8
@.str.830 = private unnamed_addr constant [13 x i8] c"mask_texture\00", align 1
@.str.831 = private unnamed_addr constant [12 x i8] c"Masking Tex\00", align 1
@.str.832 = private unnamed_addr constant [16 x i8] c"Masking texture\00", align 1
@rna_VertexWeightEditModifier_mask_tex_mapping = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_mask_tex_uv_layer, ptr @rna_VertexWeightEditModifier_mask_tex_use_channel, i32 -1, ptr @.str.836, i32 3, ptr @.str.320, ptr @.str.837, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightEditModifier_mask_tex_mapping_get, ptr @VertexWeightEditModifier_mask_tex_mapping_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightEditModifier_mask_tex_mapping_items, i32 4, i32 0 }, align 8
@.str.833 = private unnamed_addr constant [21 x i8] c"mask_tex_use_channel\00", align 1
@.str.834 = private unnamed_addr constant [12 x i8] c"Use Channel\00", align 1
@.str.835 = private unnamed_addr constant [41 x i8] c"Which texture channel to use for masking\00", align 1
@rna_VertexWeightEditModifier_mask_tex_use_channel_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1225, i32 0, ptr @.str.1226, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1227, i32 0, ptr @.str.1228, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.1229, i32 0, ptr @.str.1230, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.1231, i32 0, ptr @.str.1232, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.1233, i32 0, ptr @.str.1234, ptr @.str }, %struct.EnumPropertyItem { i32 6, ptr @.str.1235, i32 0, ptr @.str.1236, ptr @.str }, %struct.EnumPropertyItem { i32 7, ptr @.str.1237, i32 0, ptr @.str.1238, ptr @.str }, %struct.EnumPropertyItem { i32 8, ptr @.str.1239, i32 0, ptr @.str.1240, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightEditModifier_mask_tex_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightEditModifier_mask_tex_map_object, ptr @rna_VertexWeightEditModifier_mask_tex_mapping, i32 -1, ptr @.str.838, i32 262145, ptr @.str.322, ptr @.str.323, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightEditModifier_mask_tex_uv_layer_get, ptr @VertexWeightEditModifier_mask_tex_uv_layer_length, ptr @VertexWeightEditModifier_mask_tex_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.836 = private unnamed_addr constant [17 x i8] c"mask_tex_mapping\00", align 1
@.str.837 = private unnamed_addr constant [45 x i8] c"Which texture coordinates to use for mapping\00", align 1
@rna_VertexWeightEditModifier_mask_tex_mapping_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1104, i32 0, ptr @.str.1105, ptr @.str.1241 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1107, i32 0, ptr @.str.1108, ptr @.str.1242 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1110, i32 0, ptr @.str.169, ptr @.str.1243 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1112, i32 0, ptr @.str.1112, ptr @.str.1244 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightEditModifier_mask_tex_map_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_VertexWeightEditModifier_mask_tex_uv_layer, i32 -1, ptr @.str.839, i32 9437185, ptr @.str.325, ptr @.str.840, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightEditModifier_mask_tex_map_object_get, ptr @VertexWeightEditModifier_mask_tex_map_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.838 = private unnamed_addr constant [18 x i8] c"mask_tex_uv_layer\00", align 1
@.str.839 = private unnamed_addr constant [20 x i8] c"mask_tex_map_object\00", align 1
@.str.840 = private unnamed_addr constant [46 x i8] c"Which object to take texture coordinates from\00", align 1
@RNA_VertexWeightMixModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_VertexWeightProximityModifier, ptr @RNA_VertexWeightEditModifier, ptr null, %struct.ListBase { ptr @rna_VertexWeightMixModifier_vertex_group_a, ptr @rna_VertexWeightMixModifier_mask_tex_map_object } }, ptr @.str.862, ptr null, ptr null, i32 4, ptr @.str.863, ptr @.str.864, ptr @.str.121, i32 475, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.841 = private unnamed_addr constant [25 x i8] c"VertexWeightEditModifier\00", align 1
@.str.842 = private unnamed_addr constant [23 x i8] c"WeightVG Edit Modifier\00", align 1
@.str.843 = private unnamed_addr constant [40 x i8] c"Edit the weights of vertices in a group\00", align 1
@rna_VertexWeightMixModifier_vertex_group_b = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_default_weight_a, ptr @rna_VertexWeightMixModifier_vertex_group_a, i32 -1, ptr @.str.847, i32 262145, ptr @.str.848, ptr @.str.849, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightMixModifier_vertex_group_b_get, ptr @VertexWeightMixModifier_vertex_group_b_length, ptr @VertexWeightMixModifier_vertex_group_b_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.844 = private unnamed_addr constant [15 x i8] c"vertex_group_a\00", align 1
@.str.845 = private unnamed_addr constant [15 x i8] c"Vertex Group A\00", align 1
@.str.846 = private unnamed_addr constant [24 x i8] c"First vertex group name\00", align 1
@rna_VertexWeightMixModifier_vertex_group_a = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_vertex_group_b, ptr null, i32 -1, ptr @.str.844, i32 262145, ptr @.str.845, ptr @.str.846, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightMixModifier_vertex_group_a_get, ptr @VertexWeightMixModifier_vertex_group_a_length, ptr @VertexWeightMixModifier_vertex_group_a_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_VertexWeightMixModifier_default_weight_a = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_default_weight_b, ptr @rna_VertexWeightMixModifier_vertex_group_b, i32 -1, ptr @.str.850, i32 8195, ptr @.str.851, ptr @.str.852, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 240, i32 4, ptr null, ptr null }, ptr @VertexWeightMixModifier_default_weight_a_get, ptr @VertexWeightMixModifier_default_weight_a_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.847 = private unnamed_addr constant [15 x i8] c"vertex_group_b\00", align 1
@.str.848 = private unnamed_addr constant [15 x i8] c"Vertex Group B\00", align 1
@.str.849 = private unnamed_addr constant [25 x i8] c"Second vertex group name\00", align 1
@rna_VertexWeightMixModifier_default_weight_b = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_mix_mode, ptr @rna_VertexWeightMixModifier_default_weight_a, i32 -1, ptr @.str.853, i32 8195, ptr @.str.854, ptr @.str.855, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 244, i32 4, ptr null, ptr null }, ptr @VertexWeightMixModifier_default_weight_b_get, ptr @VertexWeightMixModifier_default_weight_b_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.850 = private unnamed_addr constant [17 x i8] c"default_weight_a\00", align 1
@.str.851 = private unnamed_addr constant [17 x i8] c"Default Weight A\00", align 1
@.str.852 = private unnamed_addr constant [69 x i8] c"Default weight a vertex will have if it is not in the first A vgroup\00", align 1
@rna_VertexWeightMixModifier_mix_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_mix_set, ptr @rna_VertexWeightMixModifier_default_weight_b, i32 -1, ptr @.str.856, i32 3, ptr @.str.857, ptr @.str.858, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightMixModifier_mix_mode_get, ptr @VertexWeightMixModifier_mix_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightMixModifier_mix_mode_items, i32 7, i32 1 }, align 8
@.str.853 = private unnamed_addr constant [17 x i8] c"default_weight_b\00", align 1
@.str.854 = private unnamed_addr constant [17 x i8] c"Default Weight B\00", align 1
@.str.855 = private unnamed_addr constant [70 x i8] c"Default weight a vertex will have if it is not in the second B vgroup\00", align 1
@rna_VertexWeightMixModifier_mix_set = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_mask_constant, ptr @rna_VertexWeightMixModifier_mix_mode, i32 -1, ptr @.str.859, i32 3, ptr @.str.860, ptr @.str.861, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightMixModifier_mix_set_get, ptr @VertexWeightMixModifier_mix_set_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightMixModifier_mix_set_items, i32 5, i32 1 }, align 8
@.str.856 = private unnamed_addr constant [9 x i8] c"mix_mode\00", align 1
@.str.857 = private unnamed_addr constant [9 x i8] c"Mix Mode\00", align 1
@.str.858 = private unnamed_addr constant [53 x i8] c"How weights from vgroup B affect weights of vgroup A\00", align 1
@rna_VertexWeightMixModifier_mix_mode_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1245, i32 0, ptr @.str.1055, ptr @.str.1246 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1247, i32 0, ptr @.str.1248, ptr @.str.1249 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1250, i32 0, ptr @.str.1251, ptr @.str.1252 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1253, i32 0, ptr @.str.1254, ptr @.str.1255 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1256, i32 0, ptr @.str.1257, ptr @.str.1258 }, %struct.EnumPropertyItem { i32 6, ptr @.str.1259, i32 0, ptr @.str.1121, ptr @.str.1260 }, %struct.EnumPropertyItem { i32 7, ptr @.str.1261, i32 0, ptr @.str.1155, ptr @.str.1262 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightMixModifier_mask_constant = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_mask_vertex_group, ptr @rna_VertexWeightMixModifier_mix_set, i32 -1, ptr @.str.824, i32 8195, ptr @.str.825, ptr @.str.826, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 256, i32 4, ptr null, ptr null }, ptr @VertexWeightMixModifier_mask_constant_get, ptr @VertexWeightMixModifier_mask_constant_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.859 = private unnamed_addr constant [8 x i8] c"mix_set\00", align 1
@.str.860 = private unnamed_addr constant [11 x i8] c"Vertex Set\00", align 1
@.str.861 = private unnamed_addr constant [34 x i8] c"Which vertices should be affected\00", align 1
@rna_VertexWeightMixModifier_mix_set_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1263, i32 0, ptr @.str.1264, ptr @.str.1265 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1266, i32 0, ptr @.str.1267, ptr @.str.1268 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1269, i32 0, ptr @.str.1270, ptr @.str.1271 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1272, i32 0, ptr @.str.1273, ptr @.str.1274 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1275, i32 0, ptr @.str.1276, ptr @.str.1277 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightMixModifier_mask_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_mask_texture, ptr @rna_VertexWeightMixModifier_mask_constant, i32 -1, ptr @.str.827, i32 262145, ptr @.str.828, ptr @.str.829, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightMixModifier_mask_vertex_group_get, ptr @VertexWeightMixModifier_mask_vertex_group_length, ptr @VertexWeightMixModifier_mask_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_VertexWeightMixModifier_mask_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_mask_tex_use_channel, ptr @rna_VertexWeightMixModifier_mask_vertex_group, i32 -1, ptr @.str.830, i32 8388673, ptr @.str.831, ptr @.str.832, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightMixModifier_mask_texture_get, ptr @VertexWeightMixModifier_mask_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@rna_VertexWeightMixModifier_mask_tex_use_channel = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_mask_tex_mapping, ptr @rna_VertexWeightMixModifier_mask_texture, i32 -1, ptr @.str.833, i32 3, ptr @.str.834, ptr @.str.835, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightMixModifier_mask_tex_use_channel_get, ptr @VertexWeightMixModifier_mask_tex_use_channel_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightMixModifier_mask_tex_use_channel_items, i32 8, i32 1 }, align 8
@rna_VertexWeightMixModifier_mask_tex_mapping = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_mask_tex_uv_layer, ptr @rna_VertexWeightMixModifier_mask_tex_use_channel, i32 -1, ptr @.str.836, i32 3, ptr @.str.320, ptr @.str.837, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightMixModifier_mask_tex_mapping_get, ptr @VertexWeightMixModifier_mask_tex_mapping_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightMixModifier_mask_tex_mapping_items, i32 4, i32 0 }, align 8
@rna_VertexWeightMixModifier_mask_tex_use_channel_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1225, i32 0, ptr @.str.1226, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1227, i32 0, ptr @.str.1228, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.1229, i32 0, ptr @.str.1230, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.1231, i32 0, ptr @.str.1232, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.1233, i32 0, ptr @.str.1234, ptr @.str }, %struct.EnumPropertyItem { i32 6, ptr @.str.1235, i32 0, ptr @.str.1236, ptr @.str }, %struct.EnumPropertyItem { i32 7, ptr @.str.1237, i32 0, ptr @.str.1238, ptr @.str }, %struct.EnumPropertyItem { i32 8, ptr @.str.1239, i32 0, ptr @.str.1240, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightMixModifier_mask_tex_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightMixModifier_mask_tex_map_object, ptr @rna_VertexWeightMixModifier_mask_tex_mapping, i32 -1, ptr @.str.838, i32 262145, ptr @.str.322, ptr @.str.323, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightMixModifier_mask_tex_uv_layer_get, ptr @VertexWeightMixModifier_mask_tex_uv_layer_length, ptr @VertexWeightMixModifier_mask_tex_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_VertexWeightMixModifier_mask_tex_mapping_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1104, i32 0, ptr @.str.1105, ptr @.str.1241 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1107, i32 0, ptr @.str.1108, ptr @.str.1242 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1110, i32 0, ptr @.str.169, ptr @.str.1243 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1112, i32 0, ptr @.str.1112, ptr @.str.1244 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightMixModifier_mask_tex_map_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_VertexWeightMixModifier_mask_tex_uv_layer, i32 -1, ptr @.str.839, i32 9437185, ptr @.str.325, ptr @.str.840, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightMixModifier_mask_tex_map_object_get, ptr @VertexWeightMixModifier_mask_tex_map_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@RNA_VertexWeightProximityModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_DynamicPaintModifier, ptr @RNA_VertexWeightMixModifier, ptr null, %struct.ListBase { ptr @rna_VertexWeightProximityModifier_vertex_group, ptr @rna_VertexWeightProximityModifier_mask_tex_map_object } }, ptr @.str.879, ptr null, ptr null, i32 4, ptr @.str.880, ptr @.str.881, ptr @.str.121, i32 475, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.862 = private unnamed_addr constant [24 x i8] c"VertexWeightMixModifier\00", align 1
@.str.863 = private unnamed_addr constant [22 x i8] c"WeightVG Mix Modifier\00", align 1
@.str.864 = private unnamed_addr constant [37 x i8] c"Mix the weights of two vertex groups\00", align 1
@rna_VertexWeightProximityModifier_proximity_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_proximity_geometry, ptr @rna_VertexWeightProximityModifier_vertex_group, i32 -1, ptr @.str.865, i32 3, ptr @.str.866, ptr @.str.867, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightProximityModifier_proximity_mode_get, ptr @VertexWeightProximityModifier_proximity_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightProximityModifier_proximity_mode_items, i32 2, i32 2 }, align 8
@rna_VertexWeightProximityModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_proximity_mode, ptr null, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.487, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightProximityModifier_vertex_group_get, ptr @VertexWeightProximityModifier_vertex_group_length, ptr @VertexWeightProximityModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_VertexWeightProximityModifier_proximity_geometry = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_target, ptr @rna_VertexWeightProximityModifier_proximity_mode, i32 -1, ptr @.str.868, i32 2097155, ptr @.str.869, ptr @.str.870, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightProximityModifier_proximity_geometry_get, ptr @VertexWeightProximityModifier_proximity_geometry_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightProximityModifier_proximity_geometry_items, i32 3, i32 4 }, align 8
@.str.865 = private unnamed_addr constant [15 x i8] c"proximity_mode\00", align 1
@.str.866 = private unnamed_addr constant [15 x i8] c"Proximity Mode\00", align 1
@.str.867 = private unnamed_addr constant [40 x i8] c"Which distances to target object to use\00", align 1
@rna_VertexWeightProximityModifier_proximity_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1110, i32 0, ptr @.str.169, ptr @.str.1278 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1279, i32 0, ptr @.str.891, ptr @.str.1280 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightProximityModifier_target = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_min_dist, ptr @rna_VertexWeightProximityModifier_proximity_geometry, i32 -1, ptr @.str.606, i32 9437185, ptr @.str.871, ptr @.str.872, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightProximityModifier_target_get, ptr @VertexWeightProximityModifier_target_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.868 = private unnamed_addr constant [19 x i8] c"proximity_geometry\00", align 1
@.str.869 = private unnamed_addr constant [19 x i8] c"Proximity Geometry\00", align 1
@.str.870 = private unnamed_addr constant [73 x i8] c"Use the shortest computed distance to target object's geometry as weight\00", align 1
@rna_VertexWeightProximityModifier_proximity_geometry_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1281, i32 0, ptr @.str.1282, ptr @.str.1283 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1284, i32 0, ptr @.str.1285, ptr @.str.1286 }, %struct.EnumPropertyItem { i32 4, ptr @.str.1287, i32 0, ptr @.str.1288, ptr @.str.1289 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightProximityModifier_min_dist = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_max_dist, ptr @rna_VertexWeightProximityModifier_target, i32 -1, ptr @.str.873, i32 8195, ptr @.str.874, ptr @.str.875, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 348, i32 4, ptr null, ptr null }, ptr @VertexWeightProximityModifier_min_dist_get, ptr @VertexWeightProximityModifier_min_dist_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.871 = private unnamed_addr constant [14 x i8] c"Target Object\00", align 1
@.str.872 = private unnamed_addr constant [44 x i8] c"Object to calculate vertices distances from\00", align 1
@rna_VertexWeightProximityModifier_max_dist = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_falloff_type, ptr @rna_VertexWeightProximityModifier_min_dist, i32 -1, ptr @.str.876, i32 8195, ptr @.str.877, ptr @.str.878, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 352, i32 4, ptr null, ptr null }, ptr @VertexWeightProximityModifier_max_dist_get, ptr @VertexWeightProximityModifier_max_dist_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.873 = private unnamed_addr constant [9 x i8] c"min_dist\00", align 1
@.str.874 = private unnamed_addr constant [7 x i8] c"Lowest\00", align 1
@.str.875 = private unnamed_addr constant [31 x i8] c"Distance mapping to weight 0.0\00", align 1
@rna_VertexWeightProximityModifier_falloff_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_mask_constant, ptr @rna_VertexWeightProximityModifier_max_dist, i32 -1, ptr @.str.671, i32 3, ptr @.str.672, ptr @.str.805, i32 0, ptr @.str.54, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightProximityModifier_falloff_type_get, ptr @VertexWeightProximityModifier_falloff_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightProximityModifier_falloff_type_items, i32 7, i32 0 }, align 8
@.str.876 = private unnamed_addr constant [9 x i8] c"max_dist\00", align 1
@.str.877 = private unnamed_addr constant [8 x i8] c"Highest\00", align 1
@.str.878 = private unnamed_addr constant [31 x i8] c"Distance mapping to weight 1.0\00", align 1
@rna_VertexWeightProximityModifier_mask_constant = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_mask_vertex_group, ptr @rna_VertexWeightProximityModifier_falloff_type, i32 -1, ptr @.str.824, i32 8195, ptr @.str.825, ptr @.str.826, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 192, i32 4, ptr null, ptr null }, ptr @VertexWeightProximityModifier_mask_constant_get, ptr @VertexWeightProximityModifier_mask_constant_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@rna_VertexWeightProximityModifier_falloff_type_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1205, i32 562, ptr @.str.1206, ptr @.str.1217 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1203, i32 561, ptr @.str.1204, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.71, i32 558, ptr @.str.72, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.1201, i32 560, ptr @.str.1202, ptr @.str }, %struct.EnumPropertyItem { i32 7, ptr @.str.1219, i32 559, ptr @.str.1140, ptr @.str }, %struct.EnumPropertyItem { i32 8, ptr @.str.1220, i32 564, ptr @.str.1221, ptr @.str }, %struct.EnumPropertyItem { i32 9, ptr @.str.1222, i32 563, ptr @.str.1223, ptr @.str.1224 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightProximityModifier_mask_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_mask_texture, ptr @rna_VertexWeightProximityModifier_mask_constant, i32 -1, ptr @.str.827, i32 262145, ptr @.str.828, ptr @.str.829, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightProximityModifier_mask_vertex_group_get, ptr @VertexWeightProximityModifier_mask_vertex_group_length, ptr @VertexWeightProximityModifier_mask_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_VertexWeightProximityModifier_mask_texture = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_mask_tex_use_channel, ptr @rna_VertexWeightProximityModifier_mask_vertex_group, i32 -1, ptr @.str.830, i32 8388673, ptr @.str.831, ptr @.str.832, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightProximityModifier_mask_texture_get, ptr @VertexWeightProximityModifier_mask_texture_set, ptr null, ptr null, ptr @RNA_Texture }, align 8
@rna_VertexWeightProximityModifier_mask_tex_use_channel = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_mask_tex_mapping, ptr @rna_VertexWeightProximityModifier_mask_texture, i32 -1, ptr @.str.833, i32 3, ptr @.str.834, ptr @.str.835, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightProximityModifier_mask_tex_use_channel_get, ptr @VertexWeightProximityModifier_mask_tex_use_channel_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightProximityModifier_mask_tex_use_channel_items, i32 8, i32 1 }, align 8
@rna_VertexWeightProximityModifier_mask_tex_mapping = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_mask_tex_uv_layer, ptr @rna_VertexWeightProximityModifier_mask_tex_use_channel, i32 -1, ptr @.str.836, i32 3, ptr @.str.320, ptr @.str.837, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightProximityModifier_mask_tex_mapping_get, ptr @VertexWeightProximityModifier_mask_tex_mapping_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_VertexWeightProximityModifier_mask_tex_mapping_items, i32 4, i32 0 }, align 8
@rna_VertexWeightProximityModifier_mask_tex_use_channel_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1225, i32 0, ptr @.str.1226, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1227, i32 0, ptr @.str.1228, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.1229, i32 0, ptr @.str.1230, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.1231, i32 0, ptr @.str.1232, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.1233, i32 0, ptr @.str.1234, ptr @.str }, %struct.EnumPropertyItem { i32 6, ptr @.str.1235, i32 0, ptr @.str.1236, ptr @.str }, %struct.EnumPropertyItem { i32 7, ptr @.str.1237, i32 0, ptr @.str.1238, ptr @.str }, %struct.EnumPropertyItem { i32 8, ptr @.str.1239, i32 0, ptr @.str.1240, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightProximityModifier_mask_tex_uv_layer = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_VertexWeightProximityModifier_mask_tex_map_object, ptr @rna_VertexWeightProximityModifier_mask_tex_mapping, i32 -1, ptr @.str.838, i32 262145, ptr @.str.322, ptr @.str.323, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightProximityModifier_mask_tex_uv_layer_get, ptr @VertexWeightProximityModifier_mask_tex_uv_layer_length, ptr @VertexWeightProximityModifier_mask_tex_uv_layer_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_VertexWeightProximityModifier_mask_tex_mapping_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1104, i32 0, ptr @.str.1105, ptr @.str.1241 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1107, i32 0, ptr @.str.1108, ptr @.str.1242 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1110, i32 0, ptr @.str.169, ptr @.str.1243 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1112, i32 0, ptr @.str.1112, ptr @.str.1244 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_VertexWeightProximityModifier_mask_tex_map_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_VertexWeightProximityModifier_mask_tex_uv_layer, i32 -1, ptr @.str.839, i32 9437185, ptr @.str.325, ptr @.str.840, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_dependency_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @VertexWeightProximityModifier_mask_tex_map_object_get, ptr @VertexWeightProximityModifier_mask_tex_map_object_set, ptr null, ptr null, ptr @RNA_Object }, align 8
@RNA_DynamicPaintModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_OceanModifier, ptr @RNA_VertexWeightProximityModifier, ptr null, %struct.ListBase { ptr @rna_DynamicPaintModifier_canvas_settings, ptr @rna_DynamicPaintModifier_ui_type } }, ptr @.str.887, ptr null, ptr null, i32 4, ptr @.str.888, ptr @.str.889, ptr @.str.121, i32 476, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.879 = private unnamed_addr constant [30 x i8] c"VertexWeightProximityModifier\00", align 1
@.str.880 = private unnamed_addr constant [28 x i8] c"WeightVG Proximity Modifier\00", align 1
@.str.881 = private unnamed_addr constant [71 x i8] c"Set the weights of vertices in a group from a target object's distance\00", align 1
@rna_DynamicPaintModifier_brush_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintModifier_ui_type, ptr @rna_DynamicPaintModifier_canvas_settings, i32 -1, ptr @.str.884, i32 8388608, ptr @.str.885, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintModifier_brush_settings_get, ptr null, ptr null, ptr null, ptr @RNA_DynamicPaintBrushSettings }, align 8
@.str.882 = private unnamed_addr constant [16 x i8] c"canvas_settings\00", align 1
@.str.883 = private unnamed_addr constant [16 x i8] c"Canvas Settings\00", align 1
@rna_DynamicPaintModifier_canvas_settings = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_DynamicPaintModifier_brush_settings, ptr null, i32 -1, ptr @.str.882, i32 8388608, ptr @.str.883, ptr @.str, i32 0, ptr @.str.121, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintModifier_canvas_settings_get, ptr null, ptr null, ptr null, ptr @RNA_DynamicPaintCanvasSettings }, align 8
@rna_DynamicPaintModifier_ui_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_DynamicPaintModifier_brush_settings, i32 -1, ptr @.str.886, i32 1, ptr @.str.129, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @DynamicPaintModifier_ui_type_get, ptr @DynamicPaintModifier_ui_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_DynamicPaintModifier_ui_type_items, i32 2, i32 1 }, align 8
@.str.884 = private unnamed_addr constant [15 x i8] c"brush_settings\00", align 1
@.str.885 = private unnamed_addr constant [15 x i8] c"Brush Settings\00", align 1
@.str.886 = private unnamed_addr constant [8 x i8] c"ui_type\00", align 1
@rna_DynamicPaintModifier_ui_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1290, i32 0, ptr @.str.1291, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1292, i32 0, ptr @.str.1293, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_OceanModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_RemeshModifier, ptr @RNA_DynamicPaintModifier, ptr null, %struct.ListBase { ptr @rna_OceanModifier_geometry_mode, ptr @rna_OceanModifier_filepath } }, ptr @.str.961, ptr null, ptr null, i32 4, ptr @.str.962, ptr @.str.963, ptr @.str.121, i32 478, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.887 = private unnamed_addr constant [21 x i8] c"DynamicPaintModifier\00", align 1
@.str.888 = private unnamed_addr constant [23 x i8] c"Dynamic Paint Modifier\00", align 1
@.str.889 = private unnamed_addr constant [23 x i8] c"Dynamic Paint modifier\00", align 1
@rna_OceanModifier_size = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_repeat_x, ptr @rna_OceanModifier_geometry_mode, i32 -1, ptr @.str.484, i32 8195, ptr @.str.485, ptr @.str.893, i32 0, ptr @.str.121, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_topology_update, i32 0, ptr null, ptr null, i32 1284, i32 4, ptr null, ptr null }, ptr @OceanModifier_size_get, ptr @OceanModifier_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.890 = private unnamed_addr constant [14 x i8] c"geometry_mode\00", align 1
@.str.891 = private unnamed_addr constant [9 x i8] c"Geometry\00", align 1
@.str.892 = private unnamed_addr constant [29 x i8] c"Method of modifying geometry\00", align 1
@rna_OceanModifier_geometry_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1294, i32 0, ptr @.str.14, ptr @.str.1295 }, %struct.EnumPropertyItem { i32 1, ptr @.str.55, i32 0, ptr @.str.56, ptr @.str.1296 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_OceanModifier_geometry_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_size, ptr null, i32 -1, ptr @.str.890, i32 3, ptr @.str.891, ptr @.str.892, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OceanModifier_geometry_mode_get, ptr @OceanModifier_geometry_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_OceanModifier_geometry_mode_items, i32 2, i32 0 }, align 8
@rna_OceanModifier_repeat_x = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_repeat_y, ptr @rna_OceanModifier_size, i32 -1, ptr @.str.894, i32 8193, ptr @.str.895, ptr @.str.896, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_topology_update, i32 0, ptr null, ptr null, i32 1276, i32 1, ptr null, ptr null }, ptr @OceanModifier_repeat_x_get, ptr @OceanModifier_repeat_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 100, i32 1, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.893 = private unnamed_addr constant [63 x i8] c"Surface scale factor (does not affect the height of the waves)\00", align 1
@rna_OceanModifier_repeat_y = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_use_normals, ptr @rna_OceanModifier_repeat_x, i32 -1, ptr @.str.897, i32 8193, ptr @.str.898, ptr @.str.899, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_topology_update, i32 0, ptr null, ptr null, i32 1278, i32 1, ptr null, ptr null }, ptr @OceanModifier_repeat_y_get, ptr @OceanModifier_repeat_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 100, i32 1, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.894 = private unnamed_addr constant [9 x i8] c"repeat_x\00", align 1
@.str.895 = private unnamed_addr constant [9 x i8] c"Repeat X\00", align 1
@.str.896 = private unnamed_addr constant [42 x i8] c"Repetitions of the generated surface in X\00", align 1
@rna_OceanModifier_use_normals = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_use_foam, ptr @rna_OceanModifier_repeat_y, i32 -1, ptr @.str.900, i32 1, ptr @.str.901, ptr @.str.902, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OceanModifier_use_normals_get, ptr @OceanModifier_use_normals_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.897 = private unnamed_addr constant [9 x i8] c"repeat_y\00", align 1
@.str.898 = private unnamed_addr constant [9 x i8] c"Repeat Y\00", align 1
@.str.899 = private unnamed_addr constant [42 x i8] c"Repetitions of the generated surface in Y\00", align 1
@rna_OceanModifier_use_foam = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_resolution, ptr @rna_OceanModifier_use_normals, i32 -1, ptr @.str.903, i32 1, ptr @.str.904, ptr @.str.905, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OceanModifier_use_foam_get, ptr @OceanModifier_use_foam_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.900 = private unnamed_addr constant [12 x i8] c"use_normals\00", align 1
@.str.901 = private unnamed_addr constant [17 x i8] c"Generate Normals\00", align 1
@.str.902 = private unnamed_addr constant [87 x i8] c"Output normals for bump mapping - disabling can speed up performance if its not needed\00", align 1
@rna_OceanModifier_resolution = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_spatial_size, ptr @rna_OceanModifier_use_foam, i32 -1, ptr @.str.906, i32 8193, ptr @.str.907, ptr @.str.908, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 128, i32 0, ptr null, ptr null }, ptr @OceanModifier_resolution_get, ptr @OceanModifier_resolution_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 32, i32 1, i32 1024, i32 1, i32 0, ptr null }, align 8
@.str.903 = private unnamed_addr constant [9 x i8] c"use_foam\00", align 1
@.str.904 = private unnamed_addr constant [14 x i8] c"Generate Foam\00", align 1
@.str.905 = private unnamed_addr constant [45 x i8] c"Generate foam mask as a vertex color channel\00", align 1
@rna_OceanModifier_spatial_size = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_wind_velocity, ptr @rna_OceanModifier_resolution, i32 -1, ptr @.str.909, i32 8193, ptr @.str.910, ptr @.str.911, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 132, i32 0, ptr null, ptr null }, ptr @OceanModifier_spatial_size_get, ptr @OceanModifier_spatial_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 512, i32 -2147483648, i32 2147483647, i32 2, i32 0, ptr null }, align 8
@.str.906 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.907 = private unnamed_addr constant [11 x i8] c"Resolution\00", align 1
@.str.908 = private unnamed_addr constant [36 x i8] c"Resolution of the generated surface\00", align 1
@rna_OceanModifier_wind_velocity = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_damping, ptr @rna_OceanModifier_spatial_size, i32 -1, ptr @.str.912, i32 8195, ptr @.str.913, ptr @.str.914, i32 0, ptr @.str.121, i32 2, i32 458775, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 136, i32 4, ptr null, ptr null }, ptr @OceanModifier_wind_velocity_get, ptr @OceanModifier_wind_velocity_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.909 = private unnamed_addr constant [13 x i8] c"spatial_size\00", align 1
@.str.910 = private unnamed_addr constant [13 x i8] c"Spatial Size\00", align 1
@.str.911 = private unnamed_addr constant [81 x i8] c"Size of the simulation domain (in meters), and of the generated geometry (in BU)\00", align 1
@rna_OceanModifier_damping = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_wave_scale_min, ptr @rna_OceanModifier_wind_velocity, i32 -1, ptr @.str.915, i32 8193, ptr @.str.916, ptr @.str.917, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 140, i32 4, ptr null, ptr null }, ptr @OceanModifier_damping_get, ptr @OceanModifier_damping_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.912 = private unnamed_addr constant [14 x i8] c"wind_velocity\00", align 1
@.str.913 = private unnamed_addr constant [14 x i8] c"Wind Velocity\00", align 1
@.str.914 = private unnamed_addr constant [11 x i8] c"Wind speed\00", align 1
@rna_OceanModifier_wave_scale_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_wave_alignment, ptr @rna_OceanModifier_damping, i32 -1, ptr @.str.918, i32 8193, ptr @.str.919, ptr @.str.920, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @OceanModifier_wave_scale_min_get, ptr @OceanModifier_wave_scale_min_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.915 = private unnamed_addr constant [8 x i8] c"damping\00", align 1
@.str.916 = private unnamed_addr constant [8 x i8] c"Damping\00", align 1
@.str.917 = private unnamed_addr constant [61 x i8] c"Damp reflected waves going in opposite direction to the wind\00", align 1
@rna_OceanModifier_wave_alignment = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_wave_direction, ptr @rna_OceanModifier_wave_scale_min, i32 -1, ptr @.str.921, i32 8195, ptr @.str.922, ptr @.str.923, i32 0, ptr @.str.121, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 152, i32 4, ptr null, ptr null }, ptr @OceanModifier_wave_alignment_get, ptr @OceanModifier_wave_alignment_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 1.000000e+01, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.918 = private unnamed_addr constant [15 x i8] c"wave_scale_min\00", align 1
@.str.919 = private unnamed_addr constant [14 x i8] c"Smallest Wave\00", align 1
@.str.920 = private unnamed_addr constant [28 x i8] c"Shortest allowed wavelength\00", align 1
@rna_OceanModifier_wave_direction = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_wave_scale, ptr @rna_OceanModifier_wave_alignment, i32 -1, ptr @.str.924, i32 8193, ptr @.str.925, ptr @.str.926, i32 0, ptr @.str.121, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 156, i32 4, ptr null, ptr null }, ptr @OceanModifier_wave_direction_get, ptr @OceanModifier_wave_direction_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.921 = private unnamed_addr constant [15 x i8] c"wave_alignment\00", align 1
@.str.922 = private unnamed_addr constant [15 x i8] c"Wave Alignment\00", align 1
@.str.923 = private unnamed_addr constant [45 x i8] c"How much the waves are aligned to each other\00", align 1
@rna_OceanModifier_wave_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_depth, ptr @rna_OceanModifier_wave_direction, i32 -1, ptr @.str.927, i32 8195, ptr @.str.928, ptr @.str.929, i32 0, ptr @.str.121, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_sim_update, i32 0, ptr null, ptr null, i32 160, i32 4, ptr null, ptr null }, ptr @OceanModifier_wave_scale_get, ptr @OceanModifier_wave_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+04, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.924 = private unnamed_addr constant [15 x i8] c"wave_direction\00", align 1
@.str.925 = private unnamed_addr constant [15 x i8] c"Wave Direction\00", align 1
@.str.926 = private unnamed_addr constant [62 x i8] c"Main direction of the waves when they are (partially) aligned\00", align 1
@rna_OceanModifier_depth = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_foam_coverage, ptr @rna_OceanModifier_wave_scale, i32 -1, ptr @.str.930, i32 8193, ptr @.str.931, ptr @.str.932, i32 0, ptr @.str.121, i32 2, i32 65554, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @OceanModifier_depth_get, ptr @OceanModifier_depth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.500000e+02, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.927 = private unnamed_addr constant [11 x i8] c"wave_scale\00", align 1
@.str.928 = private unnamed_addr constant [11 x i8] c"Wave Scale\00", align 1
@.str.929 = private unnamed_addr constant [33 x i8] c"Scale of the displacement effect\00", align 1
@rna_OceanModifier_foam_coverage = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_bake_foam_fade, ptr @rna_OceanModifier_depth, i32 -1, ptr @.str.933, i32 8195, ptr @.str.934, ptr @.str.935, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 168, i32 4, ptr null, ptr null }, ptr @OceanModifier_foam_coverage_get, ptr @OceanModifier_foam_coverage_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.930 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.931 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.932 = private unnamed_addr constant [50 x i8] c"Depth of the solid ground below the water surface\00", align 1
@rna_OceanModifier_bake_foam_fade = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_foam_layer_name, ptr @rna_OceanModifier_foam_coverage, i32 -1, ptr @.str.936, i32 8193, ptr @.str.937, ptr @.str.938, i32 0, ptr @.str.121, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 1288, i32 4, ptr null, ptr null }, ptr @OceanModifier_bake_foam_fade_get, ptr @OceanModifier_bake_foam_fade_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+01, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.933 = private unnamed_addr constant [14 x i8] c"foam_coverage\00", align 1
@.str.934 = private unnamed_addr constant [14 x i8] c"Foam Coverage\00", align 1
@.str.935 = private unnamed_addr constant [25 x i8] c"Amount of generated foam\00", align 1
@rna_OceanModifier_foam_layer_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_choppiness, ptr @rna_OceanModifier_bake_foam_fade, i32 -1, ptr @.str.939, i32 262145, ptr @.str.940, ptr @.str.941, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OceanModifier_foam_layer_name_get, ptr @OceanModifier_foam_layer_name_length, ptr @OceanModifier_foam_layer_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@.str.936 = private unnamed_addr constant [15 x i8] c"bake_foam_fade\00", align 1
@.str.937 = private unnamed_addr constant [10 x i8] c"Foam Fade\00", align 1
@.str.938 = private unnamed_addr constant [55 x i8] c"How much foam accumulates over time (baked ocean only)\00", align 1
@rna_OceanModifier_choppiness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_time, ptr @rna_OceanModifier_foam_layer_name, i32 -1, ptr @.str.942, i32 3, ptr @.str.943, ptr @.str.944, i32 0, ptr @.str.121, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_sim_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OceanModifier_choppiness_get, ptr @OceanModifier_choppiness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 4.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 3.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.939 = private unnamed_addr constant [16 x i8] c"foam_layer_name\00", align 1
@.str.940 = private unnamed_addr constant [16 x i8] c"Foam Layer Name\00", align 1
@.str.941 = private unnamed_addr constant [45 x i8] c"Name of the vertex color layer used for foam\00", align 1
@rna_OceanModifier_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_random_seed, ptr @rna_OceanModifier_choppiness, i32 -1, ptr @.str.945, i32 8195, ptr @.str.946, ptr @.str.947, i32 0, ptr @.str.121, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_sim_update, i32 0, ptr null, ptr null, i32 172, i32 4, ptr null, ptr null }, ptr @OceanModifier_time_get, ptr @OceanModifier_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@.str.942 = private unnamed_addr constant [11 x i8] c"choppiness\00", align 1
@.str.943 = private unnamed_addr constant [11 x i8] c"Choppiness\00", align 1
@.str.944 = private unnamed_addr constant [84 x i8] c"Choppiness of the wave's crest (adds some horizontal component to the displacement)\00", align 1
@rna_OceanModifier_random_seed = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_frame_start, ptr @rna_OceanModifier_time, i32 -1, ptr @.str.948, i32 8193, ptr @.str.949, ptr @.str.950, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 1280, i32 0, ptr null, ptr null }, ptr @OceanModifier_random_seed_get, ptr @OceanModifier_random_seed_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.945 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.946 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.947 = private unnamed_addr constant [31 x i8] c"Current time of the simulation\00", align 1
@rna_OceanModifier_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_frame_end, ptr @rna_OceanModifier_random_seed, i32 -1, ptr @.str.187, i32 8193, ptr @.str.951, ptr @.str.952, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 176, i32 0, ptr null, ptr null }, ptr @OceanModifier_frame_start_get, ptr @OceanModifier_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.948 = private unnamed_addr constant [12 x i8] c"random_seed\00", align 1
@.str.949 = private unnamed_addr constant [12 x i8] c"Random Seed\00", align 1
@.str.950 = private unnamed_addr constant [29 x i8] c"Seed of the random generator\00", align 1
@rna_OceanModifier_frame_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_is_cached, ptr @rna_OceanModifier_frame_start, i32 -1, ptr @.str.953, i32 8193, ptr @.str.954, ptr @.str.955, i32 0, ptr @.str.121, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_OceanModifier_init_update, i32 0, ptr null, ptr null, i32 180, i32 0, ptr null, ptr null }, ptr @OceanModifier_frame_end_get, ptr @OceanModifier_frame_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.951 = private unnamed_addr constant [11 x i8] c"Bake Start\00", align 1
@.str.952 = private unnamed_addr constant [32 x i8] c"Start frame of the ocean baking\00", align 1
@rna_OceanModifier_is_cached = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_OceanModifier_filepath, ptr @rna_OceanModifier_frame_end, i32 -1, ptr @.str.956, i32 2, ptr @.str.957, ptr @.str.958, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OceanModifier_is_cached_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.953 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@.str.954 = private unnamed_addr constant [9 x i8] c"Bake End\00", align 1
@.str.955 = private unnamed_addr constant [30 x i8] c"End frame of the ocean baking\00", align 1
@rna_OceanModifier_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_OceanModifier_is_cached, i32 -1, ptr @.str.694, i32 262145, ptr @.str.959, ptr @.str.960, i32 0, ptr @.str.121, i32 3, i32 2, ptr null, i32 0, [3 x i32] [i32 1024, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OceanModifier_filepath_get, ptr @OceanModifier_filepath_length, ptr @OceanModifier_filepath_set, ptr null, ptr null, ptr null, i32 1024, ptr @.str }, align 8
@.str.956 = private unnamed_addr constant [10 x i8] c"is_cached\00", align 1
@.str.957 = private unnamed_addr constant [16 x i8] c"Ocean is Cached\00", align 1
@.str.958 = private unnamed_addr constant [53 x i8] c"Whether the ocean is using cached data or simulating\00", align 1
@.str.959 = private unnamed_addr constant [11 x i8] c"Cache Path\00", align 1
@.str.960 = private unnamed_addr constant [48 x i8] c"Path to a folder to store external baked images\00", align 1
@RNA_RemeshModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_SkinModifier, ptr @RNA_OceanModifier, ptr null, %struct.ListBase { ptr @rna_RemeshModifier_mode, ptr @rna_RemeshModifier_use_smooth_shade } }, ptr @.str.978, ptr null, ptr null, i32 4, ptr @.str.979, ptr @.str.980, ptr @.str.121, i32 477, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.961 = private unnamed_addr constant [14 x i8] c"OceanModifier\00", align 1
@.str.962 = private unnamed_addr constant [15 x i8] c"Ocean Modifier\00", align 1
@.str.963 = private unnamed_addr constant [26 x i8] c"Simulate an ocean surface\00", align 1
@rna_RemeshModifier_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RemeshModifier_threshold, ptr @rna_RemeshModifier_mode, i32 -1, ptr @.str.964, i32 8195, ptr @.str.965, ptr @.str.966, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 116, i32 4, ptr null, ptr null }, ptr @RemeshModifier_scale_get, ptr @RemeshModifier_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x3FEFAE1480000000, float 0.000000e+00, float 0x3FEFAE1480000000, float 0x3F847AE140000000, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_RemeshModifier_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1297, i32 0, ptr @.str.1298, ptr @.str.1299 }, %struct.EnumPropertyItem { i32 1, ptr @.str.71, i32 0, ptr @.str.72, ptr @.str.1300 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1203, i32 0, ptr @.str.1204, ptr @.str.1301 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_RemeshModifier_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_RemeshModifier_scale, ptr null, i32 -1, ptr @.str.639, i32 3, ptr @.str.238, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RemeshModifier_mode_get, ptr @RemeshModifier_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_RemeshModifier_mode_items, i32 3, i32 0 }, align 8
@rna_RemeshModifier_threshold = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RemeshModifier_octree_depth, ptr @rna_RemeshModifier_scale, i32 -1, ptr @.str.967, i32 8195, ptr @.str.968, ptr @.str.969, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @RemeshModifier_threshold_get, ptr @RemeshModifier_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.964 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.965 = private unnamed_addr constant [6 x i8] c"Scale\00", align 1
@.str.966 = private unnamed_addr constant [74 x i8] c"The ratio of the largest dimension of the model over the size of the grid\00", align 1
@rna_RemeshModifier_octree_depth = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_RemeshModifier_sharpness, ptr @rna_RemeshModifier_threshold, i32 -1, ptr @.str.970, i32 8195, ptr @.str.971, ptr @.str.972, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 124, i32 2, ptr null, ptr null }, ptr @RemeshModifier_octree_depth_get, ptr @RemeshModifier_octree_depth_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 12, i32 1, i32 12, i32 1, i32 0, ptr null }, align 8
@.str.967 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.968 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.969 = private unnamed_addr constant [134 x i8] c"If removing disconnected pieces, minimum size of components to preserve as a ratio of the number of polygons in the largest component\00", align 1
@rna_RemeshModifier_sharpness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_RemeshModifier_use_remove_disconnected, ptr @rna_RemeshModifier_octree_depth, i32 -1, ptr @.str.973, i32 8195, ptr @.str.974, ptr @.str.975, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 120, i32 4, ptr null, ptr null }, ptr @RemeshModifier_sharpness_get, ptr @RemeshModifier_sharpness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.970 = private unnamed_addr constant [13 x i8] c"octree_depth\00", align 1
@.str.971 = private unnamed_addr constant [13 x i8] c"Octree Depth\00", align 1
@.str.972 = private unnamed_addr constant [59 x i8] c"Resolution of the octree; higher values give finer details\00", align 1
@rna_RemeshModifier_use_remove_disconnected = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_RemeshModifier_use_smooth_shade, ptr @rna_RemeshModifier_sharpness, i32 -1, ptr @.str.976, i32 3, ptr @.str.977, ptr @.str, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RemeshModifier_use_remove_disconnected_get, ptr @RemeshModifier_use_remove_disconnected_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.973 = private unnamed_addr constant [10 x i8] c"sharpness\00", align 1
@.str.974 = private unnamed_addr constant [10 x i8] c"Sharpness\00", align 1
@.str.975 = private unnamed_addr constant [111 x i8] c"Tolerance for outliers; lower values filter noise while higher values will reproduce edges closer to the input\00", align 1
@rna_RemeshModifier_use_smooth_shade = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_RemeshModifier_use_remove_disconnected, i32 -1, ptr @.str.778, i32 3, ptr @.str.779, ptr @.str.780, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @RemeshModifier_use_smooth_shade_get, ptr @RemeshModifier_use_smooth_shade_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.976 = private unnamed_addr constant [24 x i8] c"use_remove_disconnected\00", align 1
@.str.977 = private unnamed_addr constant [27 x i8] c"Remove Disconnected Pieces\00", align 1
@RNA_SkinModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LaplacianSmoothModifier, ptr @RNA_RemeshModifier, ptr null, %struct.ListBase { ptr @rna_SkinModifier_branch_smoothing, ptr @rna_SkinModifier_use_z_symmetry } }, ptr @.str.990, ptr null, ptr null, i32 4, ptr @.str.991, ptr @.str.992, ptr @.str.121, i32 480, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.978 = private unnamed_addr constant [15 x i8] c"RemeshModifier\00", align 1
@.str.979 = private unnamed_addr constant [16 x i8] c"Remesh Modifier\00", align 1
@.str.980 = private unnamed_addr constant [86 x i8] c"Generate a new surface with regular topology that follows the shape of the input mesh\00", align 1
@rna_SkinModifier_use_smooth_shade = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SkinModifier_use_x_symmetry, ptr @rna_SkinModifier_branch_smoothing, i32 -1, ptr @.str.778, i32 3, ptr @.str.779, ptr @.str.780, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SkinModifier_use_smooth_shade_get, ptr @SkinModifier_use_smooth_shade_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.981 = private unnamed_addr constant [17 x i8] c"branch_smoothing\00", align 1
@.str.982 = private unnamed_addr constant [17 x i8] c"Branch Smoothing\00", align 1
@.str.983 = private unnamed_addr constant [40 x i8] c"Smooth complex geometry around branches\00", align 1
@rna_SkinModifier_branch_smoothing = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_SkinModifier_use_smooth_shade, ptr null, i32 -1, ptr @.str.981, i32 8195, ptr @.str.982, ptr @.str.983, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @SkinModifier_branch_smoothing_get, ptr @SkinModifier_branch_smoothing_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, i32 -1, float 0.000000e+00, ptr null }, align 8
@rna_SkinModifier_use_x_symmetry = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SkinModifier_use_y_symmetry, ptr @rna_SkinModifier_use_smooth_shade, i32 -1, ptr @.str.984, i32 3, ptr @.str.206, ptr @.str.985, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SkinModifier_use_x_symmetry_get, ptr @SkinModifier_use_x_symmetry_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_SkinModifier_use_y_symmetry = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_SkinModifier_use_z_symmetry, ptr @rna_SkinModifier_use_x_symmetry, i32 -1, ptr @.str.986, i32 3, ptr @.str.209, ptr @.str.987, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SkinModifier_use_y_symmetry_get, ptr @SkinModifier_use_y_symmetry_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.984 = private unnamed_addr constant [15 x i8] c"use_x_symmetry\00", align 1
@.str.985 = private unnamed_addr constant [51 x i8] c"Avoid making unsymmetrical quads across the X axis\00", align 1
@rna_SkinModifier_use_z_symmetry = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_SkinModifier_use_y_symmetry, i32 -1, ptr @.str.988, i32 3, ptr @.str.212, ptr @.str.989, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @SkinModifier_use_z_symmetry_get, ptr @SkinModifier_use_z_symmetry_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.986 = private unnamed_addr constant [15 x i8] c"use_y_symmetry\00", align 1
@.str.987 = private unnamed_addr constant [51 x i8] c"Avoid making unsymmetrical quads across the Y axis\00", align 1
@.str.988 = private unnamed_addr constant [15 x i8] c"use_z_symmetry\00", align 1
@.str.989 = private unnamed_addr constant [51 x i8] c"Avoid making unsymmetrical quads across the Z axis\00", align 1
@RNA_LaplacianSmoothModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_TriangulateModifier, ptr @RNA_SkinModifier, ptr null, %struct.ListBase { ptr @rna_LaplacianSmoothModifier_use_x, ptr @rna_LaplacianSmoothModifier_vertex_group } }, ptr @.str.1003, ptr null, ptr null, i32 4, ptr @.str.1004, ptr @.str.470, ptr @.str.121, i32 465, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.990 = private unnamed_addr constant [13 x i8] c"SkinModifier\00", align 1
@.str.991 = private unnamed_addr constant [14 x i8] c"Skin Modifier\00", align 1
@.str.992 = private unnamed_addr constant [14 x i8] c"Generate Skin\00", align 1
@rna_LaplacianSmoothModifier_use_y = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LaplacianSmoothModifier_use_z, ptr @rna_LaplacianSmoothModifier_use_x, i32 -1, ptr @.str.208, i32 3, ptr @.str.209, ptr @.str.463, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LaplacianSmoothModifier_use_y_get, ptr @LaplacianSmoothModifier_use_y_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LaplacianSmoothModifier_use_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LaplacianSmoothModifier_use_y, ptr null, i32 -1, ptr @.str.205, i32 3, ptr @.str.206, ptr @.str.462, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LaplacianSmoothModifier_use_x_get, ptr @LaplacianSmoothModifier_use_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LaplacianSmoothModifier_use_z = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LaplacianSmoothModifier_use_volume_preserve, ptr @rna_LaplacianSmoothModifier_use_y, i32 -1, ptr @.str.211, i32 3, ptr @.str.212, ptr @.str.464, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LaplacianSmoothModifier_use_z_get, ptr @LaplacianSmoothModifier_use_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LaplacianSmoothModifier_use_volume_preserve = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LaplacianSmoothModifier_use_normalized, ptr @rna_LaplacianSmoothModifier_use_z, i32 -1, ptr @.str.677, i32 3, ptr @.str.338, ptr @.str.993, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LaplacianSmoothModifier_use_volume_preserve_get, ptr @LaplacianSmoothModifier_use_volume_preserve_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_LaplacianSmoothModifier_use_normalized = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_LaplacianSmoothModifier_lambda_factor, ptr @rna_LaplacianSmoothModifier_use_volume_preserve, i32 -1, ptr @.str.994, i32 3, ptr @.str.995, ptr @.str.996, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LaplacianSmoothModifier_use_normalized_get, ptr @LaplacianSmoothModifier_use_normalized_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.993 = private unnamed_addr constant [39 x i8] c"Apply volume preservation after smooth\00", align 1
@rna_LaplacianSmoothModifier_lambda_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LaplacianSmoothModifier_lambda_border, ptr @rna_LaplacianSmoothModifier_use_normalized, i32 -1, ptr @.str.997, i32 8195, ptr @.str.998, ptr @.str.999, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 112, i32 4, ptr null, ptr null }, ptr @LaplacianSmoothModifier_lambda_factor_get, ptr @LaplacianSmoothModifier_lambda_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 5.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.994 = private unnamed_addr constant [15 x i8] c"use_normalized\00", align 1
@.str.995 = private unnamed_addr constant [11 x i8] c"Normalized\00", align 1
@.str.996 = private unnamed_addr constant [41 x i8] c"Improve and stabilize the enhanced shape\00", align 1
@rna_LaplacianSmoothModifier_lambda_border = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_LaplacianSmoothModifier_iterations, ptr @rna_LaplacianSmoothModifier_lambda_factor, i32 -1, ptr @.str.1000, i32 8195, ptr @.str.1001, ptr @.str.1002, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 116, i32 4, ptr null, ptr null }, ptr @LaplacianSmoothModifier_lambda_border_get, ptr @LaplacianSmoothModifier_lambda_border_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+03, float 1.000000e+03, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 5.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.997 = private unnamed_addr constant [14 x i8] c"lambda_factor\00", align 1
@.str.998 = private unnamed_addr constant [14 x i8] c"Lambda Factor\00", align 1
@.str.999 = private unnamed_addr constant [21 x i8] c"Smooth factor effect\00", align 1
@rna_LaplacianSmoothModifier_iterations = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_LaplacianSmoothModifier_vertex_group, ptr @rna_LaplacianSmoothModifier_lambda_border, i32 -1, ptr @.str.242, i32 8195, ptr @.str.467, ptr @.str, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 190, i32 1, ptr null, ptr null }, ptr @LaplacianSmoothModifier_iterations_get, ptr @LaplacianSmoothModifier_iterations_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 200, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.1000 = private unnamed_addr constant [14 x i8] c"lambda_border\00", align 1
@.str.1001 = private unnamed_addr constant [14 x i8] c"Lambda Border\00", align 1
@.str.1002 = private unnamed_addr constant [24 x i8] c"Lambda factor in border\00", align 1
@rna_LaplacianSmoothModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LaplacianSmoothModifier_iterations, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.173, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LaplacianSmoothModifier_vertex_group_get, ptr @LaplacianSmoothModifier_vertex_group_length, ptr @LaplacianSmoothModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@RNA_TriangulateModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_MeshCacheModifier, ptr @RNA_LaplacianSmoothModifier, ptr null, %struct.ListBase { ptr @rna_TriangulateModifier_quad_method, ptr @rna_TriangulateModifier_ngon_method } }, ptr @.str.1011, ptr null, ptr null, i32 4, ptr @.str.1012, ptr @.str.1013, ptr @.str.121, i32 481, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.1003 = private unnamed_addr constant [24 x i8] c"LaplacianSmoothModifier\00", align 1
@.str.1004 = private unnamed_addr constant [26 x i8] c"Laplacian Smooth Modifier\00", align 1
@rna_TriangulateModifier_ngon_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_TriangulateModifier_quad_method, i32 -1, ptr @.str.1008, i32 3, ptr @.str.1009, ptr @.str.1010, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TriangulateModifier_ngon_method_get, ptr @TriangulateModifier_ngon_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TriangulateModifier_ngon_method_items, i32 2, i32 0 }, align 8
@.str.1005 = private unnamed_addr constant [12 x i8] c"quad_method\00", align 1
@.str.1006 = private unnamed_addr constant [12 x i8] c"Quad Method\00", align 1
@.str.1007 = private unnamed_addr constant [46 x i8] c"Method for splitting the quads into triangles\00", align 1
@rna_TriangulateModifier_quad_method_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.100, i32 0, ptr @.str.101, ptr @.str.102 }, %struct.EnumPropertyItem { i32 1, ptr @.str.103, i32 0, ptr @.str.104, ptr @.str.105 }, %struct.EnumPropertyItem { i32 2, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.108 }, %struct.EnumPropertyItem { i32 3, ptr @.str.109, i32 0, ptr @.str.110, ptr @.str.111 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_TriangulateModifier_quad_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_TriangulateModifier_ngon_method, ptr null, i32 -1, ptr @.str.1005, i32 3, ptr @.str.1006, ptr @.str.1007, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @TriangulateModifier_quad_method_get, ptr @TriangulateModifier_quad_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_TriangulateModifier_quad_method_items, i32 4, i32 0 }, align 8
@.str.1008 = private unnamed_addr constant [12 x i8] c"ngon_method\00", align 1
@.str.1009 = private unnamed_addr constant [15 x i8] c"Polygon Method\00", align 1
@.str.1010 = private unnamed_addr constant [49 x i8] c"Method for splitting the polygons into triangles\00", align 1
@rna_TriangulateModifier_ngon_method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.100, i32 0, ptr @.str.112, ptr @.str.113 }, %struct.EnumPropertyItem { i32 1, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.116 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_MeshCacheModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_LaplacianDeformModifier, ptr @RNA_TriangulateModifier, ptr null, %struct.ListBase { ptr @rna_MeshCacheModifier_cache_format, ptr @rna_MeshCacheModifier_eval_factor } }, ptr @.str.1043, ptr null, ptr null, i32 4, ptr @.str.1044, ptr @.str.1045, ptr @.str.121, i32 463, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.1011 = private unnamed_addr constant [20 x i8] c"TriangulateModifier\00", align 1
@.str.1012 = private unnamed_addr constant [21 x i8] c"Triangulate Modifier\00", align 1
@.str.1013 = private unnamed_addr constant [17 x i8] c"Triangulate Mesh\00", align 1
@rna_MeshCacheModifier_interpolation = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_time_mode, ptr @rna_MeshCacheModifier_cache_format, i32 -1, ptr @.str.1016, i32 3, ptr @.str.1017, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshCacheModifier_interpolation_get, ptr @MeshCacheModifier_interpolation_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MeshCacheModifier_interpolation_items, i32 2, i32 0 }, align 8
@.str.1014 = private unnamed_addr constant [13 x i8] c"cache_format\00", align 1
@.str.1015 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@rna_MeshCacheModifier_cache_format_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.1302, i32 0, ptr @.str.1303, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1304, i32 0, ptr @.str.1304, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MeshCacheModifier_cache_format = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_interpolation, ptr null, i32 -1, ptr @.str.1014, i32 3, ptr @.str.1015, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshCacheModifier_cache_format_get, ptr @MeshCacheModifier_cache_format_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MeshCacheModifier_cache_format_items, i32 2, i32 1 }, align 8
@rna_MeshCacheModifier_time_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_play_mode, ptr @rna_MeshCacheModifier_interpolation, i32 -1, ptr @.str.1018, i32 3, ptr @.str.1019, ptr @.str.1020, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshCacheModifier_time_mode_get, ptr @MeshCacheModifier_time_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MeshCacheModifier_time_mode_items, i32 3, i32 0 }, align 8
@.str.1016 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@.str.1017 = private unnamed_addr constant [14 x i8] c"Interpolation\00", align 1
@rna_MeshCacheModifier_interpolation_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1145, i32 0, ptr @.str.1305, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.1205, i32 0, ptr @.str.1206, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MeshCacheModifier_play_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_deform_mode, ptr @rna_MeshCacheModifier_time_mode, i32 -1, ptr @.str.1021, i32 3, ptr @.str.1019, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshCacheModifier_play_mode_get, ptr @MeshCacheModifier_play_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MeshCacheModifier_play_mode_items, i32 2, i32 0 }, align 8
@.str.1018 = private unnamed_addr constant [10 x i8] c"time_mode\00", align 1
@.str.1019 = private unnamed_addr constant [10 x i8] c"Time Mode\00", align 1
@.str.1020 = private unnamed_addr constant [32 x i8] c"Method to control playback time\00", align 1
@rna_MeshCacheModifier_time_mode_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1306, i32 0, ptr @.str.1307, ptr @.str.1308 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1309, i32 0, ptr @.str.946, ptr @.str.1310 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1311, i32 0, ptr @.str.466, ptr @.str.1312 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MeshCacheModifier_deform_mode = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_filepath, ptr @rna_MeshCacheModifier_play_mode, i32 -1, ptr @.str.1022, i32 3, ptr @.str.1023, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshCacheModifier_deform_mode_get, ptr @MeshCacheModifier_deform_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MeshCacheModifier_deform_mode_items, i32 2, i32 0 }, align 8
@.str.1021 = private unnamed_addr constant [10 x i8] c"play_mode\00", align 1
@rna_MeshCacheModifier_play_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1313, i32 0, ptr @.str.1314, ptr @.str.1315 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1316, i32 0, ptr @.str.1317, ptr @.str.1318 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MeshCacheModifier_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_factor, ptr @rna_MeshCacheModifier_deform_mode, i32 -1, ptr @.str.694, i32 262145, ptr @.str.695, ptr @.str.696, i32 0, ptr @.str.121, i32 3, i32 1, ptr null, i32 0, [3 x i32] [i32 1024, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshCacheModifier_filepath_get, ptr @MeshCacheModifier_filepath_length, ptr @MeshCacheModifier_filepath_set, ptr null, ptr null, ptr null, i32 1024, ptr @.str }, align 8
@.str.1022 = private unnamed_addr constant [12 x i8] c"deform_mode\00", align 1
@.str.1023 = private unnamed_addr constant [12 x i8] c"Deform Mode\00", align 1
@rna_MeshCacheModifier_deform_mode_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1319, i32 0, ptr @.str.1320, ptr @.str.1321 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1322, i32 0, ptr @.str.1323, ptr @.str.1324 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MeshCacheModifier_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_forward_axis, ptr @rna_MeshCacheModifier_filepath, i32 -1, ptr @.str.465, i32 8195, ptr @.str.825, ptr @.str.1024, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 120, i32 4, ptr null, ptr null }, ptr @MeshCacheModifier_factor_get, ptr @MeshCacheModifier_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_MeshCacheModifier_forward_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_up_axis, ptr @rna_MeshCacheModifier_factor, i32 -1, ptr @.str.1025, i32 3, ptr @.str.1026, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshCacheModifier_forward_axis_get, ptr @MeshCacheModifier_forward_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MeshCacheModifier_forward_axis_items, i32 6, i32 0 }, align 8
@.str.1024 = private unnamed_addr constant [29 x i8] c"Influence of the deformation\00", align 1
@rna_MeshCacheModifier_up_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_flip_axis, ptr @rna_MeshCacheModifier_forward_axis, i32 -1, ptr @.str.1027, i32 3, ptr @.str.1028, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshCacheModifier_up_axis_get, ptr @MeshCacheModifier_up_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MeshCacheModifier_up_axis_items, i32 6, i32 0 }, align 8
@.str.1025 = private unnamed_addr constant [13 x i8] c"forward_axis\00", align 1
@.str.1026 = private unnamed_addr constant [8 x i8] c"Forward\00", align 1
@rna_MeshCacheModifier_forward_axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1079, i32 0, ptr @.str.1325, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.1080, i32 0, ptr @.str.1326, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1081, i32 0, ptr @.str.1327, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.1082, i32 0, ptr @.str.1083, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.1084, i32 0, ptr @.str.1085, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.1086, i32 0, ptr @.str.1087, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MeshCacheModifier_flip_axis = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_frame_start, ptr @rna_MeshCacheModifier_up_axis, i32 -1, ptr @.str.1029, i32 2097155, ptr @.str.1030, ptr @.str, i32 0, ptr @.str.121, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @MeshCacheModifier_flip_axis_get, ptr @MeshCacheModifier_flip_axis_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_MeshCacheModifier_flip_axis_items, i32 3, i32 1 }, align 8
@.str.1027 = private unnamed_addr constant [8 x i8] c"up_axis\00", align 1
@.str.1028 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@rna_MeshCacheModifier_up_axis_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1079, i32 0, ptr @.str.1325, ptr @.str }, %struct.EnumPropertyItem { i32 1, ptr @.str.1080, i32 0, ptr @.str.1326, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.1081, i32 0, ptr @.str.1327, ptr @.str }, %struct.EnumPropertyItem { i32 3, ptr @.str.1082, i32 0, ptr @.str.1083, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.1084, i32 0, ptr @.str.1085, ptr @.str }, %struct.EnumPropertyItem { i32 5, ptr @.str.1086, i32 0, ptr @.str.1087, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MeshCacheModifier_frame_start = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_frame_scale, ptr @rna_MeshCacheModifier_flip_axis, i32 -1, ptr @.str.187, i32 8195, ptr @.str.1031, ptr @.str.1032, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 132, i32 4, ptr null, ptr null }, ptr @MeshCacheModifier_frame_start_get, ptr @MeshCacheModifier_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -3.000000e+05, float 3.000000e+05, float -3.000000e+05, float 3.000000e+05, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.1029 = private unnamed_addr constant [10 x i8] c"flip_axis\00", align 1
@.str.1030 = private unnamed_addr constant [10 x i8] c"Flip Axis\00", align 1
@rna_MeshCacheModifier_flip_axis_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.206, i32 0, ptr @.str.206, ptr @.str }, %struct.EnumPropertyItem { i32 2, ptr @.str.209, i32 0, ptr @.str.209, ptr @.str }, %struct.EnumPropertyItem { i32 4, ptr @.str.212, i32 0, ptr @.str.212, ptr @.str }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_MeshCacheModifier_frame_scale = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_eval_frame, ptr @rna_MeshCacheModifier_frame_start, i32 -1, ptr @.str.1033, i32 8195, ptr @.str.1034, ptr @.str.1035, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 136, i32 4, ptr null, ptr null }, ptr @MeshCacheModifier_frame_scale_get, ptr @MeshCacheModifier_frame_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+02, float 0.000000e+00, float 1.000000e+02, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.1031 = private unnamed_addr constant [12 x i8] c"Frame Start\00", align 1
@.str.1032 = private unnamed_addr constant [28 x i8] c"Add this to the start frame\00", align 1
@rna_MeshCacheModifier_eval_frame = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_eval_time, ptr @rna_MeshCacheModifier_frame_scale, i32 -1, ptr @.str.1036, i32 8195, ptr @.str.1037, ptr @.str.1038, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 140, i32 4, ptr null, ptr null }, ptr @MeshCacheModifier_eval_frame_get, ptr @MeshCacheModifier_eval_frame_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 3.000000e+05, float 0.000000e+00, float 3.000000e+05, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.1033 = private unnamed_addr constant [12 x i8] c"frame_scale\00", align 1
@.str.1034 = private unnamed_addr constant [12 x i8] c"Frame Scale\00", align 1
@.str.1035 = private unnamed_addr constant [27 x i8] c"Evaluation time in seconds\00", align 1
@rna_MeshCacheModifier_eval_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_MeshCacheModifier_eval_factor, ptr @rna_MeshCacheModifier_eval_frame, i32 -1, ptr @.str.1039, i32 8195, ptr @.str.1040, ptr @.str.1035, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 144, i32 4, ptr null, ptr null }, ptr @MeshCacheModifier_eval_time_get, ptr @MeshCacheModifier_eval_time_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.1036 = private unnamed_addr constant [11 x i8] c"eval_frame\00", align 1
@.str.1037 = private unnamed_addr constant [17 x i8] c"Evaluation Frame\00", align 1
@.str.1038 = private unnamed_addr constant [38 x i8] c"The frame to evaluate (starting at 0)\00", align 1
@rna_MeshCacheModifier_eval_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_MeshCacheModifier_eval_time, i32 -1, ptr @.str.1041, i32 8195, ptr @.str.1042, ptr @.str.1035, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 148, i32 4, ptr null, ptr null }, ptr @MeshCacheModifier_eval_factor_get, ptr @MeshCacheModifier_eval_factor_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.1039 = private unnamed_addr constant [10 x i8] c"eval_time\00", align 1
@.str.1040 = private unnamed_addr constant [16 x i8] c"Evaluation Time\00", align 1
@.str.1041 = private unnamed_addr constant [12 x i8] c"eval_factor\00", align 1
@.str.1042 = private unnamed_addr constant [18 x i8] c"Evaluation Factor\00", align 1
@RNA_LaplacianDeformModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_WireframeModifier, ptr @RNA_MeshCacheModifier, ptr null, %struct.ListBase { ptr @rna_LaplacianDeformModifier_vertex_group, ptr @rna_LaplacianDeformModifier_is_bind } }, ptr @.str.1050, ptr null, ptr null, i32 4, ptr @.str.1051, ptr @.str.1052, ptr @.str.121, i32 463, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.1043 = private unnamed_addr constant [18 x i8] c"MeshCacheModifier\00", align 1
@.str.1044 = private unnamed_addr constant [15 x i8] c"Cache Modifier\00", align 1
@.str.1045 = private unnamed_addr constant [11 x i8] c"Cache Mesh\00", align 1
@rna_LaplacianDeformModifier_iterations = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_LaplacianDeformModifier_is_bind, ptr @rna_LaplacianDeformModifier_vertex_group, i32 -1, ptr @.str.242, i32 8195, ptr @.str.467, ptr @.str, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 180, i32 0, ptr null, ptr null }, ptr @LaplacianDeformModifier_iterations_get, ptr @LaplacianDeformModifier_iterations_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 50, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.1046 = private unnamed_addr constant [25 x i8] c"Vertex Group for Anchors\00", align 1
@.str.1047 = private unnamed_addr constant [46 x i8] c"Name of Vertex Group which determines Anchors\00", align 1
@rna_LaplacianDeformModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_LaplacianDeformModifier_iterations, ptr null, i32 -1, ptr @.str.171, i32 262145, ptr @.str.1046, ptr @.str.1047, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LaplacianDeformModifier_vertex_group_get, ptr @LaplacianDeformModifier_vertex_group_length, ptr @LaplacianDeformModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_LaplacianDeformModifier_is_bind = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_LaplacianDeformModifier_iterations, i32 -1, ptr @.str.1048, i32 2, ptr @.str.493, ptr @.str.1049, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @LaplacianDeformModifier_is_bind_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.1048 = private unnamed_addr constant [8 x i8] c"is_bind\00", align 1
@.str.1049 = private unnamed_addr constant [43 x i8] c"Whether geometry has been bound to anchors\00", align 1
@RNA_WireframeModifier = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_NlaTrack, ptr @RNA_LaplacianDeformModifier, ptr null, %struct.ListBase { ptr @rna_WireframeModifier_thickness, ptr @rna_WireframeModifier_invert_vertex_group } }, ptr @.str.1070, ptr null, ptr null, i32 4, ptr @.str.1071, ptr @.str.1072, ptr @.str.121, i32 482, ptr @rna_Modifier_name, ptr @rna_Modifier_rna_properties, ptr @RNA_Modifier, ptr null, ptr @rna_Modifier_refine, ptr @rna_Modifier_path, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.1050 = private unnamed_addr constant [24 x i8] c"LaplacianDeformModifier\00", align 1
@.str.1051 = private unnamed_addr constant [26 x i8] c"Laplacian Deform Modifier\00", align 1
@.str.1052 = private unnamed_addr constant [21 x i8] c"Mesh deform modifier\00", align 1
@rna_WireframeModifier_thickness_vertex_group = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WireframeModifier_offset, ptr @rna_WireframeModifier_thickness, i32 -1, ptr @.str.719, i32 8195, ptr @.str.720, ptr @.str.721, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 184, i32 4, ptr null, ptr null }, ptr @WireframeModifier_thickness_vertex_group_get, ptr @WireframeModifier_thickness_vertex_group_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.1053 = private unnamed_addr constant [17 x i8] c"Thickness factor\00", align 1
@rna_WireframeModifier_thickness = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WireframeModifier_thickness_vertex_group, ptr null, i32 -1, ptr @.str.713, i32 8195, ptr @.str.714, ptr @.str.1053, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 176, i32 4, ptr null, ptr null }, ptr @WireframeModifier_thickness_get, ptr @WireframeModifier_thickness_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3F847AE140000000, i32 4, float 0.000000e+00, ptr null }, align 8
@rna_WireframeModifier_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WireframeModifier_use_replace, ptr @rna_WireframeModifier_thickness_vertex_group, i32 -1, ptr @.str.612, i32 8195, ptr @.str.613, ptr @.str.722, i32 0, ptr @.str.121, i32 2, i32 15, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 180, i32 4, ptr null, ptr null }, ptr @WireframeModifier_offset_get, ptr @WireframeModifier_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 4, float 0.000000e+00, ptr null }, align 8
@rna_WireframeModifier_use_replace = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WireframeModifier_use_boundary, ptr @rna_WireframeModifier_offset, i32 -1, ptr @.str.1054, i32 3, ptr @.str.1055, ptr @.str.1056, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WireframeModifier_use_replace_get, ptr @WireframeModifier_use_replace_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_WireframeModifier_use_boundary = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WireframeModifier_use_even_offset, ptr @rna_WireframeModifier_use_replace, i32 -1, ptr @.str.1057, i32 3, ptr @.str.1058, ptr @.str.1059, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WireframeModifier_use_boundary_get, ptr @WireframeModifier_use_boundary_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.1054 = private unnamed_addr constant [12 x i8] c"use_replace\00", align 1
@.str.1055 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.1056 = private unnamed_addr constant [25 x i8] c"Remove original geometry\00", align 1
@rna_WireframeModifier_use_even_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WireframeModifier_use_relative_offset, ptr @rna_WireframeModifier_use_boundary, i32 -1, ptr @.str.741, i32 3, ptr @.str.1060, ptr @.str.1061, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WireframeModifier_use_even_offset_get, ptr @WireframeModifier_use_even_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.1057 = private unnamed_addr constant [13 x i8] c"use_boundary\00", align 1
@.str.1058 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str.1059 = private unnamed_addr constant [24 x i8] c"Support face boundaries\00", align 1
@rna_WireframeModifier_use_relative_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WireframeModifier_use_crease, ptr @rna_WireframeModifier_use_even_offset, i32 -1, ptr @.str.391, i32 3, ptr @.str.1062, ptr @.str.1063, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WireframeModifier_use_relative_offset_get, ptr @WireframeModifier_use_relative_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.1060 = private unnamed_addr constant [12 x i8] c"Offset Even\00", align 1
@.str.1061 = private unnamed_addr constant [45 x i8] c"Scale the offset to give more even thickness\00", align 1
@rna_WireframeModifier_use_crease = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_WireframeModifier_crease_weight, ptr @rna_WireframeModifier_use_relative_offset, i32 -1, ptr @.str.1064, i32 3, ptr @.str.1062, ptr @.str.1065, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WireframeModifier_use_crease_get, ptr @WireframeModifier_use_crease_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.1062 = private unnamed_addr constant [16 x i8] c"Offset Relative\00", align 1
@.str.1063 = private unnamed_addr constant [41 x i8] c"Scale the offset by surrounding geometry\00", align 1
@rna_WireframeModifier_crease_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WireframeModifier_material_offset, ptr @rna_WireframeModifier_use_crease, i32 -1, ptr @.str.1066, i32 8195, ptr @.str.1067, ptr @.str.1068, i32 0, ptr @.str.121, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 188, i32 4, ptr null, ptr null }, ptr @WireframeModifier_crease_weight_get, ptr @WireframeModifier_crease_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 1, float 0.000000e+00, ptr null }, align 8
@.str.1064 = private unnamed_addr constant [11 x i8] c"use_crease\00", align 1
@.str.1065 = private unnamed_addr constant [38 x i8] c"Crease hub edges for improved subsurf\00", align 1
@rna_WireframeModifier_material_offset = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_WireframeModifier_vertex_group, ptr @rna_WireframeModifier_crease_weight, i32 -1, ptr @.str.732, i32 8195, ptr @.str.733, ptr @.str.734, i32 0, ptr @.str.121, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 194, i32 1, ptr null, ptr null }, ptr @WireframeModifier_material_offset_get, ptr @WireframeModifier_material_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -32768, i32 32767, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.1066 = private unnamed_addr constant [14 x i8] c"crease_weight\00", align 1
@.str.1067 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.1068 = private unnamed_addr constant [26 x i8] c"Crease weight (if active)\00", align 1
@rna_WireframeModifier_vertex_group = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_WireframeModifier_invert_vertex_group, ptr @rna_WireframeModifier_material_offset, i32 -1, ptr @.str.171, i32 262145, ptr @.str.172, ptr @.str.1069, i32 0, ptr @.str.121, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WireframeModifier_vertex_group_get, ptr @WireframeModifier_vertex_group_length, ptr @WireframeModifier_vertex_group_set, ptr null, ptr null, ptr null, i32 64, ptr @.str }, align 8
@rna_WireframeModifier_invert_vertex_group = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WireframeModifier_vertex_group, i32 -1, ptr @.str.249, i32 3, ptr @.str.250, ptr @.str.343, i32 0, ptr @.str.121, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Modifier_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WireframeModifier_invert_vertex_group_get, ptr @WireframeModifier_invert_vertex_group_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.1069 = private unnamed_addr constant [51 x i8] c"Vertex group name for selecting the affected areas\00", align 1
@RNA_NlaTrack = external global %struct.StructRNA, align 8
@.str.1070 = private unnamed_addr constant [18 x i8] c"WireframeModifier\00", align 1
@.str.1071 = private unnamed_addr constant [19 x i8] c"Wireframe Modifier\00", align 1
@.str.1072 = private unnamed_addr constant [26 x i8] c"Wireframe effect modifier\00", align 1
@.str.1073 = private unnamed_addr constant [10 x i8] c"modifiers\00", align 1
@.str.1074 = private unnamed_addr constant [16 x i8] c"modifiers[\22%s\22]\00", align 1
@.str.1075 = private unnamed_addr constant [14 x i8] c"CATMULL_CLARK\00", align 1
@.str.1076 = private unnamed_addr constant [14 x i8] c"Catmull-Clark\00", align 1
@.str.1077 = private unnamed_addr constant [7 x i8] c"SIMPLE\00", align 1
@.str.1078 = private unnamed_addr constant [7 x i8] c"Simple\00", align 1
@.str.1079 = private unnamed_addr constant [6 x i8] c"POS_X\00", align 1
@.str.1080 = private unnamed_addr constant [6 x i8] c"POS_Y\00", align 1
@.str.1081 = private unnamed_addr constant [6 x i8] c"POS_Z\00", align 1
@.str.1082 = private unnamed_addr constant [6 x i8] c"NEG_X\00", align 1
@.str.1083 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@.str.1084 = private unnamed_addr constant [6 x i8] c"NEG_Y\00", align 1
@.str.1085 = private unnamed_addr constant [3 x i8] c"-Y\00", align 1
@.str.1086 = private unnamed_addr constant [6 x i8] c"NEG_Z\00", align 1
@.str.1087 = private unnamed_addr constant [3 x i8] c"-Z\00", align 1
@.str.1088 = private unnamed_addr constant [9 x i8] c"COLLAPSE\00", align 1
@.str.1089 = private unnamed_addr constant [9 x i8] c"Collapse\00", align 1
@.str.1090 = private unnamed_addr constant [20 x i8] c"Use edge collapsing\00", align 1
@.str.1091 = private unnamed_addr constant [9 x i8] c"UNSUBDIV\00", align 1
@.str.1092 = private unnamed_addr constant [13 x i8] c"Un-Subdivide\00", align 1
@.str.1093 = private unnamed_addr constant [32 x i8] c"Use un-subdivide face reduction\00", align 1
@.str.1094 = private unnamed_addr constant [9 x i8] c"DISSOLVE\00", align 1
@.str.1095 = private unnamed_addr constant [7 x i8] c"Planar\00", align 1
@.str.1096 = private unnamed_addr constant [42 x i8] c"Dissolve geometry to form planar polygons\00", align 1
@.str.1097 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.1098 = private unnamed_addr constant [27 x i8] c"Delimit by face directions\00", align 1
@.str.1099 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.1100 = private unnamed_addr constant [25 x i8] c"Delimit by face material\00", align 1
@.str.1101 = private unnamed_addr constant [5 x i8] c"SEAM\00", align 1
@.str.1102 = private unnamed_addr constant [5 x i8] c"Seam\00", align 1
@.str.1103 = private unnamed_addr constant [22 x i8] c"Delimit by edge seams\00", align 1
@.str.1104 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.1105 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.1106 = private unnamed_addr constant [60 x i8] c"Use the local coordinate system for the texture coordinates\00", align 1
@.str.1107 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str.1108 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.1109 = private unnamed_addr constant [61 x i8] c"Use the global coordinate system for the texture coordinates\00", align 1
@.str.1110 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.1111 = private unnamed_addr constant [76 x i8] c"Use the linked object's local coordinate system for the texture coordinates\00", align 1
@.str.1112 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@.str.1113 = private unnamed_addr constant [47 x i8] c"Use UV coordinates for the texture coordinates\00", align 1
@.str.1114 = private unnamed_addr constant [10 x i8] c"INTERSECT\00", align 1
@.str.1115 = private unnamed_addr constant [10 x i8] c"Intersect\00", align 1
@.str.1116 = private unnamed_addr constant [73 x i8] c"Keep the part of the mesh that intersects with the other selected object\00", align 1
@.str.1117 = private unnamed_addr constant [6 x i8] c"UNION\00", align 1
@.str.1118 = private unnamed_addr constant [6 x i8] c"Union\00", align 1
@.str.1119 = private unnamed_addr constant [38 x i8] c"Combine two meshes in an additive way\00", align 1
@.str.1120 = private unnamed_addr constant [11 x i8] c"DIFFERENCE\00", align 1
@.str.1121 = private unnamed_addr constant [11 x i8] c"Difference\00", align 1
@.str.1122 = private unnamed_addr constant [40 x i8] c"Combine two meshes in a subtractive way\00", align 1
@.str.1123 = private unnamed_addr constant [12 x i8] c"FIXED_COUNT\00", align 1
@.str.1124 = private unnamed_addr constant [12 x i8] c"Fixed Count\00", align 1
@.str.1125 = private unnamed_addr constant [47 x i8] c"Duplicate the object a certain number of times\00", align 1
@.str.1126 = private unnamed_addr constant [11 x i8] c"FIT_LENGTH\00", align 1
@.str.1127 = private unnamed_addr constant [11 x i8] c"Fit Length\00", align 1
@.str.1128 = private unnamed_addr constant [63 x i8] c"Duplicate the object as many times as fits in a certain length\00", align 1
@.str.1129 = private unnamed_addr constant [10 x i8] c"FIT_CURVE\00", align 1
@.str.1130 = private unnamed_addr constant [10 x i8] c"Fit Curve\00", align 1
@.str.1131 = private unnamed_addr constant [38 x i8] c"Fit the duplicated objects to a curve\00", align 1
@.str.1132 = private unnamed_addr constant [65 x i8] c"Use the texture's intensity value to displace in the X direction\00", align 1
@.str.1133 = private unnamed_addr constant [65 x i8] c"Use the texture's intensity value to displace in the Y direction\00", align 1
@.str.1134 = private unnamed_addr constant [65 x i8] c"Use the texture's intensity value to displace in the Z direction\00", align 1
@.str.1135 = private unnamed_addr constant [70 x i8] c"Use the texture's intensity value to displace in the normal direction\00", align 1
@.str.1136 = private unnamed_addr constant [11 x i8] c"RGB_TO_XYZ\00", align 1
@.str.1137 = private unnamed_addr constant [11 x i8] c"RGB to XYZ\00", align 1
@.str.1138 = private unnamed_addr constant [71 x i8] c"Use the texture's RGB values to displace the mesh in the XYZ direction\00", align 1
@.str.1139 = private unnamed_addr constant [7 x i8] c"SPHERE\00", align 1
@.str.1140 = private unnamed_addr constant [7 x i8] c"Sphere\00", align 1
@.str.1141 = private unnamed_addr constant [9 x i8] c"CYLINDER\00", align 1
@.str.1142 = private unnamed_addr constant [9 x i8] c"Cylinder\00", align 1
@.str.1143 = private unnamed_addr constant [7 x i8] c"CUBOID\00", align 1
@.str.1144 = private unnamed_addr constant [7 x i8] c"Cuboid\00", align 1
@.str.1145 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.1146 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1147 = private unnamed_addr constant [43 x i8] c"Bevel the entire mesh by a constant amount\00", align 1
@.str.1148 = private unnamed_addr constant [6 x i8] c"ANGLE\00", align 1
@.str.1149 = private unnamed_addr constant [56 x i8] c"Only bevel edges with sharp enough angles between faces\00", align 1
@.str.1150 = private unnamed_addr constant [7 x i8] c"WEIGHT\00", align 1
@.str.1151 = private unnamed_addr constant [70 x i8] c"Use bevel weights to determine how much bevel is applied in edge mode\00", align 1
@.str.1152 = private unnamed_addr constant [7 x i8] c"VGROUP\00", align 1
@.str.1153 = private unnamed_addr constant [69 x i8] c"Use vertex group weights to select whether vertex or edge is beveled\00", align 1
@.str.1154 = private unnamed_addr constant [8 x i8] c"AVERAGE\00", align 1
@.str.1155 = private unnamed_addr constant [8 x i8] c"Average\00", align 1
@.str.1156 = private unnamed_addr constant [9 x i8] c"SHARPEST\00", align 1
@.str.1157 = private unnamed_addr constant [9 x i8] c"Sharpest\00", align 1
@.str.1158 = private unnamed_addr constant [8 x i8] c"LARGEST\00", align 1
@.str.1159 = private unnamed_addr constant [8 x i8] c"Largest\00", align 1
@.str.1160 = private unnamed_addr constant [7 x i8] c"OFFSET\00", align 1
@.str.1161 = private unnamed_addr constant [44 x i8] c"Amount is offset of new edges from original\00", align 1
@.str.1162 = private unnamed_addr constant [6 x i8] c"WIDTH\00", align 1
@.str.1163 = private unnamed_addr constant [28 x i8] c"Amount is width of new face\00", align 1
@.str.1164 = private unnamed_addr constant [6 x i8] c"DEPTH\00", align 1
@.str.1165 = private unnamed_addr constant [66 x i8] c"Amount is perpendicular distance from original edge to bevel face\00", align 1
@.str.1166 = private unnamed_addr constant [8 x i8] c"PERCENT\00", align 1
@.str.1167 = private unnamed_addr constant [8 x i8] c"Percent\00", align 1
@.str.1168 = private unnamed_addr constant [42 x i8] c"Amount is percent of adjacent edge length\00", align 1
@.str.1169 = private unnamed_addr constant [21 x i8] c"NEAREST_SURFACEPOINT\00", align 1
@.str.1170 = private unnamed_addr constant [22 x i8] c"Nearest Surface Point\00", align 1
@.str.1171 = private unnamed_addr constant [46 x i8] c"Shrink the mesh to the nearest target surface\00", align 1
@.str.1172 = private unnamed_addr constant [8 x i8] c"PROJECT\00", align 1
@.str.1173 = private unnamed_addr constant [8 x i8] c"Project\00", align 1
@.str.1174 = private unnamed_addr constant [65 x i8] c"Shrink the mesh to the nearest target surface along a given axis\00", align 1
@.str.1175 = private unnamed_addr constant [15 x i8] c"NEAREST_VERTEX\00", align 1
@.str.1176 = private unnamed_addr constant [15 x i8] c"Nearest Vertex\00", align 1
@.str.1177 = private unnamed_addr constant [45 x i8] c"Shrink the mesh to the nearest target vertex\00", align 1
@.str.1178 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.1179 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.1180 = private unnamed_addr constant [11 x i8] c"No culling\00", align 1
@.str.1181 = private unnamed_addr constant [6 x i8] c"FRONT\00", align 1
@.str.1182 = private unnamed_addr constant [6 x i8] c"Front\00", align 1
@.str.1183 = private unnamed_addr constant [40 x i8] c"No projection when in front of the face\00", align 1
@.str.1184 = private unnamed_addr constant [5 x i8] c"BACK\00", align 1
@.str.1185 = private unnamed_addr constant [5 x i8] c"Back\00", align 1
@.str.1186 = private unnamed_addr constant [35 x i8] c"No projection when behind the face\00", align 1
@.str.1187 = private unnamed_addr constant [13 x i8] c"VERTEX_GROUP\00", align 1
@.str.1188 = private unnamed_addr constant [6 x i8] c"TWIST\00", align 1
@.str.1189 = private unnamed_addr constant [6 x i8] c"Twist\00", align 1
@.str.1190 = private unnamed_addr constant [47 x i8] c"Rotate around the Z axis of the modifier space\00", align 1
@.str.1191 = private unnamed_addr constant [5 x i8] c"BEND\00", align 1
@.str.1192 = private unnamed_addr constant [5 x i8] c"Bend\00", align 1
@.str.1193 = private unnamed_addr constant [52 x i8] c"Bend the mesh over the Z axis of the modifier space\00", align 1
@.str.1194 = private unnamed_addr constant [6 x i8] c"TAPER\00", align 1
@.str.1195 = private unnamed_addr constant [6 x i8] c"Taper\00", align 1
@.str.1196 = private unnamed_addr constant [50 x i8] c"Linearly scale along Z axis of the modifier space\00", align 1
@.str.1197 = private unnamed_addr constant [8 x i8] c"STRETCH\00", align 1
@.str.1198 = private unnamed_addr constant [8 x i8] c"Stretch\00", align 1
@.str.1199 = private unnamed_addr constant [58 x i8] c"Stretch the object along the Z axis of the modifier space\00", align 1
@.str.1200 = private unnamed_addr constant [11 x i8] c"No Falloff\00", align 1
@.str.1201 = private unnamed_addr constant [5 x i8] c"ROOT\00", align 1
@.str.1202 = private unnamed_addr constant [5 x i8] c"Root\00", align 1
@.str.1203 = private unnamed_addr constant [6 x i8] c"SHARP\00", align 1
@.str.1204 = private unnamed_addr constant [6 x i8] c"Sharp\00", align 1
@.str.1205 = private unnamed_addr constant [7 x i8] c"LINEAR\00", align 1
@.str.1206 = private unnamed_addr constant [7 x i8] c"Linear\00", align 1
@.str.1207 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.1208 = private unnamed_addr constant [9 x i8] c"Constant\00", align 1
@.str.1209 = private unnamed_addr constant [7 x i8] c"DOMAIN\00", align 1
@.str.1210 = private unnamed_addr constant [7 x i8] c"Domain\00", align 1
@.str.1211 = private unnamed_addr constant [5 x i8] c"FLOW\00", align 1
@.str.1212 = private unnamed_addr constant [5 x i8] c"Flow\00", align 1
@.str.1213 = private unnamed_addr constant [15 x i8] c"Inflow/Outflow\00", align 1
@.str.1214 = private unnamed_addr constant [7 x i8] c"X Axis\00", align 1
@.str.1215 = private unnamed_addr constant [7 x i8] c"Y Axis\00", align 1
@.str.1216 = private unnamed_addr constant [7 x i8] c"Z Axis\00", align 1
@.str.1217 = private unnamed_addr constant [12 x i8] c"Null action\00", align 1
@.str.1218 = private unnamed_addr constant [13 x i8] c"Custom Curve\00", align 1
@.str.1219 = private unnamed_addr constant [17 x i8] c"ICON_SPHERECURVE\00", align 1
@.str.1220 = private unnamed_addr constant [7 x i8] c"RANDOM\00", align 1
@.str.1221 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.1222 = private unnamed_addr constant [5 x i8] c"STEP\00", align 1
@.str.1223 = private unnamed_addr constant [12 x i8] c"Median Step\00", align 1
@.str.1224 = private unnamed_addr constant [55 x i8] c"Map all values below 0.5 to 0.0, and all others to 1.0\00", align 1
@.str.1225 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.1226 = private unnamed_addr constant [10 x i8] c"Intensity\00", align 1
@.str.1227 = private unnamed_addr constant [4 x i8] c"RED\00", align 1
@.str.1228 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.1229 = private unnamed_addr constant [6 x i8] c"GREEN\00", align 1
@.str.1230 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.1231 = private unnamed_addr constant [5 x i8] c"BLUE\00", align 1
@.str.1232 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.1233 = private unnamed_addr constant [4 x i8] c"HUE\00", align 1
@.str.1234 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.1235 = private unnamed_addr constant [4 x i8] c"SAT\00", align 1
@.str.1236 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.1237 = private unnamed_addr constant [4 x i8] c"VAL\00", align 1
@.str.1238 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.1239 = private unnamed_addr constant [6 x i8] c"ALPHA\00", align 1
@.str.1240 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.1241 = private unnamed_addr constant [32 x i8] c"Use local generated coordinates\00", align 1
@.str.1242 = private unnamed_addr constant [23 x i8] c"Use global coordinates\00", align 1
@.str.1243 = private unnamed_addr constant [50 x i8] c"Use local generated coordinates of another object\00", align 1
@.str.1244 = private unnamed_addr constant [33 x i8] c"Use coordinates from an UV layer\00", align 1
@.str.1245 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.1246 = private unnamed_addr constant [46 x i8] c"Replace VGroup A's weights by VGroup B's ones\00", align 1
@.str.1247 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1248 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.1249 = private unnamed_addr constant [42 x i8] c"Add VGroup B's weights to VGroup A's ones\00", align 1
@.str.1250 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.1251 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.1252 = private unnamed_addr constant [49 x i8] c"Subtract VGroup B's weights from VGroup A's ones\00", align 1
@.str.1253 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str.1254 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.1255 = private unnamed_addr constant [47 x i8] c"Multiply VGroup A's weights by VGroup B's ones\00", align 1
@.str.1256 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@.str.1257 = private unnamed_addr constant [7 x i8] c"Divide\00", align 1
@.str.1258 = private unnamed_addr constant [45 x i8] c"Divide VGroup A's weights by VGroup B's ones\00", align 1
@.str.1259 = private unnamed_addr constant [4 x i8] c"DIF\00", align 1
@.str.1260 = private unnamed_addr constant [53 x i8] c"Difference between VGroup A's and VGroup B's weights\00", align 1
@.str.1261 = private unnamed_addr constant [4 x i8] c"AVG\00", align 1
@.str.1262 = private unnamed_addr constant [51 x i8] c"Average value of VGroup A's and VGroup B's weights\00", align 1
@.str.1263 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.1264 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.1265 = private unnamed_addr constant [49 x i8] c"Affect all vertices (might add some to VGroup A)\00", align 1
@.str.1266 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1267 = private unnamed_addr constant [9 x i8] c"VGroup A\00", align 1
@.str.1268 = private unnamed_addr constant [28 x i8] c"Affect vertices in VGroup A\00", align 1
@.str.1269 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.1270 = private unnamed_addr constant [9 x i8] c"VGroup B\00", align 1
@.str.1271 = private unnamed_addr constant [57 x i8] c"Affect vertices in VGroup B (might add some to VGroup A)\00", align 1
@.str.1272 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.1273 = private unnamed_addr constant [14 x i8] c"VGroup A or B\00", align 1
@.str.1274 = private unnamed_addr constant [77 x i8] c"Affect vertices in at least one of both VGroups (might add some to VGroup A)\00", align 1
@.str.1275 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.1276 = private unnamed_addr constant [15 x i8] c"VGroup A and B\00", align 1
@.str.1277 = private unnamed_addr constant [31 x i8] c"Affect vertices in both groups\00", align 1
@.str.1278 = private unnamed_addr constant [49 x i8] c"Use distance between affected and target objects\00", align 1
@.str.1279 = private unnamed_addr constant [9 x i8] c"GEOMETRY\00", align 1
@.str.1280 = private unnamed_addr constant [95 x i8] c"Use distance between affected object's vertices and target object, or target object's geometry\00", align 1
@.str.1281 = private unnamed_addr constant [7 x i8] c"VERTEX\00", align 1
@.str.1282 = private unnamed_addr constant [7 x i8] c"Vertex\00", align 1
@.str.1283 = private unnamed_addr constant [35 x i8] c"Compute distance to nearest vertex\00", align 1
@.str.1284 = private unnamed_addr constant [5 x i8] c"EDGE\00", align 1
@.str.1285 = private unnamed_addr constant [5 x i8] c"Edge\00", align 1
@.str.1286 = private unnamed_addr constant [33 x i8] c"Compute distance to nearest edge\00", align 1
@.str.1287 = private unnamed_addr constant [5 x i8] c"FACE\00", align 1
@.str.1288 = private unnamed_addr constant [5 x i8] c"Face\00", align 1
@.str.1289 = private unnamed_addr constant [33 x i8] c"Compute distance to nearest face\00", align 1
@.str.1290 = private unnamed_addr constant [7 x i8] c"CANVAS\00", align 1
@.str.1291 = private unnamed_addr constant [7 x i8] c"Canvas\00", align 1
@.str.1292 = private unnamed_addr constant [6 x i8] c"BRUSH\00", align 1
@.str.1293 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.1294 = private unnamed_addr constant [9 x i8] c"GENERATE\00", align 1
@.str.1295 = private unnamed_addr constant [60 x i8] c"Generate ocean surface geometry at the specified resolution\00", align 1
@.str.1296 = private unnamed_addr constant [51 x i8] c"Displace existing geometry according to simulation\00", align 1
@.str.1297 = private unnamed_addr constant [7 x i8] c"BLOCKS\00", align 1
@.str.1298 = private unnamed_addr constant [7 x i8] c"Blocks\00", align 1
@.str.1299 = private unnamed_addr constant [42 x i8] c"Output a blocky surface with no smoothing\00", align 1
@.str.1300 = private unnamed_addr constant [57 x i8] c"Output a smooth surface with no sharp-features detection\00", align 1
@.str.1301 = private unnamed_addr constant [77 x i8] c"Output a surface that reproduces sharp edges and corners from the input mesh\00", align 1
@.str.1302 = private unnamed_addr constant [4 x i8] c"MDD\00", align 1
@.str.1303 = private unnamed_addr constant [5 x i8] c"MDD \00", align 1
@.str.1304 = private unnamed_addr constant [4 x i8] c"PC2\00", align 1
@.str.1305 = private unnamed_addr constant [6 x i8] c"None \00", align 1
@.str.1306 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.1307 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.1308 = private unnamed_addr constant [88 x i8] c"Control playback using a frame-number (ignoring time FPS and start frame from the file)\00", align 1
@.str.1309 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.1310 = private unnamed_addr constant [39 x i8] c"Control playback using time in seconds\00", align 1
@.str.1311 = private unnamed_addr constant [7 x i8] c"FACTOR\00", align 1
@.str.1312 = private unnamed_addr constant [46 x i8] c"Control playback using a value between [0, 1]\00", align 1
@.str.1313 = private unnamed_addr constant [6 x i8] c"SCENE\00", align 1
@.str.1314 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.1315 = private unnamed_addr constant [28 x i8] c"Use the time from the scene\00", align 1
@.str.1316 = private unnamed_addr constant [7 x i8] c"CUSTOM\00", align 1
@.str.1317 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.1318 = private unnamed_addr constant [39 x i8] c"Use the modifier's own time evaluation\00", align 1
@.str.1319 = private unnamed_addr constant [10 x i8] c"OVERWRITE\00", align 1
@.str.1320 = private unnamed_addr constant [10 x i8] c"Overwrite\00", align 1
@.str.1321 = private unnamed_addr constant [41 x i8] c"Replace vertex coords with cached values\00", align 1
@.str.1322 = private unnamed_addr constant [10 x i8] c"INTEGRATE\00", align 1
@.str.1323 = private unnamed_addr constant [10 x i8] c"Integrate\00", align 1
@.str.1324 = private unnamed_addr constant [99 x i8] c"Integrate deformation from this modifiers input with the mesh-cache coords (useful for shape keys)\00", align 1
@.str.1325 = private unnamed_addr constant [3 x i8] c"+X\00", align 1
@.str.1326 = private unnamed_addr constant [3 x i8] c"+Y\00", align 1
@.str.1327 = private unnamed_addr constant [3 x i8] c"+Z\00", align 1
@switch.table.rna_Modifier_refine = private unnamed_addr constant [50 x ptr] [ptr @RNA_Modifier, ptr @RNA_SubsurfModifier, ptr @RNA_LatticeModifier, ptr @RNA_CurveModifier, ptr @RNA_BuildModifier, ptr @RNA_MirrorModifier, ptr @RNA_DecimateModifier, ptr @RNA_WaveModifier, ptr @RNA_ArmatureModifier, ptr @RNA_HookModifier, ptr @RNA_SoftBodyModifier, ptr @RNA_BooleanModifier, ptr @RNA_ArrayModifier, ptr @RNA_EdgeSplitModifier, ptr @RNA_DisplaceModifier, ptr @RNA_UVProjectModifier, ptr @RNA_SmoothModifier, ptr @RNA_CastModifier, ptr @RNA_MeshDeformModifier, ptr @RNA_ParticleSystemModifier, ptr @RNA_ParticleInstanceModifier, ptr @RNA_ExplodeModifier, ptr @RNA_ClothModifier, ptr @RNA_CollisionModifier, ptr @RNA_BevelModifier, ptr @RNA_ShrinkwrapModifier, ptr @RNA_FluidSimulationModifier, ptr @RNA_MaskModifier, ptr @RNA_SimpleDeformModifier, ptr @RNA_MultiresModifier, ptr @RNA_SurfaceModifier, ptr @RNA_SmokeModifier, ptr @RNA_Modifier, ptr @RNA_SolidifyModifier, ptr @RNA_ScrewModifier, ptr @RNA_WarpModifier, ptr @RNA_VertexWeightEditModifier, ptr @RNA_VertexWeightMixModifier, ptr @RNA_VertexWeightProximityModifier, ptr @RNA_OceanModifier, ptr @RNA_DynamicPaintModifier, ptr @RNA_RemeshModifier, ptr @RNA_SkinModifier, ptr @RNA_LaplacianSmoothModifier, ptr @RNA_TriangulateModifier, ptr @RNA_UVWarpModifier, ptr @RNA_MeshCacheModifier, ptr @RNA_LaplacianDeformModifier, ptr @RNA_WireframeModifier, ptr @RNA_Modifier], align 8

; Function Attrs: nounwind uwtable
define dso_local void @Modifier_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Modifier_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define internal void @Modifier_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @Modifier_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Modifier_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @Modifier_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Modifier_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Modifier_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 6
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Modifier_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 6
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @Modifier_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %6 = getelementptr inbounds %struct.ModifierData, ptr %5, i64 0, i32 6
  %7 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %6, i64 noundef 64) #15
  %8 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #15
  %9 = load ptr, ptr %0, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 26
  call void @modifier_unique_name(ptr noundef nonnull %12, ptr noundef %5) #15
  br label %13

13:                                               ; preds = %2, %11
  call void @BKE_all_animdata_fix_paths_rename(ptr noundef null, ptr noundef nonnull @.str.1073, ptr noundef nonnull %3, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Modifier_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !47
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Modifier_show_viewport_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Modifier_show_viewport_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Modifier_show_render_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Modifier_show_render_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Modifier_show_in_editmode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Modifier_show_in_editmode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Modifier_show_on_cage_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Modifier_show_on_cage_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Modifier_show_expanded_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Modifier_show_expanded_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Modifier_use_apply_on_spline_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !49
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Modifier_use_apply_on_spline_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !49
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SubsurfModifier_subdivision_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !50
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SubsurfModifier_subdivision_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 1
  store i16 %5, ptr %6, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SubsurfModifier_levels_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !53
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SubsurfModifier_levels_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 11)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SubsurfModifier_render_levels_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 4, !tbaa !54
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SubsurfModifier_render_levels_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 11)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 3
  store i16 %7, ptr %8, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SubsurfModifier_show_only_control_edges_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !55
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SubsurfModifier_show_only_control_edges_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !55
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SubsurfModifier_use_subsurf_uv_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SubsurfModifierData, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !55
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SubsurfModifier_use_subsurf_uv_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !55
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LatticeModifier_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.LatticeModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @LatticeModifier_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.LatticeModifierData, ptr %6, i64 0, i32 1
  %9 = icmp ne ptr %7, null
  %10 = icmp eq ptr %4, %7
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 22
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %8, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %2, %14, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LatticeModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.LatticeModifierData, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LatticeModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LatticeModifierData, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @LatticeModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.LatticeModifierData, ptr %4, i64 0, i32 2
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LatticeModifier_strength_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LatticeModifierData, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 8, !tbaa !65
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LatticeModifier_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.LatticeModifierData, ptr %4, i64 0, i32 3
  store float %1, ptr %5, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveModifier_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurveModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveModifier_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.CurveModifierData, ptr %6, i64 0, i32 1
  %9 = icmp ne ptr %7, null
  %10 = icmp eq ptr %4, %7
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %8, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %2, %14, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurveModifierData, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CurveModifierData, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @CurveModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CurveModifierData, ptr %4, i64 0, i32 2
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CurveModifier_deform_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CurveModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !68
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CurveModifier_deform_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.CurveModifierData, ptr %4, i64 0, i32 3
  store i16 %5, ptr %6, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BuildModifier_frame_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BuildModifierData, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !69
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BuildModifier_frame_start_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -3.000000e+05
  %6 = fcmp ogt float %1, 3.000000e+05
  %7 = select i1 %6, float 3.000000e+05, float %1
  %8 = select i1 %5, float -3.000000e+05, float %7
  %9 = getelementptr inbounds %struct.BuildModifierData, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BuildModifier_frame_duration_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BuildModifierData, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !71
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BuildModifier_frame_duration_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+05
  %7 = select i1 %6, float 3.000000e+05, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BuildModifierData, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BuildModifier_use_reverse_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BuildModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !72
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BuildModifier_use_reverse_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.BuildModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !72
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BuildModifier_use_random_order_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BuildModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !72
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BuildModifier_use_random_order_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.BuildModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !72
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BuildModifier_seed_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BuildModifierData, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !73
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BuildModifier_seed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 300000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.BuildModifierData, ptr %4, i64 0, i32 5
  store i32 %6, ptr %7, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MirrorModifier_use_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MirrorModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MirrorModifier_use_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MirrorModifier_use_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MirrorModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MirrorModifier_use_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MirrorModifier_use_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MirrorModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MirrorModifier_use_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MirrorModifier_use_clip_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MirrorModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MirrorModifier_use_clip_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MirrorModifier_use_mirror_vertex_groups_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MirrorModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MirrorModifier_use_mirror_vertex_groups_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MirrorModifier_use_mirror_merge_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MirrorModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = and i16 %5, 128
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MirrorModifier_use_mirror_merge_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 128, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MirrorModifier_use_mirror_u_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MirrorModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MirrorModifier_use_mirror_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MirrorModifier_use_mirror_v_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MirrorModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MirrorModifier_use_mirror_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !74
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MirrorModifier_merge_threshold_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MirrorModifierData, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !76
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MirrorModifier_merge_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MirrorModifierData, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !76
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MirrorModifier_mirror_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MirrorModifierData, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MirrorModifier_mirror_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.MirrorModifierData, ptr %4, i64 0, i32 4
  store ptr %7, ptr %13, align 8, !tbaa !77
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DecimateModifier_decimate_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DecimateModifierData, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 2, !tbaa !78
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DecimateModifier_decimate_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.DecimateModifierData, ptr %4, i64 0, i32 8
  store i16 %5, ptr %6, align 2, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DecimateModifier_ratio_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DecimateModifierData, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !80
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DecimateModifier_ratio_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DecimateModifierData, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DecimateModifier_iterations_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DecimateModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 4, !tbaa !81
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DecimateModifier_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.DecimateModifierData, ptr %4, i64 0, i32 2
  store i16 %7, ptr %8, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DecimateModifier_angle_limit_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DecimateModifierData, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !82
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DecimateModifier_angle_limit_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x400921FB60000000
  %7 = select i1 %6, float 0x400921FB60000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.DecimateModifierData, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 8, !tbaa !82
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DecimateModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DecimateModifierData, ptr %4, i64 0, i32 6
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DecimateModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DecimateModifierData, ptr %3, i64 0, i32 6
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DecimateModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DecimateModifierData, ptr %4, i64 0, i32 6
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DecimateModifier_invert_vertex_group_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DecimateModifierData, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !83
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DecimateModifier_invert_vertex_group_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.DecimateModifierData, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !83
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DecimateModifier_use_collapse_triangulate_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DecimateModifierData, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !83
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DecimateModifier_use_collapse_triangulate_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DecimateModifierData, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !83
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DecimateModifier_use_dissolve_boundaries_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DecimateModifierData, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !83
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @DecimateModifier_use_dissolve_boundaries_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.DecimateModifierData, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !83
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DecimateModifier_delimit_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DecimateModifierData, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 2, !tbaa !84
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DecimateModifier_delimit_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.DecimateModifierData, ptr %4, i64 0, i32 3
  store i8 %5, ptr %6, align 2, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DecimateModifier_face_count_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DecimateModifierData, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !85
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WaveModifier_use_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 8, !tbaa !86
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_use_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 8
  %7 = load i16, ptr %6, align 8, !tbaa !86
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WaveModifier_use_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 8, !tbaa !86
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_use_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 8
  %7 = load i16, ptr %6, align 8, !tbaa !86
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WaveModifier_use_cyclic_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 8, !tbaa !86
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_use_cyclic_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 8
  %7 = load i16, ptr %6, align 8, !tbaa !86
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WaveModifier_use_normal_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 8, !tbaa !86
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_use_normal_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 8
  %7 = load i16, ptr %6, align 8, !tbaa !86
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WaveModifier_use_normal_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 8, !tbaa !86
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_use_normal_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 8
  %7 = load i16, ptr %6, align 8, !tbaa !86
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WaveModifier_use_normal_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 8, !tbaa !86
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_use_normal_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 8
  %7 = load i16, ptr %6, align 8, !tbaa !86
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WaveModifier_use_normal_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 8, !tbaa !86
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_use_normal_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 8
  %7 = load i16, ptr %6, align 8, !tbaa !86
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WaveModifier_time_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 4, !tbaa !88
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_time_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -3.000000e+05
  %6 = fcmp ogt float %1, 3.000000e+05
  %7 = select i1 %6, float 3.000000e+05, float %1
  %8 = select i1 %5, float -3.000000e+05, float %7
  %9 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 4, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WaveModifier_lifetime_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 19
  %5 = load float, ptr %4, align 8, !tbaa !89
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_lifetime_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -3.000000e+05
  %6 = fcmp ogt float %1, 3.000000e+05
  %7 = select i1 %6, float 3.000000e+05, float %1
  %8 = select i1 %5, float -3.000000e+05, float %7
  %9 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 19
  store float %8, ptr %9, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WaveModifier_damping_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 4, !tbaa !90
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_damping_time_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -3.000000e+05
  %6 = fcmp ogt float %1, 3.000000e+05
  %7 = select i1 %6, float 3.000000e+05, float %1
  %8 = select i1 %5, float -3.000000e+05, float %7
  %9 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WaveModifier_falloff_radius_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !91
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_falloff_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WaveModifier_start_position_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !92
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_start_position_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 10
  store float %1, ptr %5, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WaveModifier_start_position_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 8, !tbaa !93
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_start_position_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 11
  store float %1, ptr %5, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WaveModifier_start_position_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WaveModifier_start_position_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 6
  store ptr %7, ptr %13, align 8, !tbaa !94
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WaveModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 7
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WaveModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 7
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @WaveModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 7
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WaveModifier_speed_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 8, !tbaa !95
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_speed_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 15
  store float %1, ptr %5, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WaveModifier_height_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !96
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_height_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 12
  store float %1, ptr %5, align 4, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WaveModifier_width_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 8, !tbaa !97
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_width_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WaveModifier_narrowness_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 4, !tbaa !98
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_narrowness_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 14
  store float %8, ptr %9, align 4, !tbaa !98
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WaveModifier_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WaveModifier_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !99
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !99
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WaveModifier_texture_coords_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !100
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WaveModifier_texture_coords_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 5
  store i32 %1, ptr %5, align 4, !tbaa !100
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WaveModifier_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WaveModifier_uv_layer_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WaveModifierData, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @WaveModifier_uv_layer_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %4, i64 0, i32 3
  tail call void @rna_object_uvlayer_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WaveModifier_texture_coords_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WaveModifier_texture_coords_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.WaveModifierData, ptr %4, i64 0, i32 2
  store ptr %7, ptr %13, align 8, !tbaa !101
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ArmatureModifier_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArmatureModifierData, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ArmatureModifier_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.ArmatureModifierData, ptr %6, i64 0, i32 4
  %9 = icmp ne ptr %7, null
  %10 = icmp eq ptr %4, %7
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 25
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %8, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %2, %14, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArmatureModifier_use_bone_envelopes_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArmatureModifierData, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !104
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArmatureModifier_use_bone_envelopes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ArmatureModifierData, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !104
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArmatureModifier_use_vertex_groups_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArmatureModifierData, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !104
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArmatureModifier_use_vertex_groups_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.ArmatureModifierData, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !104
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArmatureModifier_use_deform_preserve_volume_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArmatureModifierData, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !104
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArmatureModifier_use_deform_preserve_volume_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ArmatureModifierData, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !104
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArmatureModifier_use_multi_modifier_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArmatureModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !105
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArmatureModifier_use_multi_modifier_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.ArmatureModifierData, ptr %4, i64 0, i32 2
  store i16 %5, ptr %6, align 2, !tbaa !105
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ArmatureModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArmatureModifierData, ptr %4, i64 0, i32 6
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArmatureModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArmatureModifierData, ptr %3, i64 0, i32 6
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @ArmatureModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArmatureModifierData, ptr %4, i64 0, i32 6
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArmatureModifier_invert_vertex_group_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArmatureModifierData, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !104
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArmatureModifier_invert_vertex_group_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ArmatureModifierData, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !104
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @HookModifier_falloff_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.HookModifierData, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !106
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @HookModifier_falloff_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.HookModifierData, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 4, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @HookModifier_force_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.HookModifierData, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !108
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @HookModifier_force_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.HookModifierData, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 4, !tbaa !108
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @HookModifier_center_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.HookModifierData, ptr %4, i64 0, i32 4
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !110

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @HookModifier_center_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.HookModifierData, ptr %4, i64 0, i32 4
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !113

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @HookModifier_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.HookModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @HookModifier_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.HookModifierData, ptr %6, i64 0, i32 1
  store ptr %4, ptr %7, align 8, !tbaa !114
  %8 = load ptr, ptr %0, align 8, !tbaa !46
  tail call void @BKE_object_modifier_hook_reset(ptr noundef %8, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @HookModifier_subtarget_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.HookModifierData, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @HookModifier_subtarget_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.HookModifierData, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @HookModifier_subtarget_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.HookModifierData, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @HookModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.HookModifierData, ptr %4, i64 0, i32 9
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @HookModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.HookModifierData, ptr %3, i64 0, i32 9
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @HookModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.HookModifierData, ptr %4, i64 0, i32 9
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SoftBodyModifier_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !46, !noalias !115
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 111
  %5 = load ptr, ptr %4, align 8, !tbaa !118, !noalias !115
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_SoftBodySettings, ptr noundef %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SoftBodyModifier_point_cache_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !46, !noalias !119
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 111
  %5 = load ptr, ptr %4, align 8, !tbaa !118, !noalias !119
  %6 = getelementptr inbounds %struct.SoftBody, ptr %5, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !122, !noalias !119
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_PointCache, ptr noundef %7) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BooleanModifier_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.BooleanModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !124
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BooleanModifier_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.BooleanModifierData, ptr %6, i64 0, i32 1
  %9 = icmp ne ptr %7, null
  %10 = icmp eq ptr %4, %7
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %8, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %2, %14, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BooleanModifier_operation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BooleanModifierData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !126
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BooleanModifier_operation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.BooleanModifierData, ptr %4, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArrayModifier_fit_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArrayModifierData, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !127
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_fit_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 9
  store i32 %1, ptr %5, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArrayModifier_count_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArrayModifierData, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !129
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 12
  store i32 %5, ptr %6, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ArrayModifier_fit_length_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArrayModifierData, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 8, !tbaa !130
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_fit_length_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x41E0000000000000
  %7 = select i1 %6, float 0x41E0000000000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 8, !tbaa !130
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ArrayModifier_curve_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ArrayModifier_curve_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.ArrayModifierData, ptr %6, i64 0, i32 3
  %9 = icmp ne ptr %7, null
  %10 = icmp eq ptr %4, %7
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %8, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %2, %14, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArrayModifier_use_constant_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArrayModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !132
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_use_constant_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !132
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !132
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_constant_offset_displace_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 5
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !133

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_constant_offset_displace_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 5
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !134

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArrayModifier_use_relative_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArrayModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !132
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_use_relative_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !132
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !132
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_relative_offset_displace_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 6
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !135

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_relative_offset_displace_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 6
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !136

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArrayModifier_use_merge_vertices_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArrayModifierData, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !137
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_use_merge_vertices_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !137
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArrayModifier_use_merge_vertices_cap_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArrayModifierData, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !137
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_use_merge_vertices_cap_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !137
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ArrayModifier_merge_threshold_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArrayModifierData, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !138
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_merge_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 4, !tbaa !138
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ArrayModifier_use_object_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ArrayModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !132
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArrayModifier_use_object_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !132
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !132
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ArrayModifier_offset_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !139
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ArrayModifier_offset_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 4
  store ptr %7, ptr %13, align 8, !tbaa !139
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ArrayModifier_start_cap_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ArrayModifier_start_cap_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.ArrayModifierData, ptr %6, i64 0, i32 1
  %9 = icmp ne ptr %7, null
  %10 = icmp eq ptr %4, %7
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %8, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %2, %14, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ArrayModifier_end_cap_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ArrayModifier_end_cap_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.ArrayModifierData, ptr %6, i64 0, i32 2
  %9 = icmp ne ptr %7, null
  %10 = icmp eq ptr %4, %7
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %8, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %2, %14, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EdgeSplitModifier_split_angle_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !142
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EdgeSplitModifier_split_angle_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x400921FB60000000
  %7 = select i1 %6, float 0x400921FB60000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EdgeSplitModifier_use_edge_angle_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !144
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EdgeSplitModifier_use_edge_angle_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !144
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !144
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EdgeSplitModifier_use_edge_sharp_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !144
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EdgeSplitModifier_use_edge_sharp_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !144
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !144
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DisplaceModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %4, i64 0, i32 8
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DisplaceModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DisplaceModifierData, ptr %3, i64 0, i32 8
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DisplaceModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %4, i64 0, i32 8
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DisplaceModifier_mid_level_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DisplaceModifierData, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 8, !tbaa !145
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DisplaceModifier_mid_level_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %4, i64 0, i32 9
  store float %1, ptr %5, align 8, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @DisplaceModifier_strength_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DisplaceModifierData, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 8, !tbaa !147
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DisplaceModifier_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %4, i64 0, i32 6
  store float %1, ptr %5, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DisplaceModifier_direction_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DisplaceModifierData, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !148
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DisplaceModifier_direction_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %4, i64 0, i32 7
  store i32 %1, ptr %5, align 4, !tbaa !148
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DisplaceModifier_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DisplaceModifier_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DisplaceModifier_texture_coords_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DisplaceModifierData, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !150
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DisplaceModifier_texture_coords_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %4, i64 0, i32 5
  store i32 %1, ptr %5, align 4, !tbaa !150
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DisplaceModifier_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DisplaceModifier_uv_layer_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DisplaceModifierData, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @DisplaceModifier_uv_layer_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %4, i64 0, i32 3
  tail call void @rna_object_uvlayer_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DisplaceModifier_texture_coords_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DisplaceModifier_texture_coords_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.DisplaceModifierData, ptr %4, i64 0, i32 2
  store ptr %7, ptr %13, align 8, !tbaa !151
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVProjectModifier_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVProjectModifierData, ptr %4, i64 0, i32 9
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UVProjectModifier_uv_layer_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVProjectModifierData, ptr %3, i64 0, i32 9
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @UVProjectModifier_uv_layer_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVProjectModifierData, ptr %4, i64 0, i32 9
  tail call void @rna_object_uvlayer_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UVProjectModifier_projector_count_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVProjectModifierData, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !152
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UVProjectModifier_projector_count_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.UVProjectModifierData, ptr %4, i64 0, i32 4
  store i32 %6, ptr %7, align 4, !tbaa !152
  %8 = icmp slt i32 %1, 10
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = zext nneg i32 %6 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = getelementptr i8, ptr %4, i64 %11
  %13 = getelementptr i8, ptr %12, i64 112
  %14 = sub nsw i32 9, %6
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = add nuw nsw i64 %16, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %17, i1 false), !tbaa !35
  br label %18

18:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVProjectModifier_projectors_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_UVProjectModifier_projectors, ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.UVProjectModifierData, ptr %6, i64 0, i32 1
  %8 = getelementptr inbounds %struct.UVProjectModifierData, ptr %6, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !152
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 8, i32 noundef %9, i8 noundef zeroext 0, ptr noundef null) #15
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %15 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !154
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_UVProjector, ptr noundef %15) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UVProjectModifier_projectors_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #15
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_UVProjector, ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVProjectModifier_projectors_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #15, !noalias !157
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_UVProjector, ptr noundef %8) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @UVProjectModifier_projectors_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #15
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @UVProjectModifier_projectors_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #15
  %7 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %7, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !34
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_UVProjectModifier_projectors, ptr %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.UVProjectModifierData, ptr %10, i64 0, i32 1
  %12 = getelementptr inbounds %struct.UVProjectModifierData, ptr %10, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !152
  call void @rna_iterator_array_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, i32 noundef 8, i32 noundef %13, i8 noundef zeroext 0, ptr noundef null) #15
  %14 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %19 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #15, !noalias !160
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_UVProjector, ptr noundef %19) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br label %20

20:                                               ; preds = %3, %17
  %21 = load i32, ptr %14, align 8, !tbaa !44
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %66, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %25 = icmp sgt i32 %1, -1
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, %1
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.117, ptr noundef nonnull @__func__.UVProjectModifier_projectors_lookup_int, i32 noundef %1)
  br label %61

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !163
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %32
  %37 = icmp sgt i32 %1, 0
  %38 = load i32, ptr %14, align 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %48

41:                                               ; preds = %36, %41
  %42 = phi i32 [ %43, %41 ], [ %1, %36 ]
  %43 = add nsw i32 %42, -1
  call void @rna_iterator_array_next(ptr noundef nonnull %5) #15
  %44 = icmp sgt i32 %42, 1
  %45 = load i32, ptr %14, align 8
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %41, label %48, !llvm.loop !165

48:                                               ; preds = %41, %36
  %49 = phi i32 [ %1, %36 ], [ %43, %41 ]
  %50 = phi i1 [ %39, %36 ], [ %46, %41 ]
  %51 = icmp eq i32 %49, 0
  %52 = select i1 %51, i1 %50, i1 false
  %53 = zext i1 %52 to i32
  br label %61

54:                                               ; preds = %32
  %55 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %56 = load i32, ptr %55, align 8, !tbaa !166
  %57 = mul nsw i32 %56, %1
  %58 = load ptr, ptr %24, align 8, !tbaa !167
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, ptr %58, i64 %59
  store ptr %60, ptr %24, align 8, !tbaa !167
  br label %61

61:                                               ; preds = %48, %54, %30
  %62 = phi i32 [ 0, %30 ], [ %53, %48 ], [ 1, %54 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %65 = call ptr @rna_iterator_array_get(ptr noundef nonnull %5) #15, !noalias !168
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_UVProjector, ptr noundef %65) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  br label %66

66:                                               ; preds = %61, %64, %20
  %67 = phi i32 [ 0, %20 ], [ %62, %64 ], [ %62, %61 ]
  call void @rna_iterator_array_end(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #15
  ret i32 %67
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @UVProjectModifier_image_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVProjectModifierData, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Image, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVProjectModifier_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVProjectModifierData, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @UVProjectModifier_aspect_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVProjectModifierData, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !172
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UVProjectModifier_aspect_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.UVProjectModifierData, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 8, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @UVProjectModifier_aspect_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVProjectModifierData, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 4, !tbaa !173
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UVProjectModifier_aspect_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 1.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 1.000000e+00, float %7
  %9 = getelementptr inbounds %struct.UVProjectModifierData, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 4, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @UVProjectModifier_scale_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVProjectModifierData, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 8, !tbaa !174
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UVProjectModifier_scale_x_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.UVProjectModifierData, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 8, !tbaa !174
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @UVProjectModifier_scale_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVProjectModifierData, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !175
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UVProjectModifier_scale_y_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.UVProjectModifierData, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UVProjectModifier_use_image_override_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVProjectModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !176
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @UVProjectModifier_use_image_override_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.UVProjectModifierData, ptr %4, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !176
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !176
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVProjector_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_UVProjector_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @UVProjector_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVProjector_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVProjector_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @UVProjector_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @UVProjector_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVProjector_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45, !noalias !177
  %5 = load ptr, ptr %4, align 8, !tbaa !35, !noalias !177
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UVProjector_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #9 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  store ptr %4, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmoothModifier_use_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmoothModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 4, !tbaa !180
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmoothModifier_use_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SmoothModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 4, !tbaa !180
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmoothModifier_use_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmoothModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 4, !tbaa !180
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmoothModifier_use_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SmoothModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 4, !tbaa !180
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmoothModifier_use_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmoothModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 4, !tbaa !180
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmoothModifier_use_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SmoothModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 4, !tbaa !180
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !180
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SmoothModifier_factor_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmoothModifierData, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !182
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmoothModifier_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmoothModifierData, ptr %4, i64 0, i32 1
  store float %1, ptr %5, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmoothModifier_iterations_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmoothModifierData, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !183
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmoothModifier_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -32768)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.SmoothModifierData, ptr %4, i64 0, i32 4
  store i16 %7, ptr %8, align 2, !tbaa !183
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmoothModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmoothModifierData, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmoothModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmoothModifierData, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @SmoothModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmoothModifierData, ptr %4, i64 0, i32 2
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CastModifier_cast_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !184
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CastModifier_cast_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 7
  store i16 %5, ptr %6, align 2, !tbaa !184
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CastModifier_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CastModifier_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = icmp ne ptr %5, null
  %7 = icmp eq ptr %4, %5
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.CastModifierData, ptr %11, i64 0, i32 1
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %12, align 8, !tbaa !35
  br label %13

13:                                               ; preds = %2, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CastModifier_use_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 4, !tbaa !187
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CastModifier_use_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !187
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CastModifier_use_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 4, !tbaa !187
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CastModifier_use_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !187
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CastModifier_use_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 4, !tbaa !187
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CastModifier_use_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !187
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CastModifier_use_radius_as_size_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 4, !tbaa !187
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CastModifier_use_radius_as_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !187
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CastModifier_use_transform_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 4, !tbaa !187
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @CastModifier_use_transform_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 4, !tbaa !187
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CastModifier_factor_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !188
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CastModifier_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 2
  store float %1, ptr %5, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CastModifier_radius_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !189
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CastModifier_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 4, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @CastModifier_size_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 8, !tbaa !190
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CastModifier_size_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 8, !tbaa !190
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CastModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CastModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.CastModifierData, ptr %3, i64 0, i32 5
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @CastModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.CastModifierData, ptr %4, i64 0, i32 5
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MeshDeformModifier_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !191
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MeshDeformModifier_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %6, i64 0, i32 1
  %9 = icmp ne ptr %7, null
  %10 = icmp eq ptr %4, %7
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %8, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %2, %14, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshDeformModifier_is_bound_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshDeformModifier_invert_vertex_group_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !194
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshDeformModifier_invert_vertex_group_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !194
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !194
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MeshDeformModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshDeformModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @MeshDeformModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %4, i64 0, i32 2
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshDeformModifier_precision_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !195
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshDeformModifier_precision_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 2)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %4, i64 0, i32 3
  store i16 %7, ptr %8, align 8, !tbaa !195
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshDeformModifier_use_dynamic_bind_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !194
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshDeformModifier_use_dynamic_bind_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %4, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !194
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !194
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ParticleSystemModifier_particle_system_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !196
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ParticleSystem, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ParticleInstanceModifier_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !198
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ParticleInstanceModifier_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 1
  store ptr %7, ptr %13, align 8, !tbaa !198
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleInstanceModifier_particle_system_index_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !200
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_particle_system_index_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 2
  store i16 %7, ptr %8, align 8, !tbaa !200
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleInstanceModifier_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 4, !tbaa !201
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 4
  store i16 %5, ptr %6, align 4, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleInstanceModifier_use_normal_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_use_normal_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !202
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleInstanceModifier_use_children_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_use_children_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !202
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleInstanceModifier_use_path_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_use_path_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !202
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleInstanceModifier_show_unborn_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_show_unborn_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !202
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleInstanceModifier_show_alive_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_show_alive_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !202
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleInstanceModifier_show_dead_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_show_dead_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !202
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleInstanceModifier_use_preserve_shape_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_use_preserve_shape_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !202
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ParticleInstanceModifier_use_size_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_use_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !202
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ParticleInstanceModifier_position_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 8, !tbaa !203
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_position_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 8, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ParticleInstanceModifier_random_position_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 4, !tbaa !204
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ParticleInstanceModifier_random_position_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ParticleInstanceModifierData, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 4, !tbaa !204
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ExplodeModifier_vertex_group_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ExplodeModifierData, ptr %4, i64 0, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !205
  %7 = sext i16 %6 to i32
  tail call void @rna_object_vgroup_name_index_get(ptr noundef %0, ptr noundef %1, i32 noundef %7) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ExplodeModifier_vertex_group_length(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ExplodeModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !205
  %6 = sext i16 %5 to i32
  %7 = tail call i32 @rna_object_vgroup_name_index_length(ptr noundef %0, i32 noundef %6) #15
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @ExplodeModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ExplodeModifierData, ptr %4, i64 0, i32 3
  tail call void @rna_object_vgroup_name_index_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ExplodeModifier_protect_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ExplodeModifierData, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !207
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ExplodeModifier_protect_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ExplodeModifierData, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !207
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ExplodeModifier_use_edge_cut_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ExplodeModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !208
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ExplodeModifier_use_edge_cut_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ExplodeModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !208
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ExplodeModifier_show_unborn_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ExplodeModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !208
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ExplodeModifier_show_unborn_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ExplodeModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !208
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ExplodeModifier_show_alive_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ExplodeModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !208
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ExplodeModifier_show_alive_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ExplodeModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !208
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ExplodeModifier_show_dead_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ExplodeModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !208
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ExplodeModifier_show_dead_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ExplodeModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !208
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ExplodeModifier_use_size_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ExplodeModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !208
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ExplodeModifier_use_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ExplodeModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !208
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !208
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ExplodeModifier_particle_uv_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ExplodeModifierData, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ExplodeModifier_particle_uv_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ExplodeModifierData, ptr %3, i64 0, i32 5
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @ExplodeModifier_particle_uv_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ExplodeModifierData, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ClothModifier_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ClothSettings, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ClothModifier_collision_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !211
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_ClothCollisionSettings, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ClothModifier_point_cache_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !212
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PointCache, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CollisionModifier_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !46, !noalias !213
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %5 = load ptr, ptr %4, align 8, !tbaa !216, !noalias !213
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_CollisionSettings, ptr noundef %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BevelModifier_width_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !217
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BevelModifier_width_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BevelModifier_segments_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !219
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BevelModifier_segments_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 100)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 2
  store i32 %6, ptr %7, align 4, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BevelModifier_use_only_vertices_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !220
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BevelModifier_use_only_vertices_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !220
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BevelModifier_limit_method_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !221
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BevelModifier_limit_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 5
  store i16 %5, ptr %6, align 4, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BevelModifier_edge_weight_method_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !222
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BevelModifier_edge_weight_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 6
  store i16 %5, ptr %6, align 2, !tbaa !222
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BevelModifier_angle_limit_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !223
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BevelModifier_angle_limit_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x400921FB60000000
  %7 = select i1 %6, float 0x400921FB60000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 4, !tbaa !223
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BevelModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 12
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BevelModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %3, i64 0, i32 12
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @BevelModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 12
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BevelModifier_use_clamp_overlap_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !220
  %6 = and i16 %5, 8192
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BevelModifier_use_clamp_overlap_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !220
  %8 = and i16 %7, -8193
  %9 = select i1 %5, i16 8192, i16 0
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BevelModifier_offset_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 2, !tbaa !224
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BevelModifier_offset_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 4
  store i16 %5, ptr %6, align 2, !tbaa !224
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @BevelModifier_profile_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 8, !tbaa !225
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BevelModifier_profile_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 10
  store float %8, ptr %9, align 8, !tbaa !225
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BevelModifier_material_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.BevelModifierData, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 8, !tbaa !226
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BevelModifier_material_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.BevelModifierData, ptr %4, i64 0, i32 7
  store i16 %7, ptr %8, align 8, !tbaa !226
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapModifier_wrap_method_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !227
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapModifier_wrap_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 5
  store i16 %5, ptr %6, align 4, !tbaa !227
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapModifier_cull_face_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 2, !tbaa !229
  %6 = and i8 %5, 24
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapModifier_cull_face_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 6
  %6 = load i8, ptr %5, align 2, !tbaa !229
  %7 = and i8 %6, -25
  %8 = trunc i32 %1 to i8
  %9 = or i8 %7, %8
  store i8 %9, ptr %5, align 2, !tbaa !229
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShrinkwrapModifier_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !230
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShrinkwrapModifier_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %6, i64 0, i32 1
  %9 = icmp ne ptr %7, null
  %10 = icmp eq ptr %4, %7
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %8, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %2, %14, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShrinkwrapModifier_auxiliary_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !231
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShrinkwrapModifier_auxiliary_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %6, i64 0, i32 2
  %9 = icmp ne ptr %7, null
  %10 = icmp eq ptr %4, %7
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %8, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %2, %14, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ShrinkwrapModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @ShrinkwrapModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 3
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShrinkwrapModifier_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 8, !tbaa !232
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapModifier_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 4
  store float %1, ptr %5, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ShrinkwrapModifier_project_limit_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 8, !tbaa !233
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapModifier_project_limit_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapModifier_use_project_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 9
  %5 = load i8, ptr %4, align 4, !tbaa !234
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapModifier_use_project_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 9
  %7 = load i8, ptr %6, align 4, !tbaa !234
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapModifier_use_project_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 9
  %5 = load i8, ptr %4, align 4, !tbaa !234
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapModifier_use_project_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 9
  %7 = load i8, ptr %6, align 4, !tbaa !234
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapModifier_use_project_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 9
  %5 = load i8, ptr %4, align 4, !tbaa !234
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapModifier_use_project_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 9
  %7 = load i8, ptr %6, align 4, !tbaa !234
  %8 = and i8 %7, -5
  %9 = select i1 %5, i8 0, i8 4
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapModifier_subsurf_levels_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 10
  %5 = load i8, ptr %4, align 1, !tbaa !235
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapModifier_subsurf_levels_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 6)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 10
  store i8 %7, ptr %8, align 1, !tbaa !235
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapModifier_use_negative_direction_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 2, !tbaa !229
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapModifier_use_negative_direction_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 2, !tbaa !229
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !229
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapModifier_use_positive_direction_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 2, !tbaa !229
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapModifier_use_positive_direction_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 2, !tbaa !229
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !229
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ShrinkwrapModifier_use_keep_above_surface_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 2, !tbaa !229
  %6 = lshr i8 %5, 5
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ShrinkwrapModifier_use_keep_above_surface_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ShrinkwrapModifierData, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 2, !tbaa !229
  %8 = and i8 %7, -33
  %9 = select i1 %5, i8 0, i8 32
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !229
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @FluidSimulationModifier_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.FluidsimModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !236
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_FluidSettings, ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskModifier_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !238
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskModifier_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskModifierData, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 8, !tbaa !238
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskModifier_armature_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !240
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskModifier_armature_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.MaskModifierData, ptr %6, i64 0, i32 1
  %9 = icmp ne ptr %7, null
  %10 = icmp eq ptr %4, %7
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %4, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i16 %16, 25
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %12
  tail call void @id_lib_extern(ptr noundef %4) #15
  store ptr %4, ptr %8, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %2, %14, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskModifierData, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskModifierData, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @MaskModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MaskModifierData, ptr %4, i64 0, i32 2
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MaskModifier_invert_vertex_group_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MaskModifierData, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !241
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MaskModifier_invert_vertex_group_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MaskModifierData, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !241
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !241
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SimpleDeformModifier_deform_method_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 4, !tbaa !242
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SimpleDeformModifier_deform_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %4, i64 0, i32 5
  store i8 %5, ptr %6, align 4, !tbaa !242
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SimpleDeformModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SimpleDeformModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @SimpleDeformModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %4, i64 0, i32 2
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SimpleDeformModifier_origin_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !244
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SimpleDeformModifier_origin_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %4, i64 0, i32 1
  store ptr %7, ptr %13, align 8, !tbaa !244
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SimpleDeformModifier_factor_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 8, !tbaa !245
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SimpleDeformModifier_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %4, i64 0, i32 3
  store float %1, ptr %5, align 8, !tbaa !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SimpleDeformModifier_angle_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 8, !tbaa !245
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SimpleDeformModifier_angle_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %4, i64 0, i32 3
  store float %1, ptr %5, align 8, !tbaa !245
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SimpleDeformModifier_limits_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %4, i64 0, i32 4
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %6, label %13, !llvm.loop !246

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SimpleDeformModifier_limits_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %4, i64 0, i32 4
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %17, %14 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = fcmp olt float %9, 0.000000e+00
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = fcmp ogt float %9, 1.000000e+00
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi float [ 0.000000e+00, %6 ], [ %9, %13 ], [ 1.000000e+00, %11 ]
  %16 = getelementptr inbounds float, ptr %5, i64 %7
  store float %15, ptr %16, align 4, !tbaa !109
  %17 = add nuw nsw i64 %7, 1
  %18 = icmp eq i64 %7, 0
  br i1 %18, label %6, label %19, !llvm.loop !247

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SimpleDeformModifier_lock_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !248
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SimpleDeformModifier_lock_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 1, !tbaa !248
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SimpleDeformModifier_lock_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !248
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SimpleDeformModifier_lock_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SimpleDeformModifierData, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 1, !tbaa !248
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !248
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_object_from_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !249
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_object_from_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 6
  store ptr %7, ptr %13, align 8, !tbaa !249
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_object_to_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !251
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_object_to_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 7
  store ptr %7, ptr %13, align 8, !tbaa !251
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WarpModifier_strength_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WarpModifierData, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 8, !tbaa !252
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WarpModifier_strength_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 10
  store float %1, ptr %5, align 8, !tbaa !252
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WarpModifier_falloff_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WarpModifierData, ptr %3, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !253
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WarpModifier_falloff_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 13
  store i8 %5, ptr %6, align 1, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WarpModifier_falloff_radius_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WarpModifierData, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !254
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WarpModifier_falloff_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 11
  store float %1, ptr %5, align 4, !tbaa !254
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_falloff_curve_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !255
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapping, ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WarpModifier_use_volume_preserve_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WarpModifierData, ptr %3, i64 0, i32 12
  %5 = load i8, ptr %4, align 8, !tbaa !256
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WarpModifier_use_volume_preserve_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 12
  %7 = load i8, ptr %6, align 8, !tbaa !256
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 8, !tbaa !256
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 9
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WarpModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WarpModifierData, ptr %3, i64 0, i32 9
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 9
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !257
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WarpModifier_texture_coords_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WarpModifierData, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !258
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WarpModifier_texture_coords_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 5
  store i32 %1, ptr %5, align 4, !tbaa !258
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WarpModifier_uv_layer_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WarpModifierData, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_uv_layer_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MappingInfoModifierData, ptr %4, i64 0, i32 3
  tail call void @rna_object_uvlayer_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_texture_coords_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !259
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WarpModifier_texture_coords_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.WarpModifierData, ptr %4, i64 0, i32 2
  store ptr %7, ptr %13, align 8, !tbaa !259
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MultiresModifier_subdivision_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MultiresModifierData, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 4, !tbaa !260
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @MultiresModifier_subdivision_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  tail call void @multires_force_update(ptr noundef %3) #15
  %6 = trunc i32 %1 to i8
  %7 = getelementptr inbounds %struct.MultiresModifierData, ptr %5, i64 0, i32 5
  store i8 %6, ptr %7, align 4, !tbaa !260
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MultiresModifier_levels_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MultiresModifierData, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !262
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MultiresModifier_levels_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 4
  %6 = load i8, ptr %5, align 1, !tbaa !263
  %7 = zext i8 %6 to i32
  %8 = icmp slt i32 %1, 0
  %9 = tail call i32 @llvm.smin.i32(i32 %7, i32 %1)
  %10 = trunc i32 %9 to i8
  %11 = select i1 %8, i8 0, i8 %10
  %12 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 1
  store i8 %11, ptr %12, align 8, !tbaa !262
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @rna_MultiresModifier_level_range(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #13 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  store i32 0, ptr %1, align 4, !tbaa !264
  %8 = getelementptr inbounds %struct.MultiresModifierData, ptr %7, i64 0, i32 4
  %9 = load i8, ptr %8, align 1, !tbaa !263
  %10 = zext i8 %9 to i32
  store i32 %10, ptr %2, align 4, !tbaa !264
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MultiresModifier_sculpt_levels_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MultiresModifierData, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 1, !tbaa !265
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MultiresModifier_sculpt_levels_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 4
  %6 = load i8, ptr %5, align 1, !tbaa !263
  %7 = zext i8 %6 to i32
  %8 = icmp slt i32 %1, 0
  %9 = tail call i32 @llvm.smin.i32(i32 %7, i32 %1)
  %10 = trunc i32 %9 to i8
  %11 = select i1 %8, i8 0, i8 %10
  %12 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 2
  store i8 %11, ptr %12, align 1, !tbaa !265
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MultiresModifier_render_levels_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MultiresModifierData, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 2, !tbaa !266
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MultiresModifier_render_levels_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 4
  %6 = load i8, ptr %5, align 1, !tbaa !263
  %7 = zext i8 %6 to i32
  %8 = icmp slt i32 %1, 0
  %9 = tail call i32 @llvm.smin.i32(i32 %7, i32 %1)
  %10 = trunc i32 %9 to i8
  %11 = select i1 %8, i8 0, i8 %10
  %12 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 3
  store i8 %11, ptr %12, align 2, !tbaa !266
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MultiresModifier_total_levels_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MultiresModifierData, ptr %3, i64 0, i32 4
  %5 = load i8, ptr %4, align 1, !tbaa !263
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MultiresModifier_is_external_get(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 25
  %6 = tail call zeroext i8 @CustomData_external_test(ptr noundef nonnull %5, i32 noundef 19) #15
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @MultiresModifier_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !267
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 25, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str, ptr %7
  %10 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %9, i64 noundef 1024) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MultiresModifier_filepath_length(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  %5 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 25, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !268
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str, ptr %6
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #16
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local void @MultiresModifier_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !267
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 25, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !268
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 1024) #15
  tail call void @multires_force_external_reload(ptr noundef %3) #15
  br label %14

14:                                               ; preds = %2, %9, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MultiresModifier_show_only_control_edges_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MultiresModifierData, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !271
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MultiresModifier_show_only_control_edges_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 1, !tbaa !271
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !271
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MultiresModifier_use_subsurf_uv_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MultiresModifierData, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !271
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @MultiresModifier_use_subsurf_uv_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.MultiresModifierData, ptr %4, i64 0, i32 6
  %7 = load i8, ptr %6, align 1, !tbaa !271
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 2, i8 0
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !271
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeModifier_domain_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !272
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SmokeDomainSettings, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeModifier_flow_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeModifierData, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !274
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SmokeFlowSettings, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SmokeModifier_coll_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeModifierData, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !275
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_SmokeCollSettings, ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SmokeModifier_smoke_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SmokeModifierData, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !276
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SmokeModifier_smoke_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SmokeModifierData, ptr %4, i64 0, i32 5
  store i32 %1, ptr %5, align 4, !tbaa !276
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SolidifyModifier_thickness_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !277
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_thickness_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 2
  store float %1, ptr %5, align 8, !tbaa !277
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SolidifyModifier_thickness_clamp_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !279
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_thickness_clamp_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 5
  store float %8, ptr %9, align 4, !tbaa !279
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SolidifyModifier_thickness_vertex_group_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 8, !tbaa !280
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_thickness_vertex_group_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 8, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SolidifyModifier_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !281
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 3
  store float %1, ptr %5, align 4, !tbaa !281
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SolidifyModifier_edge_crease_inner_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 4, !tbaa !282
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_edge_crease_inner_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 4, !tbaa !282
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SolidifyModifier_edge_crease_outer_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 8, !tbaa !283
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_edge_crease_outer_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 8
  store float %8, ptr %9, align 8, !tbaa !283
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SolidifyModifier_edge_crease_rim_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 4, !tbaa !284
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_edge_crease_rim_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 4, !tbaa !284
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SolidifyModifier_material_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 4, !tbaa !285
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_material_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -32768)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 11
  store i16 %7, ptr %8, align 4, !tbaa !285
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SolidifyModifier_material_offset_rim_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 12
  %5 = load i16, ptr %4, align 2, !tbaa !286
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_material_offset_rim_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -32768)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 12
  store i16 %7, ptr %8, align 2, !tbaa !286
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SolidifyModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SolidifyModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @SolidifyModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 1
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SolidifyModifier_use_rim_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !287
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_use_rim_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !287
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SolidifyModifier_use_even_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !287
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_use_even_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !287
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SolidifyModifier_use_quality_normals_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !287
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_use_quality_normals_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !287
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SolidifyModifier_invert_vertex_group_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !287
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_invert_vertex_group_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !287
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SolidifyModifier_use_flip_normals_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !287
  %6 = lshr i32 %5, 5
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_use_flip_normals_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !287
  %8 = and i32 %7, -33
  %9 = select i1 %5, i32 0, i32 32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SolidifyModifier_use_rim_only_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !287
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SolidifyModifier_use_rim_only_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SolidifyModifierData, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !287
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !287
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ScrewModifier_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !288
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ScrewModifier_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 1
  store ptr %7, ptr %13, align 8, !tbaa !288
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ScrewModifier_steps_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !290
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_steps_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 2)
  %7 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !290
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ScrewModifier_render_steps_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !291
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_render_steps_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 2)
  %7 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 3
  store i32 %6, ptr %7, align 4, !tbaa !291
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ScrewModifier_iterations_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !292
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 10000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 4
  store i32 %6, ptr %7, align 8, !tbaa !292
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ScrewModifier_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 4, !tbaa !293
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 7
  store i8 %5, ptr %6, align 4, !tbaa !293
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ScrewModifier_angle_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 8, !tbaa !294
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_angle_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 6
  store float %1, ptr %5, align 8, !tbaa !294
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @ScrewModifier_screw_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !295
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_screw_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 5
  store float %1, ptr %5, align 4, !tbaa !295
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ScrewModifier_use_normal_flip_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 2, !tbaa !296
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_use_normal_flip_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 2, !tbaa !296
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ScrewModifier_use_normal_calculate_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 2, !tbaa !296
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_use_normal_calculate_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 2, !tbaa !296
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ScrewModifier_use_object_screw_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 2, !tbaa !296
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_use_object_screw_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 2, !tbaa !296
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ScrewModifier_use_smooth_shade_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 2, !tbaa !296
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_use_smooth_shade_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 2, !tbaa !296
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ScrewModifier_use_stretch_u_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 2, !tbaa !296
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_use_stretch_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 2, !tbaa !296
  %8 = and i16 %7, -65
  %9 = select i1 %5, i16 0, i16 64
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ScrewModifier_use_stretch_v_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ScrewModifierData, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 2, !tbaa !296
  %6 = lshr i16 %5, 7
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ScrewModifier_use_stretch_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ScrewModifierData, ptr %4, i64 0, i32 9
  %7 = load i16, ptr %6, align 2, !tbaa !296
  %8 = and i16 %7, -129
  %9 = select i1 %5, i16 0, i16 128
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !296
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UVWarpModifier_axis_u_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVWarpModifierData, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !297
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UVWarpModifier_axis_u_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UVWarpModifier_axis_v_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVWarpModifierData, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 1, !tbaa !299
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UVWarpModifier_axis_v_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 2
  store i8 %5, ptr %6, align 1, !tbaa !299
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UVWarpModifier_center_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 4
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %6, label %13, !llvm.loop !300

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @UVWarpModifier_center_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 4
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !109
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %6, label %13, !llvm.loop !301

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_object_from_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !302
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_object_from_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 5
  store ptr %6, ptr %10, align 8, !tbaa !302
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_bone_from_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 6
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UVWarpModifier_bone_from_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVWarpModifierData, ptr %3, i64 0, i32 6
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_bone_from_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 6
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_object_to_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !303
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_object_to_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_lib_extern(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 7
  store ptr %6, ptr %10, align 8, !tbaa !303
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_bone_to_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 8
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UVWarpModifier_bone_to_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVWarpModifierData, ptr %3, i64 0, i32 8
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_bone_to_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 8
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 9
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UVWarpModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVWarpModifierData, ptr %3, i64 0, i32 9
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 9
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 10
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @UVWarpModifier_uv_layer_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.UVWarpModifierData, ptr %3, i64 0, i32 10
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @UVWarpModifier_uv_layer_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %4, i64 0, i32 10
  tail call void @rna_object_uvlayer_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightEditModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightEditModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightEditModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 1
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightEditModifier_falloff_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !304
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightEditModifier_falloff_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 3
  store i16 %5, ptr %6, align 2, !tbaa !304
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightEditModifier_use_add_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !306
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightEditModifier_use_add_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !306
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !306
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightEditModifier_use_remove_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !306
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightEditModifier_use_remove_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !306
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !306
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @VertexWeightEditModifier_default_weight_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !307
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightEditModifier_default_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !307
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightEditModifier_map_curve_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !308
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_CurveMapping, ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @VertexWeightEditModifier_add_threshold_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 8, !tbaa !309
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightEditModifier_add_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 8, !tbaa !309
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @VertexWeightEditModifier_remove_threshold_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 4, !tbaa !310
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightEditModifier_remove_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 4, !tbaa !310
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @VertexWeightEditModifier_mask_constant_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 8, !tbaa !311
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightEditModifier_mask_constant_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 8
  store float %1, ptr %5, align 8, !tbaa !311
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightEditModifier_mask_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 9
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightEditModifier_mask_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 9
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightEditModifier_mask_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 9
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightEditModifier_mask_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !312
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightEditModifier_mask_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !312
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !312
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightEditModifier_mask_tex_use_channel_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !313
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightEditModifier_mask_tex_use_channel_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 10
  store i32 %1, ptr %5, align 4, !tbaa !313
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightEditModifier_mask_tex_mapping_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !314
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightEditModifier_mask_tex_mapping_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 13
  store i32 %1, ptr %5, align 8, !tbaa !314
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightEditModifier_mask_tex_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 14
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightEditModifier_mask_tex_uv_layer_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3, i64 0, i32 14
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightEditModifier_mask_tex_uv_layer_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 14
  tail call void @rna_object_uvlayer_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightEditModifier_mask_tex_map_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !315
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightEditModifier_mask_tex_map_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %4, i64 0, i32 12
  store ptr %7, ptr %13, align 8, !tbaa !315
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_vertex_group_a_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightMixModifier_vertex_group_a_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %3, i64 0, i32 1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_vertex_group_a_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 1
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_vertex_group_b_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightMixModifier_vertex_group_b_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_vertex_group_b_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 2
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @VertexWeightMixModifier_default_weight_a_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 8, !tbaa !316
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightMixModifier_default_weight_a_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 3
  store float %8, ptr %9, align 8, !tbaa !316
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @VertexWeightMixModifier_default_weight_b_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 4, !tbaa !318
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightMixModifier_default_weight_b_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 4, !tbaa !318
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightMixModifier_mix_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !319
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightMixModifier_mix_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 5
  store i8 %5, ptr %6, align 8, !tbaa !319
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightMixModifier_mix_set_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !320
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightMixModifier_mix_set_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 6
  store i8 %5, ptr %6, align 1, !tbaa !320
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @VertexWeightMixModifier_mask_constant_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 8, !tbaa !321
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightMixModifier_mask_constant_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 8
  store float %1, ptr %5, align 8, !tbaa !321
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_mask_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 9
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightMixModifier_mask_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %3, i64 0, i32 9
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_mask_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 9
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_mask_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !322
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_mask_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !322
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !322
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightMixModifier_mask_tex_use_channel_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !323
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightMixModifier_mask_tex_use_channel_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 10
  store i32 %1, ptr %5, align 4, !tbaa !323
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightMixModifier_mask_tex_mapping_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !324
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightMixModifier_mask_tex_mapping_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 13
  store i32 %1, ptr %5, align 8, !tbaa !324
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_mask_tex_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 14
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightMixModifier_mask_tex_uv_layer_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %3, i64 0, i32 14
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_mask_tex_uv_layer_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 14
  tail call void @rna_object_uvlayer_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_mask_tex_map_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !325
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightMixModifier_mask_tex_map_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.WeightVGMixModifierData, ptr %4, i64 0, i32 12
  store ptr %7, ptr %13, align 8, !tbaa !325
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightProximityModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %3, i64 0, i32 1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 1
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightProximityModifier_proximity_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !326
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightProximityModifier_proximity_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightProximityModifier_proximity_geometry_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !328
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightProximityModifier_proximity_geometry_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !328
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_target_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !329
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_target_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 4
  store ptr %7, ptr %13, align 8, !tbaa !329
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @VertexWeightProximityModifier_min_dist_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !330
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightProximityModifier_min_dist_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 12
  store float %8, ptr %9, align 4, !tbaa !330
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @VertexWeightProximityModifier_max_dist_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 8, !tbaa !331
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightProximityModifier_max_dist_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 8, !tbaa !331
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightProximityModifier_falloff_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 4, !tbaa !332
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightProximityModifier_falloff_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 14
  store i16 %5, ptr %6, align 4, !tbaa !332
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @VertexWeightProximityModifier_mask_constant_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !333
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightProximityModifier_mask_constant_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 5
  store float %1, ptr %5, align 8, !tbaa !333
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_mask_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 6
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightProximityModifier_mask_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %3, i64 0, i32 6
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_mask_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 6
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_mask_texture_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Texture, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_mask_texture_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @id_us_min(ptr noundef nonnull %6) #15
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @id_us_plus(ptr noundef nonnull %11) #15
  br label %14

14:                                               ; preds = %13, %9
  store ptr %11, ptr %5, align 8, !tbaa !334
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightProximityModifier_mask_tex_use_channel_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !335
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightProximityModifier_mask_tex_use_channel_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 7
  store i32 %1, ptr %5, align 4, !tbaa !335
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightProximityModifier_mask_tex_mapping_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !336
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @VertexWeightProximityModifier_mask_tex_mapping_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 10
  store i32 %1, ptr %5, align 8, !tbaa !336
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_mask_tex_uv_layer_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @VertexWeightProximityModifier_mask_tex_uv_layer_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %3, i64 0, i32 11
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_mask_tex_uv_layer_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 11
  tail call void @rna_object_uvlayer_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_mask_tex_map_object_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !337
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @VertexWeightProximityModifier_mask_tex_map_object_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @id_lib_extern(ptr noundef nonnull %7) #15
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.WeightVGProximityModifierData, ptr %4, i64 0, i32 9
  store ptr %7, ptr %13, align 8, !tbaa !337
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintModifier_canvas_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !338
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_DynamicPaintCanvasSettings, ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @DynamicPaintModifier_brush_settings_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !340
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_DynamicPaintBrushSettings, ptr noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @DynamicPaintModifier_ui_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !341
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @DynamicPaintModifier_ui_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 8, !tbaa !341
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_geometry_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 20
  %5 = load i8, ptr %4, align 1, !tbaa !342
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_geometry_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 20
  store i8 %5, ptr %6, align 1, !tbaa !342
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_size_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 26
  %5 = load float, ptr %4, align 4, !tbaa !344
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_size_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 26
  store float %8, ptr %9, align 4, !tbaa !344
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_repeat_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 23
  %5 = load i16, ptr %4, align 4, !tbaa !345
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_repeat_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 23
  store i16 %7, ptr %8, align 4, !tbaa !345
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_repeat_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 24
  %5 = load i16, ptr %4, align 2, !tbaa !346
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_repeat_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 24
  store i16 %7, ptr %8, align 2, !tbaa !346
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_use_normals_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 21
  %5 = load i8, ptr %4, align 2, !tbaa !347
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_use_normals_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 21
  %7 = load i8, ptr %6, align 2, !tbaa !347
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !347
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_use_foam_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 21
  %5 = load i8, ptr %4, align 2, !tbaa !347
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_use_foam_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 21
  %7 = load i8, ptr %6, align 2, !tbaa !347
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 2, !tbaa !347
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_resolution_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !348
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_resolution_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 1024)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 3
  store i32 %6, ptr %7, align 8, !tbaa !348
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_spatial_size_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !349
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_spatial_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 4
  store i32 %1, ptr %5, align 4, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_wind_velocity_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 8, !tbaa !350
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_wind_velocity_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 5
  store float %1, ptr %5, align 8, !tbaa !350
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_damping_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 4, !tbaa !351
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_damping_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 6
  store float %8, ptr %9, align 4, !tbaa !351
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_wave_scale_min_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 7
  %5 = load float, ptr %4, align 8, !tbaa !352
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_wave_scale_min_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 7
  store float %8, ptr %9, align 8, !tbaa !352
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_wave_alignment_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 8, !tbaa !353
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_wave_alignment_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+01
  %7 = select i1 %6, float 1.000000e+01, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 8, !tbaa !353
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_wave_direction_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 10
  %5 = load float, ptr %4, align 4, !tbaa !354
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_wave_direction_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 10
  store float %1, ptr %5, align 4, !tbaa !354
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_wave_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 8, !tbaa !355
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_wave_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 8, !tbaa !355
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_depth_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 8
  %5 = load float, ptr %4, align 4, !tbaa !356
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_depth_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 8
  store float %1, ptr %5, align 4, !tbaa !356
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_foam_coverage_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 8, !tbaa !357
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_foam_coverage_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 13
  store float %1, ptr %5, align 8, !tbaa !357
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_bake_foam_fade_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 27
  %5 = load float, ptr %4, align 8, !tbaa !358
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_bake_foam_fade_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 27
  store float %8, ptr %9, align 8, !tbaa !358
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @OceanModifier_foam_layer_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 18
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_foam_layer_name_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 18
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @OceanModifier_foam_layer_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 18
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_choppiness_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !359
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_choppiness_set(ptr nocapture noundef readonly %0, float noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 12
  %6 = load float, ptr %5, align 4, !tbaa !359
  store float %1, ptr %5, align 4, !tbaa !359
  %7 = fcmp oeq float %6, 0.000000e+00
  %8 = fcmp ogt float %1, 0.000000e+00
  %9 = and i1 %8, %7
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = fcmp ogt float %6, 0.000000e+00
  %12 = fcmp oeq float %1, 0.000000e+00
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 22
  %16 = load i8, ptr %15, align 1, !tbaa !360
  %17 = or i8 %16, 9
  store i8 %17, ptr %15, align 1, !tbaa !360
  br label %18

18:                                               ; preds = %10, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @OceanModifier_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 4, !tbaa !361
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_time_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 14
  store float %8, ptr %9, align 4, !tbaa !361
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_random_seed_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 25
  %5 = load i32, ptr %4, align 8, !tbaa !362
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_random_seed_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 25
  store i32 %5, ptr %6, align 8, !tbaa !362
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_frame_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %4, align 8, !tbaa !363
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_frame_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 15
  store i32 %5, ptr %6, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_frame_end_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 4, !tbaa !364
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @OceanModifier_frame_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 16
  store i32 %5, ptr %6, align 4, !tbaa !364
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_is_cached_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 19
  %5 = load i8, ptr %4, align 8, !tbaa !365
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @OceanModifier_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 17
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #15
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @OceanModifier_filepath_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.OceanModifierData, ptr %3, i64 0, i32 17
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @OceanModifier_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.OceanModifierData, ptr %4, i64 0, i32 17
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1024) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RemeshModifier_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.RemeshModifierData, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 2, !tbaa !366
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RemeshModifier_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.RemeshModifierData, ptr %4, i64 0, i32 6
  store i8 %5, ptr %6, align 2, !tbaa !366
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RemeshModifier_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.RemeshModifierData, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !368
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RemeshModifier_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x3FEFAE1480000000
  %7 = select i1 %6, float 0x3FEFAE1480000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.RemeshModifierData, ptr %4, i64 0, i32 2
  store float %8, ptr %9, align 4, !tbaa !368
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RemeshModifier_threshold_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.RemeshModifierData, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !369
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RemeshModifier_threshold_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.RemeshModifierData, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 8, !tbaa !369
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RemeshModifier_octree_depth_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.RemeshModifierData, ptr %3, i64 0, i32 4
  %5 = load i8, ptr %4, align 4, !tbaa !370
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RemeshModifier_octree_depth_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 12)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds %struct.RemeshModifierData, ptr %4, i64 0, i32 4
  store i8 %7, ptr %8, align 4, !tbaa !370
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RemeshModifier_sharpness_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.RemeshModifierData, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 8, !tbaa !371
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @RemeshModifier_sharpness_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.RemeshModifierData, ptr %4, i64 0, i32 3
  store float %1, ptr %5, align 8, !tbaa !371
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RemeshModifier_use_remove_disconnected_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.RemeshModifierData, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !372
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RemeshModifier_use_remove_disconnected_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.RemeshModifierData, ptr %4, i64 0, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !372
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !372
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RemeshModifier_use_smooth_shade_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.RemeshModifierData, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !372
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RemeshModifier_use_smooth_shade_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.RemeshModifierData, ptr %4, i64 0, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !372
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !372
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @SkinModifier_branch_smoothing_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SkinModifierData, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !373
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @SkinModifier_branch_smoothing_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.SkinModifierData, ptr %4, i64 0, i32 1
  store float %8, ptr %9, align 8, !tbaa !373
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SkinModifier_use_smooth_shade_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SkinModifierData, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 4, !tbaa !375
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SkinModifier_use_smooth_shade_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SkinModifierData, ptr %4, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !375
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 4, !tbaa !375
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SkinModifier_use_x_symmetry_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SkinModifierData, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !376
  %6 = and i8 %5, 1
  %7 = zext nneg i8 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SkinModifier_use_x_symmetry_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.SkinModifierData, ptr %4, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !376
  %8 = and i8 %7, -2
  %9 = zext i1 %5 to i8
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !376
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SkinModifier_use_y_symmetry_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SkinModifierData, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !376
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SkinModifier_use_y_symmetry_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SkinModifierData, ptr %4, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !376
  %8 = and i8 %7, -3
  %9 = select i1 %5, i8 0, i8 2
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !376
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @SkinModifier_use_z_symmetry_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.SkinModifierData, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !376
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @SkinModifier_use_z_symmetry_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.SkinModifierData, ptr %4, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !376
  %8 = and i8 %7, -5
  %9 = select i1 %5, i8 0, i8 4
  %10 = or disjoint i8 %8, %9
  store i8 %10, ptr %6, align 1, !tbaa !376
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LaplacianSmoothModifier_use_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !377
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LaplacianSmoothModifier_use_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 4, !tbaa !377
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !377
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LaplacianSmoothModifier_use_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !377
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LaplacianSmoothModifier_use_y_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 4, !tbaa !377
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !377
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LaplacianSmoothModifier_use_z_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !377
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LaplacianSmoothModifier_use_z_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 4, !tbaa !377
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !377
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LaplacianSmoothModifier_use_volume_preserve_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !377
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LaplacianSmoothModifier_use_volume_preserve_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 4, !tbaa !377
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !377
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LaplacianSmoothModifier_use_normalized_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 4, !tbaa !377
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @LaplacianSmoothModifier_use_normalized_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 4, !tbaa !377
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !377
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LaplacianSmoothModifier_lambda_factor_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !379
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LaplacianSmoothModifier_lambda_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %4, i64 0, i32 1
  store float %1, ptr %5, align 8, !tbaa !379
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @LaplacianSmoothModifier_lambda_border_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !380
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LaplacianSmoothModifier_lambda_border_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %4, i64 0, i32 2
  store float %1, ptr %5, align 4, !tbaa !380
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LaplacianSmoothModifier_iterations_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !381
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LaplacianSmoothModifier_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -32768)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %4, i64 0, i32 6
  store i16 %7, ptr %8, align 2, !tbaa !381
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LaplacianSmoothModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LaplacianSmoothModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %3, i64 0, i32 4
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @LaplacianSmoothModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.LaplacianSmoothModifierData, ptr %4, i64 0, i32 4
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TriangulateModifier_quad_method_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.TriangulateModifierData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !382
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TriangulateModifier_quad_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.TriangulateModifierData, ptr %4, i64 0, i32 2
  store i32 %1, ptr %5, align 4, !tbaa !382
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @TriangulateModifier_ngon_method_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.TriangulateModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !384
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @TriangulateModifier_ngon_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.TriangulateModifierData, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 8, !tbaa !384
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshCacheModifier_cache_format_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 1, !tbaa !385
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_cache_format_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 2
  store i8 %5, ptr %6, align 1, !tbaa !385
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshCacheModifier_interpolation_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 1, !tbaa !387
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_interpolation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 8
  store i8 %5, ptr %6, align 1, !tbaa !387
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshCacheModifier_time_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 2, !tbaa !388
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_time_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 3
  store i8 %5, ptr %6, align 2, !tbaa !388
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshCacheModifier_play_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 4
  %5 = load i8, ptr %4, align 1, !tbaa !389
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_play_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 4
  store i8 %5, ptr %6, align 1, !tbaa !389
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshCacheModifier_deform_mode_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 10
  %5 = load i8, ptr %4, align 4, !tbaa !390
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_deform_mode_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 10
  store i8 %5, ptr %6, align 4, !tbaa !390
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MeshCacheModifier_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 17
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshCacheModifier_filepath_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 17
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @MeshCacheModifier_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 17
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1024) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MeshCacheModifier_factor_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 9
  %5 = load float, ptr %4, align 8, !tbaa !391
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 9
  store float %8, ptr %9, align 8, !tbaa !391
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshCacheModifier_forward_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 4, !tbaa !392
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_forward_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 5
  store i8 %5, ptr %6, align 4, !tbaa !392
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshCacheModifier_up_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !393
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_up_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 6
  store i8 %5, ptr %6, align 1, !tbaa !393
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @MeshCacheModifier_flip_axis_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 2, !tbaa !394
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_flip_axis_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 7
  store i8 %5, ptr %6, align 2, !tbaa !394
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MeshCacheModifier_frame_start_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !395
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_frame_start_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, -3.000000e+05
  %6 = fcmp ogt float %1, 3.000000e+05
  %7 = select i1 %6, float 3.000000e+05, float %1
  %8 = select i1 %5, float -3.000000e+05, float %7
  %9 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 12
  store float %8, ptr %9, align 4, !tbaa !395
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MeshCacheModifier_frame_scale_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 8, !tbaa !396
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_frame_scale_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+02
  %7 = select i1 %6, float 1.000000e+02, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 8, !tbaa !396
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MeshCacheModifier_eval_frame_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 14
  %5 = load float, ptr %4, align 4, !tbaa !397
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_eval_frame_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 3.000000e+05
  %7 = select i1 %6, float 3.000000e+05, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 14
  store float %8, ptr %9, align 4, !tbaa !397
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MeshCacheModifier_eval_time_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 8, !tbaa !398
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_eval_time_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 15
  store float %8, ptr %9, align 8, !tbaa !398
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @MeshCacheModifier_eval_factor_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 4, !tbaa !399
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @MeshCacheModifier_eval_factor_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 4, !tbaa !399
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LaplacianDeformModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LaplacianDeformModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %3, i64 0, i32 1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @LaplacianDeformModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %4, i64 0, i32 1
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LaplacianDeformModifier_iterations_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !400
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @LaplacianDeformModifier_iterations_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %4, i64 0, i32 3
  store i32 %1, ptr %5, align 4, !tbaa !400
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @LaplacianDeformModifier_is_bind_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !402
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %3, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !403
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %1, %8
  %14 = phi i32 [ 0, %1 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WireframeModifier_thickness_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 2
  %5 = load float, ptr %4, align 8, !tbaa !404
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WireframeModifier_thickness_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 2
  store float %1, ptr %5, align 8, !tbaa !404
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WireframeModifier_thickness_vertex_group_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 4
  %5 = load float, ptr %4, align 8, !tbaa !406
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WireframeModifier_thickness_vertex_group_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+00
  %7 = select i1 %6, float 1.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 4
  store float %8, ptr %9, align 8, !tbaa !406
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WireframeModifier_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !407
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WireframeModifier_offset_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 3
  store float %1, ptr %5, align 4, !tbaa !407
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WireframeModifier_use_replace_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !408
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WireframeModifier_use_replace_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 8, !tbaa !408
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !408
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WireframeModifier_use_boundary_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !408
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WireframeModifier_use_boundary_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 8, !tbaa !408
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !408
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WireframeModifier_use_even_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !408
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WireframeModifier_use_even_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 8, !tbaa !408
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !408
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WireframeModifier_use_relative_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !408
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WireframeModifier_use_relative_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 8, !tbaa !408
  %8 = and i16 %7, -17
  %9 = select i1 %5, i16 0, i16 16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !408
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WireframeModifier_use_crease_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !408
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WireframeModifier_use_crease_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 8, !tbaa !408
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !408
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @WireframeModifier_crease_weight_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !409
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WireframeModifier_crease_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 5
  store float %1, ptr %5, align 4, !tbaa !409
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WireframeModifier_material_offset_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !410
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @WireframeModifier_material_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32767)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -32768)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 7
  store i16 %7, ptr %8, align 2, !tbaa !410
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WireframeModifier_vertex_group_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 1
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WireframeModifier_vertex_group_length(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @WireframeModifier_vertex_group_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 1
  tail call void @rna_object_vgroup_name_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 64) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @WireframeModifier_invert_vertex_group_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.WireframeModifierData, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !408
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WireframeModifier_invert_vertex_group_set(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.WireframeModifierData, ptr %4, i64 0, i32 6
  %7 = load i16, ptr %6, align 8, !tbaa !408
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !408
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_Modifier_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #15
  %5 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef nonnull ptr @rna_Modifier_refine(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = icmp ult i32 %5, 50
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [50 x ptr], ptr @switch.table.rna_Modifier_refine, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %10, %7 ], [ @RNA_Modifier, %1 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal ptr @rna_Modifier_path(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [128 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #15
  %5 = getelementptr inbounds %struct.ModifierData, ptr %4, i64 0, i32 6
  %6 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %5, i64 noundef 128) #15
  %7 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.1074, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #15
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal void @rna_Modifier_dependency_update(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #15
  %5 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %5) #15
  tail call void @DAG_relations_tag_update(ptr noundef %0) #15
  ret void
}

declare i32 @rna_Lattice_object_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

declare i32 @rna_Curve_object_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

declare i32 @rna_Armature_object_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

declare i32 @rna_Mesh_object_poll(ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) #3

; Function Attrs: nounwind uwtable
define internal void @rna_Smoke_set_type(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = load ptr, ptr %2, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.SmokeModifierData, ptr %5, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !276
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.SmokeModifierData, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !272
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %11, %3
  tail call void @smokeModifier_free(ptr noundef %5) #15
  tail call void @smokeModifier_createType(ptr noundef %5) #15
  %16 = load i32, ptr %7, align 4, !tbaa !276
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 87
  store i8 2, ptr %19, align 2, !tbaa !411
  br label %20

20:                                               ; preds = %15, %18
  %21 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %21, i16 noundef signext 2) #15
  %22 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %22) #15
  tail call void @DAG_relations_tag_update(ptr noundef %0) #15
  br label %23

23:                                               ; preds = %11, %20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_OceanModifier_topology_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.OceanModifierData, ptr %5, i64 0, i32 22
  %7 = load i8, ptr %6, align 1, !tbaa !360
  %8 = or i8 %7, 16
  store i8 %8, ptr %6, align 1, !tbaa !360
  %9 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 2) #15
  %10 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %10) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_OceanModifier_init_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.OceanModifierData, ptr %5, i64 0, i32 22
  %7 = load i8, ptr %6, align 1, !tbaa !360
  %8 = or i8 %7, 11
  store i8 %8, ptr %6, align 1, !tbaa !360
  %9 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 2) #15
  %10 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %10) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rna_OceanModifier_sim_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.OceanModifierData, ptr %5, i64 0, i32 22
  %7 = load i8, ptr %6, align 1, !tbaa !360
  %8 = or i8 %7, 2
  store i8 %8, ptr %6, align 1, !tbaa !360
  %9 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 2) #15
  %10 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @WM_main_add_notifier(i32 noundef 85458944, ptr noundef %10) #15
  ret void
}

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_all_animdata_fix_paths_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rna_object_vgroup_name_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @rna_object_uvlayer_name_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BKE_object_modifier_hook_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #3

declare void @rna_object_vgroup_name_index_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rna_object_vgroup_name_index_length(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @rna_object_vgroup_name_index_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @multires_force_update(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @CustomData_external_test(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @multires_force_external_reload(ptr noundef) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #3

declare void @smokeModifier_free(ptr noundef) local_unnamed_addr #3

declare void @smokeModifier_createType(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 48}
!40 = !{!"CollectionPropertyIterator", !41, i64 0, !41, i64 24, !36, i64 48, !37, i64 56, !43, i64 96, !43, i64 100, !41, i64 104, !43, i64 128}
!41 = !{!"PointerRNA", !42, i64 0, !36, i64 8, !36, i64 16}
!42 = !{!"", !36, i64 0}
!43 = !{!"int", !37, i64 0}
!44 = !{!40, !43, i64 128}
!45 = !{!41, !36, i64 16}
!46 = !{!41, !36, i64 0}
!47 = !{!48, !43, i64 16}
!48 = !{!"ModifierData", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!49 = !{!48, !43, i64 20}
!50 = !{!51, !52, i64 112}
!51 = !{!"SubsurfModifierData", !48, i64 0, !52, i64 112, !52, i64 114, !52, i64 116, !52, i64 118, !36, i64 120, !36, i64 128}
!52 = !{!"short", !37, i64 0}
!53 = !{!51, !52, i64 114}
!54 = !{!51, !52, i64 116}
!55 = !{!51, !52, i64 118}
!56 = !{!57, !36, i64 112}
!57 = !{!"LatticeModifierData", !48, i64 0, !36, i64 112, !37, i64 120, !58, i64 184, !37, i64 188}
!58 = !{!"float", !37, i64 0}
!59 = !{!60, !52, i64 136}
!60 = !{!"Object", !61, i64 0, !36, i64 120, !36, i64 128, !52, i64 136, !52, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !62, i64 312, !36, i64 360, !63, i64 368, !63, i64 384, !63, i64 400, !63, i64 416, !43, i64 432, !43, i64 436, !36, i64 440, !36, i64 448, !43, i64 456, !43, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !58, i64 616, !58, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !43, i64 944, !52, i64 948, !52, i64 950, !52, i64 952, !52, i64 954, !52, i64 956, !52, i64 958, !52, i64 960, !52, i64 962, !52, i64 964, !37, i64 966, !37, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !58, i64 988, !58, i64 992, !58, i64 996, !58, i64 1000, !58, i64 1004, !58, i64 1008, !58, i64 1012, !58, i64 1016, !58, i64 1020, !58, i64 1024, !58, i64 1028, !58, i64 1032, !52, i64 1036, !52, i64 1038, !52, i64 1040, !37, i64 1042, !37, i64 1043, !52, i64 1044, !37, i64 1046, !37, i64 1047, !58, i64 1048, !58, i64 1052, !63, i64 1056, !63, i64 1072, !63, i64 1088, !63, i64 1104, !58, i64 1120, !52, i64 1124, !52, i64 1126, !37, i64 1128, !43, i64 1144, !43, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !52, i64 1162, !37, i64 1164, !63, i64 1176, !63, i64 1192, !63, i64 1208, !63, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !52, i64 1266, !58, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !64, i64 1304, !64, i64 1312, !43, i64 1320, !43, i64 1324, !63, i64 1328, !63, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !63, i64 1400, !36, i64 1416}
!61 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !52, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!62 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !52, i64 16, !52, i64 18, !52, i64 20, !52, i64 22, !52, i64 24, !52, i64 26, !52, i64 28, !52, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!63 = !{!"ListBase", !36, i64 0, !36, i64 8}
!64 = !{!"long", !37, i64 0}
!65 = !{!57, !58, i64 184}
!66 = !{!67, !36, i64 112}
!67 = !{!"CurveModifierData", !48, i64 0, !36, i64 112, !37, i64 120, !52, i64 184, !37, i64 186}
!68 = !{!67, !52, i64 184}
!69 = !{!70, !58, i64 112}
!70 = !{!"BuildModifierData", !48, i64 0, !58, i64 112, !58, i64 116, !52, i64 120, !52, i64 122, !43, i64 124}
!71 = !{!70, !58, i64 116}
!72 = !{!70, !52, i64 120}
!73 = !{!70, !43, i64 124}
!74 = !{!75, !52, i64 114}
!75 = !{!"MirrorModifierData", !48, i64 0, !52, i64 112, !52, i64 114, !58, i64 116, !36, i64 120}
!76 = !{!75, !58, i64 116}
!77 = !{!75, !36, i64 120}
!78 = !{!79, !52, i64 190}
!79 = !{!"DecimateModifierData", !48, i64 0, !58, i64 112, !52, i64 116, !37, i64 118, !37, i64 119, !58, i64 120, !37, i64 124, !52, i64 188, !52, i64 190, !43, i64 192, !43, i64 196}
!80 = !{!79, !58, i64 112}
!81 = !{!79, !52, i64 116}
!82 = !{!79, !58, i64 120}
!83 = !{!79, !52, i64 188}
!84 = !{!79, !37, i64 118}
!85 = !{!79, !43, i64 192}
!86 = !{!87, !52, i64 272}
!87 = !{!"WaveModifierData", !48, i64 0, !36, i64 112, !36, i64 120, !37, i64 128, !43, i64 192, !43, i64 196, !36, i64 200, !37, i64 208, !52, i64 272, !52, i64 274, !58, i64 276, !58, i64 280, !58, i64 284, !58, i64 288, !58, i64 292, !58, i64 296, !58, i64 300, !58, i64 304, !58, i64 308, !58, i64 312, !58, i64 316}
!88 = !{!87, !58, i64 308}
!89 = !{!87, !58, i64 312}
!90 = !{!87, !58, i64 300}
!91 = !{!87, !58, i64 304}
!92 = !{!87, !58, i64 276}
!93 = !{!87, !58, i64 280}
!94 = !{!87, !36, i64 200}
!95 = !{!87, !58, i64 296}
!96 = !{!87, !58, i64 284}
!97 = !{!87, !58, i64 288}
!98 = !{!87, !58, i64 292}
!99 = !{!87, !36, i64 112}
!100 = !{!87, !43, i64 196}
!101 = !{!87, !36, i64 120}
!102 = !{!103, !36, i64 120}
!103 = !{!"ArmatureModifierData", !48, i64 0, !52, i64 112, !52, i64 114, !43, i64 116, !36, i64 120, !36, i64 128, !37, i64 136}
!104 = !{!103, !52, i64 112}
!105 = !{!103, !52, i64 114}
!106 = !{!107, !58, i64 260}
!107 = !{!"HookModifierData", !48, i64 0, !36, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !58, i64 260, !36, i64 264, !43, i64 272, !58, i64 276, !37, i64 280}
!108 = !{!107, !58, i64 276}
!109 = !{!58, !58, i64 0}
!110 = distinct !{!110, !111, !112}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!"llvm.loop.unroll.disable"}
!113 = distinct !{!113, !111, !112}
!114 = !{!107, !36, i64 112}
!115 = !{!116}
!116 = distinct !{!116, !117, !"rna_SoftBodyModifier_settings_get: argument 0"}
!117 = distinct !{!117, !"rna_SoftBodyModifier_settings_get"}
!118 = !{!60, !36, i64 1248}
!119 = !{!120}
!120 = distinct !{!120, !121, !"rna_SoftBodyModifier_point_cache_get: argument 0"}
!121 = distinct !{!121, !"rna_SoftBodyModifier_point_cache_get"}
!122 = !{!123, !36, i64 352}
!123 = !{!"SoftBody", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !52, i64 26, !58, i64 28, !37, i64 32, !58, i64 96, !58, i64 100, !58, i64 104, !58, i64 108, !58, i64 112, !58, i64 116, !58, i64 120, !58, i64 124, !58, i64 128, !52, i64 132, !37, i64 134, !52, i64 198, !58, i64 200, !58, i64 204, !37, i64 208, !43, i64 272, !43, i64 276, !43, i64 280, !52, i64 284, !52, i64 286, !36, i64 288, !43, i64 296, !43, i64 300, !58, i64 304, !58, i64 308, !58, i64 312, !58, i64 316, !52, i64 320, !52, i64 322, !52, i64 324, !52, i64 326, !52, i64 328, !52, i64 330, !52, i64 332, !52, i64 334, !36, i64 336, !58, i64 344, !58, i64 348, !36, i64 352, !63, i64 360, !36, i64 376, !37, i64 384, !37, i64 396, !37, i64 432, !43, i64 468}
!124 = !{!125, !36, i64 112}
!125 = !{!"BooleanModifierData", !48, i64 0, !36, i64 112, !43, i64 120, !43, i64 124}
!126 = !{!125, !43, i64 120}
!127 = !{!128, !43, i64 176}
!128 = !{!"ArrayModifierData", !48, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !37, i64 144, !37, i64 156, !58, i64 168, !58, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188}
!129 = !{!128, !43, i64 188}
!130 = !{!128, !58, i64 168}
!131 = !{!128, !36, i64 128}
!132 = !{!128, !43, i64 180}
!133 = distinct !{!133, !111, !112}
!134 = distinct !{!134, !111, !112}
!135 = distinct !{!135, !111, !112}
!136 = distinct !{!136, !111, !112}
!137 = !{!128, !43, i64 184}
!138 = !{!128, !58, i64 172}
!139 = !{!128, !36, i64 136}
!140 = !{!128, !36, i64 112}
!141 = !{!128, !36, i64 120}
!142 = !{!143, !58, i64 112}
!143 = !{!"EdgeSplitModifierData", !48, i64 0, !58, i64 112, !43, i64 116}
!144 = !{!143, !43, i64 116}
!145 = !{!146, !58, i64 272}
!146 = !{!"DisplaceModifierData", !48, i64 0, !36, i64 112, !36, i64 120, !37, i64 128, !43, i64 192, !43, i64 196, !58, i64 200, !43, i64 204, !37, i64 208, !58, i64 272, !43, i64 276}
!147 = !{!146, !58, i64 200}
!148 = !{!146, !43, i64 204}
!149 = !{!146, !36, i64 112}
!150 = !{!146, !43, i64 196}
!151 = !{!146, !36, i64 120}
!152 = !{!153, !43, i64 204}
!153 = !{!"UVProjectModifierData", !48, i64 0, !37, i64 112, !36, i64 192, !43, i64 200, !43, i64 204, !58, i64 208, !58, i64 212, !58, i64 216, !58, i64 220, !37, i64 224, !43, i64 288, !43, i64 292}
!154 = !{!155}
!155 = distinct !{!155, !156, !"UVProjectModifier_projectors_get: argument 0"}
!156 = distinct !{!156, !"UVProjectModifier_projectors_get"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"UVProjectModifier_projectors_get: argument 0"}
!159 = distinct !{!159, !"UVProjectModifier_projectors_get"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"UVProjectModifier_projectors_get: argument 0"}
!162 = distinct !{!162, !"UVProjectModifier_projectors_get"}
!163 = !{!164, !36, i64 32}
!164 = !{!"ArrayIterator", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !43, i64 28, !36, i64 32}
!165 = distinct !{!165, !111, !112}
!166 = !{!164, !43, i64 24}
!167 = !{!164, !36, i64 0}
!168 = !{!169}
!169 = distinct !{!169, !170, !"UVProjectModifier_projectors_get: argument 0"}
!170 = distinct !{!170, !"UVProjectModifier_projectors_get"}
!171 = !{!153, !36, i64 192}
!172 = !{!153, !58, i64 208}
!173 = !{!153, !58, i64 212}
!174 = !{!153, !58, i64 216}
!175 = !{!153, !58, i64 220}
!176 = !{!153, !43, i64 200}
!177 = !{!178}
!178 = distinct !{!178, !179, !"rna_UVProjector_object_get: argument 0"}
!179 = distinct !{!179, !"rna_UVProjector_object_get"}
!180 = !{!181, !52, i64 180}
!181 = !{!"SmoothModifierData", !48, i64 0, !58, i64 112, !37, i64 116, !52, i64 180, !52, i64 182}
!182 = !{!181, !58, i64 112}
!183 = !{!181, !52, i64 182}
!184 = !{!185, !52, i64 198}
!185 = !{!"CastModifierData", !48, i64 0, !36, i64 112, !58, i64 120, !58, i64 124, !58, i64 128, !37, i64 132, !52, i64 196, !52, i64 198}
!186 = !{!185, !36, i64 112}
!187 = !{!185, !52, i64 196}
!188 = !{!185, !58, i64 120}
!189 = !{!185, !58, i64 124}
!190 = !{!185, !58, i64 128}
!191 = !{!192, !36, i64 112}
!192 = !{!"MeshDeformModifierData", !48, i64 0, !36, i64 112, !37, i64 120, !52, i64 184, !52, i64 186, !37, i64 188, !36, i64 192, !36, i64 200, !36, i64 208, !43, i64 216, !43, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !43, i64 248, !43, i64 252, !37, i64 256, !58, i64 268, !37, i64 272, !36, i64 336, !36, i64 344, !36, i64 352}
!193 = !{!192, !36, i64 208}
!194 = !{!192, !52, i64 186}
!195 = !{!192, !52, i64 184}
!196 = !{!197, !36, i64 112}
!197 = !{!"ParticleSystemModifierData", !48, i64 0, !36, i64 112, !36, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !52, i64 140, !52, i64 142}
!198 = !{!199, !36, i64 112}
!199 = !{!"ParticleInstanceModifierData", !48, i64 0, !36, i64 112, !52, i64 120, !52, i64 122, !52, i64 124, !52, i64 126, !58, i64 128, !58, i64 132}
!200 = !{!199, !52, i64 120}
!201 = !{!199, !52, i64 124}
!202 = !{!199, !52, i64 122}
!203 = !{!199, !58, i64 128}
!204 = !{!199, !58, i64 132}
!205 = !{!206, !52, i64 122}
!206 = !{!"ExplodeModifierData", !48, i64 0, !36, i64 112, !52, i64 120, !52, i64 122, !58, i64 124, !37, i64 128}
!207 = !{!206, !58, i64 124}
!208 = !{!206, !52, i64 120}
!209 = !{!210, !36, i64 128}
!210 = !{!"ClothModifierData", !48, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !63, i64 152}
!211 = !{!210, !36, i64 136}
!212 = !{!210, !36, i64 144}
!213 = !{!214}
!214 = distinct !{!214, !215, !"rna_CollisionModifier_settings_get: argument 0"}
!215 = distinct !{!215, !"rna_CollisionModifier_settings_get"}
!216 = !{!60, !36, i64 1240}
!217 = !{!218, !58, i64 112}
!218 = !{!"BevelModifierData", !48, i64 0, !58, i64 112, !43, i64 116, !52, i64 120, !52, i64 122, !52, i64 124, !52, i64 126, !52, i64 128, !52, i64 130, !43, i64 132, !58, i64 136, !58, i64 140, !37, i64 144}
!219 = !{!218, !43, i64 116}
!220 = !{!218, !52, i64 120}
!221 = !{!218, !52, i64 124}
!222 = !{!218, !52, i64 126}
!223 = !{!218, !58, i64 140}
!224 = !{!218, !52, i64 122}
!225 = !{!218, !58, i64 136}
!226 = !{!218, !52, i64 128}
!227 = !{!228, !52, i64 196}
!228 = !{!"ShrinkwrapModifierData", !48, i64 0, !36, i64 112, !36, i64 120, !37, i64 128, !58, i64 192, !52, i64 196, !37, i64 198, !37, i64 199, !58, i64 200, !37, i64 204, !37, i64 205, !37, i64 206}
!229 = !{!228, !37, i64 198}
!230 = !{!228, !36, i64 112}
!231 = !{!228, !36, i64 120}
!232 = !{!228, !58, i64 192}
!233 = !{!228, !58, i64 200}
!234 = !{!228, !37, i64 204}
!235 = !{!228, !37, i64 205}
!236 = !{!237, !36, i64 112}
!237 = !{!"FluidsimModifierData", !48, i64 0, !36, i64 112, !36, i64 120}
!238 = !{!239, !43, i64 184}
!239 = !{!"MaskModifierData", !48, i64 0, !36, i64 112, !37, i64 120, !43, i64 184, !43, i64 188}
!240 = !{!239, !36, i64 112}
!241 = !{!239, !43, i64 188}
!242 = !{!243, !37, i64 196}
!243 = !{!"SimpleDeformModifierData", !48, i64 0, !36, i64 112, !37, i64 120, !58, i64 184, !37, i64 188, !37, i64 196, !37, i64 197, !37, i64 198}
!244 = !{!243, !36, i64 112}
!245 = !{!243, !58, i64 184}
!246 = distinct !{!246, !111, !112}
!247 = distinct !{!247, !111, !112}
!248 = !{!243, !37, i64 197}
!249 = !{!250, !36, i64 200}
!250 = !{!"WarpModifierData", !48, i64 0, !36, i64 112, !36, i64 120, !37, i64 128, !43, i64 192, !43, i64 196, !36, i64 200, !36, i64 208, !36, i64 216, !37, i64 224, !58, i64 288, !58, i64 292, !37, i64 296, !37, i64 297, !37, i64 298}
!251 = !{!250, !36, i64 208}
!252 = !{!250, !58, i64 288}
!253 = !{!250, !37, i64 297}
!254 = !{!250, !58, i64 292}
!255 = !{!250, !36, i64 216}
!256 = !{!250, !37, i64 296}
!257 = !{!250, !36, i64 112}
!258 = !{!250, !43, i64 196}
!259 = !{!250, !36, i64 120}
!260 = !{!261, !37, i64 116}
!261 = !{!"MultiresModifierData", !48, i64 0, !37, i64 112, !37, i64 113, !37, i64 114, !37, i64 115, !37, i64 116, !37, i64 117, !37, i64 118}
!262 = !{!261, !37, i64 112}
!263 = !{!261, !37, i64 115}
!264 = !{!43, !43, i64 0}
!265 = !{!261, !37, i64 113}
!266 = !{!261, !37, i64 114}
!267 = !{!60, !36, i64 296}
!268 = !{!269, !36, i64 1272}
!269 = !{!"Mesh", !61, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !270, i64 280, !270, i64 480, !270, i64 680, !270, i64 880, !270, i64 1080, !43, i64 1280, !43, i64 1284, !43, i64 1288, !43, i64 1292, !43, i64 1296, !43, i64 1300, !43, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !43, i64 1344, !52, i64 1348, !52, i64 1350, !58, i64 1352, !43, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !52, i64 1366, !36, i64 1368}
!270 = !{!"CustomData", !36, i64 0, !37, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !36, i64 184, !36, i64 192}
!271 = !{!261, !37, i64 117}
!272 = !{!273, !36, i64 112}
!273 = !{!"SmokeModifierData", !48, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !58, i64 136, !43, i64 140}
!274 = !{!273, !36, i64 120}
!275 = !{!273, !36, i64 128}
!276 = !{!273, !43, i64 140}
!277 = !{!278, !58, i64 176}
!278 = !{!"SolidifyModifierData", !48, i64 0, !37, i64 112, !58, i64 176, !58, i64 180, !58, i64 184, !58, i64 188, !58, i64 192, !58, i64 196, !58, i64 200, !58, i64 204, !43, i64 208, !52, i64 212, !52, i64 214}
!279 = !{!278, !58, i64 188}
!280 = !{!278, !58, i64 184}
!281 = !{!278, !58, i64 180}
!282 = !{!278, !58, i64 196}
!283 = !{!278, !58, i64 200}
!284 = !{!278, !58, i64 204}
!285 = !{!278, !52, i64 212}
!286 = !{!278, !52, i64 214}
!287 = !{!278, !43, i64 208}
!288 = !{!289, !36, i64 112}
!289 = !{!"ScrewModifierData", !48, i64 0, !36, i64 112, !43, i64 120, !43, i64 124, !43, i64 128, !58, i64 132, !58, i64 136, !37, i64 140, !37, i64 141, !52, i64 142}
!290 = !{!289, !43, i64 120}
!291 = !{!289, !43, i64 124}
!292 = !{!289, !43, i64 128}
!293 = !{!289, !37, i64 140}
!294 = !{!289, !58, i64 136}
!295 = !{!289, !58, i64 132}
!296 = !{!289, !52, i64 142}
!297 = !{!298, !37, i64 112}
!298 = !{!"UVWarpModifierData", !48, i64 0, !37, i64 112, !37, i64 113, !37, i64 114, !37, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !37, i64 208, !37, i64 272, !37, i64 336}
!299 = !{!298, !37, i64 113}
!300 = distinct !{!300, !111, !112}
!301 = distinct !{!301, !111, !112}
!302 = !{!298, !36, i64 128}
!303 = !{!298, !36, i64 200}
!304 = !{!305, !52, i64 178}
!305 = !{!"WeightVGEditModifierData", !48, i64 0, !37, i64 112, !52, i64 176, !52, i64 178, !58, i64 180, !36, i64 184, !58, i64 192, !58, i64 196, !58, i64 200, !37, i64 204, !43, i64 268, !36, i64 272, !36, i64 280, !43, i64 288, !37, i64 292, !43, i64 356}
!306 = !{!305, !52, i64 176}
!307 = !{!305, !58, i64 180}
!308 = !{!305, !36, i64 184}
!309 = !{!305, !58, i64 192}
!310 = !{!305, !58, i64 196}
!311 = !{!305, !58, i64 200}
!312 = !{!305, !36, i64 272}
!313 = !{!305, !43, i64 268}
!314 = !{!305, !43, i64 288}
!315 = !{!305, !36, i64 280}
!316 = !{!317, !58, i64 240}
!317 = !{!"WeightVGMixModifierData", !48, i64 0, !37, i64 112, !37, i64 176, !58, i64 240, !58, i64 244, !37, i64 248, !37, i64 249, !37, i64 250, !58, i64 256, !37, i64 260, !43, i64 324, !36, i64 328, !36, i64 336, !43, i64 344, !37, i64 348, !43, i64 412}
!318 = !{!317, !58, i64 244}
!319 = !{!317, !37, i64 248}
!320 = !{!317, !37, i64 249}
!321 = !{!317, !58, i64 256}
!322 = !{!317, !36, i64 328}
!323 = !{!317, !43, i64 324}
!324 = !{!317, !43, i64 344}
!325 = !{!317, !36, i64 336}
!326 = !{!327, !43, i64 176}
!327 = !{!"WeightVGProximityModifierData", !48, i64 0, !37, i64 112, !43, i64 176, !43, i64 180, !36, i64 184, !58, i64 192, !37, i64 196, !43, i64 260, !36, i64 264, !36, i64 272, !43, i64 280, !37, i64 284, !58, i64 348, !58, i64 352, !52, i64 356, !52, i64 358}
!328 = !{!327, !43, i64 180}
!329 = !{!327, !36, i64 184}
!330 = !{!327, !58, i64 348}
!331 = !{!327, !58, i64 352}
!332 = !{!327, !52, i64 356}
!333 = !{!327, !58, i64 192}
!334 = !{!327, !36, i64 264}
!335 = !{!327, !43, i64 260}
!336 = !{!327, !43, i64 280}
!337 = !{!327, !36, i64 272}
!338 = !{!339, !36, i64 112}
!339 = !{!"DynamicPaintModifierData", !48, i64 0, !36, i64 112, !36, i64 120, !43, i64 128, !43, i64 132}
!340 = !{!339, !36, i64 120}
!341 = !{!339, !43, i64 128}
!342 = !{!343, !37, i64 1273}
!343 = !{!"OceanModifierData", !48, i64 0, !36, i64 112, !36, i64 120, !43, i64 128, !43, i64 132, !58, i64 136, !58, i64 140, !58, i64 144, !58, i64 148, !58, i64 152, !58, i64 156, !58, i64 160, !58, i64 164, !58, i64 168, !58, i64 172, !43, i64 176, !43, i64 180, !37, i64 184, !37, i64 1208, !37, i64 1272, !37, i64 1273, !37, i64 1274, !37, i64 1275, !52, i64 1276, !52, i64 1278, !43, i64 1280, !58, i64 1284, !58, i64 1288, !43, i64 1292}
!344 = !{!343, !58, i64 1284}
!345 = !{!343, !52, i64 1276}
!346 = !{!343, !52, i64 1278}
!347 = !{!343, !37, i64 1274}
!348 = !{!343, !43, i64 128}
!349 = !{!343, !43, i64 132}
!350 = !{!343, !58, i64 136}
!351 = !{!343, !58, i64 140}
!352 = !{!343, !58, i64 144}
!353 = !{!343, !58, i64 152}
!354 = !{!343, !58, i64 156}
!355 = !{!343, !58, i64 160}
!356 = !{!343, !58, i64 148}
!357 = !{!343, !58, i64 168}
!358 = !{!343, !58, i64 1288}
!359 = !{!343, !58, i64 164}
!360 = !{!343, !37, i64 1275}
!361 = !{!343, !58, i64 172}
!362 = !{!343, !43, i64 1280}
!363 = !{!343, !43, i64 176}
!364 = !{!343, !43, i64 180}
!365 = !{!343, !37, i64 1272}
!366 = !{!367, !37, i64 126}
!367 = !{!"RemeshModifierData", !48, i64 0, !58, i64 112, !58, i64 116, !58, i64 120, !37, i64 124, !37, i64 125, !37, i64 126, !37, i64 127}
!368 = !{!367, !58, i64 116}
!369 = !{!367, !58, i64 112}
!370 = !{!367, !37, i64 124}
!371 = !{!367, !58, i64 120}
!372 = !{!367, !37, i64 125}
!373 = !{!374, !58, i64 112}
!374 = !{!"SkinModifierData", !48, i64 0, !58, i64 112, !37, i64 116, !37, i64 117, !37, i64 118}
!375 = !{!374, !37, i64 116}
!376 = !{!374, !37, i64 117}
!377 = !{!378, !52, i64 188}
!378 = !{!"LaplacianSmoothModifierData", !48, i64 0, !58, i64 112, !58, i64 116, !58, i64 120, !37, i64 124, !52, i64 188, !52, i64 190}
!379 = !{!378, !58, i64 112}
!380 = !{!378, !58, i64 116}
!381 = !{!378, !52, i64 190}
!382 = !{!383, !43, i64 116}
!383 = !{!"TriangulateModifierData", !48, i64 0, !43, i64 112, !43, i64 116, !43, i64 120, !43, i64 124}
!384 = !{!383, !43, i64 120}
!385 = !{!386, !37, i64 113}
!386 = !{!"MeshCacheModifierData", !48, i64 0, !37, i64 112, !37, i64 113, !37, i64 114, !37, i64 115, !37, i64 116, !37, i64 117, !37, i64 118, !37, i64 119, !58, i64 120, !37, i64 124, !37, i64 125, !58, i64 132, !58, i64 136, !58, i64 140, !58, i64 144, !58, i64 148, !37, i64 152}
!387 = !{!386, !37, i64 119}
!388 = !{!386, !37, i64 114}
!389 = !{!386, !37, i64 115}
!390 = !{!386, !37, i64 124}
!391 = !{!386, !58, i64 120}
!392 = !{!386, !37, i64 116}
!393 = !{!386, !37, i64 117}
!394 = !{!386, !37, i64 118}
!395 = !{!386, !58, i64 132}
!396 = !{!386, !58, i64 136}
!397 = !{!386, !58, i64 140}
!398 = !{!386, !58, i64 144}
!399 = !{!386, !58, i64 148}
!400 = !{!401, !43, i64 180}
!401 = !{!"LaplacianDeformModifierData", !48, i64 0, !37, i64 112, !43, i64 176, !43, i64 180, !36, i64 184, !36, i64 192, !52, i64 200, !37, i64 202}
!402 = !{!401, !52, i64 200}
!403 = !{!401, !36, i64 192}
!404 = !{!405, !58, i64 176}
!405 = !{!"WireframeModifierData", !48, i64 0, !37, i64 112, !58, i64 176, !58, i64 180, !58, i64 184, !58, i64 188, !52, i64 192, !52, i64 194, !37, i64 196}
!406 = !{!405, !58, i64 184}
!407 = !{!405, !58, i64 180}
!408 = !{!405, !52, i64 192}
!409 = !{!405, !58, i64 188}
!410 = !{!405, !52, i64 194}
!411 = !{!60, !37, i64 1046}
