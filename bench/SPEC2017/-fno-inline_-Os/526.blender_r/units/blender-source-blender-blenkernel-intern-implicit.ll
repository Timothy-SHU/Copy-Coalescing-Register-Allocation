; ModuleID = 'blender/source/blender/blenkernel/intern/implicit.c'
source_filename = "blender/source/blender/blenkernel/intern/implicit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Cloth = type { ptr, ptr, i32, i32, i32, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.fmatrix3x3 = type { [3 x [3 x float]], i32, i32, float, float, float, i32, i32 }
%struct.Implicit_Data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ClothVertex = type { i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], ptr, i32, float, float, float, float, i32, float }
%struct.LinkNode = type { ptr, ptr }
%struct.ClothSpring = type { i32, i32, float, i32, i32, i32, [3 x [3 x float]], [3 x [3 x float]], [3 x float], float, float }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.ClothCollSettings = type { ptr, float, float, float, float, float, float, i32, i16, i16, ptr, i16, i16, i32 }
%struct.EffectedPoint = type { ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.EffectorWeights = type { ptr, [14 x float], float, i16, [3 x i16], i32 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.HairGridVert = type { [3 x float], float }
%struct.ColliderCache = type { ptr, ptr, ptr, ptr }
%struct.CollisionModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, float, float, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }

@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"implicit vecmat\00", align 1
@I = internal global [3 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00]], align 16
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"initial_cos implicit.c\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"cloth_implicit_alloc_matrix\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"cloth_implicit_alloc_vector\00", align 1
@ZERO = internal global [3 x [3 x float]] zeroinitializer, align 16
@str = private unnamed_addr constant [14 x i8] c"implicit_init\00", align 1
@str.7 = private unnamed_addr constant [36 x i8] c"winvec: out of memory in implicit.c\00", align 1
@str.8 = private unnamed_addr constant [23 x i8] c"implicit_set_positions\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @implicit_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !34
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %13 = tail call ptr %12(i64 noundef 136, ptr noundef nonnull @.str.1) #15
  %14 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 11
  store ptr %13, ptr %14, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %20 = add i32 %18, %16
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 6
  %23 = tail call ptr %19(i64 noundef %22, ptr noundef nonnull @.str.4) #15
  %24 = getelementptr inbounds %struct.fmatrix3x3, ptr %23, i64 0, i32 6
  store i32 %16, ptr %24, align 4, !tbaa !51
  %25 = getelementptr inbounds %struct.fmatrix3x3, ptr %23, i64 0, i32 7
  store i32 %18, ptr %25, align 4, !tbaa !54
  %26 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 9
  store ptr %23, ptr %26, align 8, !tbaa !55
  %27 = load i32, ptr %15, align 8, !tbaa !49
  %28 = load i32, ptr %17, align 4, !tbaa !50
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %30 = add i32 %28, %27
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 6
  %33 = tail call ptr %29(i64 noundef %32, ptr noundef nonnull @.str.4) #15
  %34 = getelementptr inbounds %struct.fmatrix3x3, ptr %33, i64 0, i32 6
  store i32 %27, ptr %34, align 4, !tbaa !51
  %35 = getelementptr inbounds %struct.fmatrix3x3, ptr %33, i64 0, i32 7
  store i32 %28, ptr %35, align 4, !tbaa !54
  %36 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 10
  store ptr %33, ptr %36, align 8, !tbaa !57
  %37 = load i32, ptr %15, align 8, !tbaa !49
  %38 = load i32, ptr %17, align 4, !tbaa !50
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %40 = add i32 %38, %37
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 6
  %43 = tail call ptr %39(i64 noundef %42, ptr noundef nonnull @.str.4) #15
  %44 = getelementptr inbounds %struct.fmatrix3x3, ptr %43, i64 0, i32 6
  store i32 %37, ptr %44, align 4, !tbaa !51
  %45 = getelementptr inbounds %struct.fmatrix3x3, ptr %43, i64 0, i32 7
  store i32 %38, ptr %45, align 4, !tbaa !54
  %46 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 11
  store ptr %43, ptr %46, align 8, !tbaa !58
  %47 = load i32, ptr %15, align 8, !tbaa !49
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %49 = zext i32 %47 to i64
  %50 = shl nuw nsw i64 %49, 6
  %51 = tail call ptr %48(i64 noundef %50, ptr noundef nonnull @.str.4) #15
  %52 = getelementptr inbounds %struct.fmatrix3x3, ptr %51, i64 0, i32 6
  store i32 %47, ptr %52, align 4, !tbaa !51
  %53 = getelementptr inbounds %struct.fmatrix3x3, ptr %51, i64 0, i32 7
  store i32 0, ptr %53, align 4, !tbaa !54
  %54 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 12
  store ptr %51, ptr %54, align 8, !tbaa !59
  %55 = load i32, ptr %15, align 8, !tbaa !49
  %56 = load i32, ptr %17, align 4, !tbaa !50
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %58 = add i32 %56, %55
  %59 = zext i32 %58 to i64
  %60 = shl nuw nsw i64 %59, 6
  %61 = tail call ptr %57(i64 noundef %60, ptr noundef nonnull @.str.4) #15
  %62 = getelementptr inbounds %struct.fmatrix3x3, ptr %61, i64 0, i32 6
  store i32 %55, ptr %62, align 4, !tbaa !51
  %63 = getelementptr inbounds %struct.fmatrix3x3, ptr %61, i64 0, i32 7
  store i32 %56, ptr %63, align 4, !tbaa !54
  %64 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 14
  store ptr %61, ptr %64, align 8, !tbaa !60
  %65 = load i32, ptr %15, align 8, !tbaa !49
  %66 = load i32, ptr %17, align 4, !tbaa !50
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %68 = add i32 %66, %65
  %69 = zext i32 %68 to i64
  %70 = shl nuw nsw i64 %69, 6
  %71 = tail call ptr %67(i64 noundef %70, ptr noundef nonnull @.str.4) #15
  %72 = getelementptr inbounds %struct.fmatrix3x3, ptr %71, i64 0, i32 6
  store i32 %65, ptr %72, align 4, !tbaa !51
  %73 = getelementptr inbounds %struct.fmatrix3x3, ptr %71, i64 0, i32 7
  store i32 %66, ptr %73, align 4, !tbaa !54
  %74 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 13
  store ptr %71, ptr %74, align 8, !tbaa !61
  %75 = load i32, ptr %15, align 8, !tbaa !49
  %76 = load i32, ptr %17, align 4, !tbaa !50
  %77 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %78 = add i32 %76, %75
  %79 = zext i32 %78 to i64
  %80 = shl nuw nsw i64 %79, 6
  %81 = tail call ptr %77(i64 noundef %80, ptr noundef nonnull @.str.4) #15
  %82 = getelementptr inbounds %struct.fmatrix3x3, ptr %81, i64 0, i32 6
  store i32 %75, ptr %82, align 4, !tbaa !51
  %83 = getelementptr inbounds %struct.fmatrix3x3, ptr %81, i64 0, i32 7
  store i32 %76, ptr %83, align 4, !tbaa !54
  %84 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 15
  store ptr %81, ptr %84, align 8, !tbaa !62
  %85 = load i32, ptr %15, align 8, !tbaa !49
  %86 = load i32, ptr %17, align 4, !tbaa !50
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %88 = add i32 %86, %85
  %89 = zext i32 %88 to i64
  %90 = shl nuw nsw i64 %89, 6
  %91 = tail call ptr %87(i64 noundef %90, ptr noundef nonnull @.str.4) #15
  %92 = getelementptr inbounds %struct.fmatrix3x3, ptr %91, i64 0, i32 6
  store i32 %85, ptr %92, align 4, !tbaa !51
  %93 = getelementptr inbounds %struct.fmatrix3x3, ptr %91, i64 0, i32 7
  store i32 %86, ptr %93, align 4, !tbaa !54
  %94 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 16
  store ptr %91, ptr %94, align 8, !tbaa !63
  %95 = load i32, ptr %15, align 8, !tbaa !49
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %97 = zext i32 %95 to i64
  %98 = mul nuw nsw i64 %97, 12
  %99 = tail call ptr %96(i64 noundef %98, ptr noundef nonnull @.str.5) #15
  store ptr %99, ptr %13, align 8, !tbaa !64
  %100 = load i32, ptr %15, align 8, !tbaa !49
  %101 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %102 = zext i32 %100 to i64
  %103 = mul nuw nsw i64 %102, 12
  %104 = tail call ptr %101(i64 noundef %103, ptr noundef nonnull @.str.5) #15
  %105 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 2
  store ptr %104, ptr %105, align 8, !tbaa !65
  %106 = load i32, ptr %15, align 8, !tbaa !49
  %107 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %108 = zext i32 %106 to i64
  %109 = mul nuw nsw i64 %108, 12
  %110 = tail call ptr %107(i64 noundef %109, ptr noundef nonnull @.str.5) #15
  %111 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 1
  store ptr %110, ptr %111, align 8, !tbaa !66
  %112 = load i32, ptr %15, align 8, !tbaa !49
  %113 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %114 = zext i32 %112 to i64
  %115 = mul nuw nsw i64 %114, 12
  %116 = tail call ptr %113(i64 noundef %115, ptr noundef nonnull @.str.5) #15
  %117 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 3
  store ptr %116, ptr %117, align 8, !tbaa !67
  %118 = load i32, ptr %15, align 8, !tbaa !49
  %119 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %120 = zext i32 %118 to i64
  %121 = mul nuw nsw i64 %120, 12
  %122 = tail call ptr %119(i64 noundef %121, ptr noundef nonnull @.str.5) #15
  %123 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 4
  store ptr %122, ptr %123, align 8, !tbaa !68
  %124 = load i32, ptr %15, align 8, !tbaa !49
  %125 = zext i32 %124 to i64
  %126 = mul nuw nsw i64 %125, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %122, i8 0, i64 %126, i1 false)
  %127 = load i32, ptr %15, align 8, !tbaa !49
  %128 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %129 = zext i32 %127 to i64
  %130 = mul nuw nsw i64 %129, 12
  %131 = tail call ptr %128(i64 noundef %130, ptr noundef nonnull @.str.5) #15
  %132 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 5
  store ptr %131, ptr %132, align 8, !tbaa !69
  %133 = load i32, ptr %15, align 8, !tbaa !49
  %134 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %135 = zext i32 %133 to i64
  %136 = mul nuw nsw i64 %135, 12
  %137 = tail call ptr %134(i64 noundef %136, ptr noundef nonnull @.str.5) #15
  %138 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 6
  store ptr %137, ptr %138, align 8, !tbaa !70
  %139 = load i32, ptr %15, align 8, !tbaa !49
  %140 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %141 = zext i32 %139 to i64
  %142 = mul nuw nsw i64 %141, 12
  %143 = tail call ptr %140(i64 noundef %142, ptr noundef nonnull @.str.5) #15
  %144 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 7
  store ptr %143, ptr %144, align 8, !tbaa !71
  %145 = load i32, ptr %15, align 8, !tbaa !49
  %146 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %147 = zext i32 %145 to i64
  %148 = mul nuw nsw i64 %147, 12
  %149 = tail call ptr %146(i64 noundef %148, ptr noundef nonnull @.str.5) #15
  %150 = getelementptr inbounds %struct.Implicit_Data, ptr %13, i64 0, i32 8
  store ptr %149, ptr %150, align 8, !tbaa !72
  %151 = load ptr, ptr %54, align 8, !tbaa !59
  %152 = getelementptr inbounds %struct.fmatrix3x3, ptr %151, i64 0, i32 6
  store i32 0, ptr %152, align 4, !tbaa !51
  %153 = load i32, ptr %15, align 8, !tbaa !49
  tail call fastcc void @update_matrixS(ptr noundef %11, i32 noundef %153, ptr noundef %151) #16
  %154 = load i32, ptr %15, align 8, !tbaa !49
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %191, label %156

156:                                              ; preds = %8, %156
  %157 = phi i64 [ %187, %156 ], [ 0, %8 ]
  %158 = load ptr, ptr %94, align 8, !tbaa !63
  %159 = getelementptr inbounds %struct.fmatrix3x3, ptr %158, i64 %157, i32 1
  %160 = trunc i64 %157 to i32
  store i32 %160, ptr %159, align 4, !tbaa !73
  %161 = getelementptr inbounds %struct.fmatrix3x3, ptr %158, i64 %157, i32 2
  store i32 %160, ptr %161, align 4, !tbaa !74
  %162 = load ptr, ptr %84, align 8, !tbaa !62
  %163 = getelementptr inbounds %struct.fmatrix3x3, ptr %162, i64 %157, i32 2
  store i32 %160, ptr %163, align 4, !tbaa !74
  %164 = getelementptr inbounds %struct.fmatrix3x3, ptr %162, i64 %157, i32 1
  store i32 %160, ptr %164, align 4, !tbaa !73
  %165 = load ptr, ptr %64, align 8, !tbaa !60
  %166 = getelementptr inbounds %struct.fmatrix3x3, ptr %165, i64 %157, i32 2
  store i32 %160, ptr %166, align 4, !tbaa !74
  %167 = getelementptr inbounds %struct.fmatrix3x3, ptr %165, i64 %157, i32 1
  store i32 %160, ptr %167, align 4, !tbaa !73
  %168 = load ptr, ptr %74, align 8, !tbaa !61
  %169 = getelementptr inbounds %struct.fmatrix3x3, ptr %168, i64 %157, i32 2
  store i32 %160, ptr %169, align 4, !tbaa !74
  %170 = getelementptr inbounds %struct.fmatrix3x3, ptr %168, i64 %157, i32 1
  store i32 %160, ptr %170, align 4, !tbaa !73
  %171 = load ptr, ptr %46, align 8, !tbaa !58
  %172 = getelementptr inbounds %struct.fmatrix3x3, ptr %171, i64 %157, i32 1
  store i32 %160, ptr %172, align 4, !tbaa !73
  %173 = getelementptr inbounds %struct.fmatrix3x3, ptr %171, i64 %157, i32 2
  store i32 %160, ptr %173, align 4, !tbaa !74
  %174 = load ptr, ptr %36, align 8, !tbaa !57
  %175 = getelementptr inbounds %struct.fmatrix3x3, ptr %174, i64 %157, i32 1
  store i32 %160, ptr %175, align 4, !tbaa !73
  %176 = getelementptr inbounds %struct.fmatrix3x3, ptr %174, i64 %157, i32 2
  store i32 %160, ptr %176, align 4, !tbaa !74
  %177 = load ptr, ptr %26, align 8, !tbaa !55
  %178 = getelementptr inbounds %struct.fmatrix3x3, ptr %177, i64 %157, i32 1
  store i32 %160, ptr %178, align 4, !tbaa !73
  %179 = getelementptr inbounds %struct.fmatrix3x3, ptr %177, i64 %157, i32 2
  store i32 %160, ptr %179, align 4, !tbaa !74
  %180 = getelementptr inbounds %struct.fmatrix3x3, ptr %158, i64 %157
  %181 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %157, i32 8
  %182 = load float, ptr %181, align 8, !tbaa !75
  tail call fastcc void @copy_v3_v3(ptr noundef %180, ptr noundef nonnull @ZERO) #16
  %183 = getelementptr inbounds [3 x float], ptr %180, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %183, ptr noundef nonnull getelementptr inbounds ([3 x [3 x float]], ptr @ZERO, i64 0, i64 1)) #16
  %184 = getelementptr inbounds [3 x float], ptr %180, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %184, ptr noundef nonnull getelementptr inbounds ([3 x [3 x float]], ptr @ZERO, i64 0, i64 2)) #16
  store float %182, ptr %180, align 4, !tbaa !77
  %185 = getelementptr inbounds [3 x float], ptr %180, i64 1, i64 1
  store float %182, ptr %185, align 4, !tbaa !77
  %186 = getelementptr inbounds [3 x float], ptr %180, i64 2, i64 2
  store float %182, ptr %186, align 4, !tbaa !77
  %187 = add nuw nsw i64 %157, 1
  %188 = load i32, ptr %15, align 8, !tbaa !49
  %189 = zext i32 %188 to i64
  %190 = icmp ult i64 %187, %189
  br i1 %190, label %156, label %191, !llvm.loop !78

191:                                              ; preds = %156, %8
  %192 = phi i32 [ 0, %8 ], [ %188, %156 ]
  %193 = load i32, ptr %17, align 4, !tbaa !50
  %194 = icmp eq i32 %193, 0
  %195 = load ptr, ptr %84, align 8, !tbaa !62
  br i1 %194, label %234, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 1
  %198 = load ptr, ptr %94, align 8, !tbaa !63
  %199 = load ptr, ptr %64, align 8, !tbaa !60
  %200 = load ptr, ptr %74, align 8, !tbaa !61
  %201 = load ptr, ptr %46, align 8, !tbaa !58
  %202 = load ptr, ptr %36, align 8, !tbaa !57
  %203 = load ptr, ptr %26, align 8, !tbaa !55
  %204 = zext i32 %193 to i64
  br label %205

205:                                              ; preds = %196, %205
  %206 = phi i64 [ 0, %196 ], [ %232, %205 ]
  %207 = phi ptr [ %197, %196 ], [ %208, %205 ]
  %208 = load ptr, ptr %207, align 8, !tbaa !47
  %209 = getelementptr inbounds %struct.LinkNode, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !80
  %211 = load i32, ptr %210, align 4, !tbaa !82
  %212 = trunc i64 %206 to i32
  %213 = add i32 %192, %212
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.fmatrix3x3, ptr %198, i64 %214, i32 2
  store i32 %211, ptr %215, align 4, !tbaa !74
  %216 = getelementptr inbounds %struct.fmatrix3x3, ptr %195, i64 %214, i32 2
  store i32 %211, ptr %216, align 4, !tbaa !74
  %217 = getelementptr inbounds %struct.fmatrix3x3, ptr %199, i64 %214, i32 2
  store i32 %211, ptr %217, align 4, !tbaa !74
  %218 = getelementptr inbounds %struct.fmatrix3x3, ptr %200, i64 %214, i32 2
  store i32 %211, ptr %218, align 4, !tbaa !74
  %219 = getelementptr inbounds %struct.fmatrix3x3, ptr %201, i64 %214, i32 2
  store i32 %211, ptr %219, align 4, !tbaa !74
  %220 = getelementptr inbounds %struct.fmatrix3x3, ptr %202, i64 %214, i32 2
  store i32 %211, ptr %220, align 4, !tbaa !74
  %221 = getelementptr inbounds %struct.fmatrix3x3, ptr %203, i64 %214, i32 2
  store i32 %211, ptr %221, align 4, !tbaa !74
  %222 = getelementptr inbounds %struct.ClothSpring, ptr %210, i64 0, i32 1
  %223 = load i32, ptr %222, align 4, !tbaa !84
  %224 = getelementptr inbounds %struct.fmatrix3x3, ptr %198, i64 %214, i32 1
  store i32 %223, ptr %224, align 4, !tbaa !73
  %225 = getelementptr inbounds %struct.fmatrix3x3, ptr %195, i64 %214, i32 1
  store i32 %223, ptr %225, align 4, !tbaa !73
  %226 = getelementptr inbounds %struct.fmatrix3x3, ptr %199, i64 %214, i32 1
  store i32 %223, ptr %226, align 4, !tbaa !73
  %227 = getelementptr inbounds %struct.fmatrix3x3, ptr %200, i64 %214, i32 1
  store i32 %223, ptr %227, align 4, !tbaa !73
  %228 = getelementptr inbounds %struct.fmatrix3x3, ptr %201, i64 %214, i32 1
  store i32 %223, ptr %228, align 4, !tbaa !73
  %229 = getelementptr inbounds %struct.fmatrix3x3, ptr %202, i64 %214, i32 1
  store i32 %223, ptr %229, align 4, !tbaa !73
  %230 = getelementptr inbounds %struct.fmatrix3x3, ptr %203, i64 %214, i32 1
  store i32 %223, ptr %230, align 4, !tbaa !73
  %231 = getelementptr inbounds %struct.ClothSpring, ptr %210, i64 0, i32 3
  store i32 %213, ptr %231, align 4, !tbaa !85
  %232 = add nuw nsw i64 %206, 1
  %233 = icmp eq i64 %232, %204
  br i1 %233, label %234, label %205, !llvm.loop !86

234:                                              ; preds = %205, %191
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %3, i8 0, i64 36, i1 false)
  %235 = getelementptr inbounds %struct.fmatrix3x3, ptr %195, i64 0, i32 6
  %236 = load i32, ptr %235, align 4, !tbaa !51
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %248, %234
  %239 = phi i32 [ 0, %234 ], [ %254, %248 ]
  %240 = getelementptr inbounds %struct.fmatrix3x3, ptr %195, i64 0, i32 7
  %241 = load i32, ptr %240, align 4, !tbaa !54
  %242 = add i32 %241, %239
  %243 = icmp ult i32 %239, %242
  br i1 %243, label %244, label %268

244:                                              ; preds = %238
  %245 = getelementptr inbounds [3 x float], ptr %3, i64 1
  %246 = getelementptr inbounds [3 x float], ptr %3, i64 2
  %247 = zext i32 %239 to i64
  br label %257

248:                                              ; preds = %234, %248
  %249 = phi i64 [ %253, %248 ], [ 0, %234 ]
  %250 = getelementptr inbounds %struct.fmatrix3x3, ptr %195, i64 %249
  tail call fastcc void @copy_v3_v3(ptr noundef %250, ptr noundef nonnull @I) #16
  %251 = getelementptr inbounds [3 x float], ptr %250, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %251, ptr noundef nonnull getelementptr inbounds ([3 x [3 x float]], ptr @I, i64 0, i64 1)) #16
  %252 = getelementptr inbounds [3 x float], ptr %250, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %252, ptr noundef nonnull getelementptr inbounds ([3 x [3 x float]], ptr @I, i64 0, i64 2)) #16
  %253 = add nuw nsw i64 %249, 1
  %254 = load i32, ptr %235, align 4, !tbaa !51
  %255 = zext i32 %254 to i64
  %256 = icmp ult i64 %253, %255
  br i1 %256, label %248, label %238, !llvm.loop !87

257:                                              ; preds = %244, %257
  %258 = phi i64 [ %247, %244 ], [ %262, %257 ]
  %259 = getelementptr inbounds %struct.fmatrix3x3, ptr %195, i64 %258
  call fastcc void @copy_v3_v3(ptr noundef %259, ptr noundef nonnull %3) #16
  %260 = getelementptr inbounds [3 x float], ptr %259, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %260, ptr noundef nonnull %245) #16
  %261 = getelementptr inbounds [3 x float], ptr %259, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %261, ptr noundef nonnull %246) #16
  %262 = add nuw nsw i64 %258, 1
  %263 = load i32, ptr %235, align 4, !tbaa !51
  %264 = load i32, ptr %240, align 4, !tbaa !54
  %265 = add i32 %264, %263
  %266 = zext i32 %265 to i64
  %267 = icmp ult i64 %262, %266
  br i1 %267, label %257, label %268, !llvm.loop !88

268:                                              ; preds = %257, %238
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #17
  %269 = load i32, ptr %15, align 8, !tbaa !49
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %280, label %271

271:                                              ; preds = %268, %271
  %272 = phi i64 [ %276, %271 ], [ 0, %268 ]
  %273 = load ptr, ptr %13, align 8, !tbaa !64
  %274 = getelementptr inbounds [3 x float], ptr %273, i64 %272
  %275 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %272, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef %274, ptr noundef nonnull %275) #16
  %276 = add nuw nsw i64 %272, 1
  %277 = load i32, ptr %15, align 8, !tbaa !49
  %278 = zext i32 %277 to i64
  %279 = icmp ult i64 %276, %278
  br i1 %279, label %271, label %280, !llvm.loop !89

280:                                              ; preds = %271, %268
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @update_matrixS(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #2 !PGOFuncName !90 {
  %4 = getelementptr inbounds %struct.fmatrix3x3, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !51
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  br label %13

9:                                                ; preds = %13, %3
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %9
  %12 = zext nneg i32 %1 to i64
  br label %19

13:                                               ; preds = %7, %13
  %14 = phi i64 [ 0, %7 ], [ %17, %13 ]
  %15 = getelementptr inbounds %struct.fmatrix3x3, ptr %2, i64 %14, i32 2
  store i32 0, ptr %15, align 4, !tbaa !74
  %16 = getelementptr inbounds %struct.fmatrix3x3, ptr %2, i64 %14, i32 1
  store i32 0, ptr %16, align 4, !tbaa !73
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %9, label %13, !llvm.loop !91

19:                                               ; preds = %11, %32
  %20 = phi i64 [ 0, %11 ], [ %34, %32 ]
  %21 = phi i32 [ 0, %11 ], [ %33, %32 ]
  %22 = getelementptr inbounds %struct.ClothVertex, ptr %0, i64 %20
  %23 = load i32, ptr %22, align 8, !tbaa !92
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = zext i32 %21 to i64
  %28 = getelementptr inbounds %struct.fmatrix3x3, ptr %2, i64 %27, i32 2
  %29 = trunc i64 %20 to i32
  store i32 %29, ptr %28, align 4, !tbaa !74
  %30 = getelementptr inbounds %struct.fmatrix3x3, ptr %2, i64 %27, i32 1
  store i32 %29, ptr %30, align 4, !tbaa !73
  %31 = add i32 %21, 1
  br label %32

32:                                               ; preds = %19, %26
  %33 = phi i32 [ %31, %26 ], [ %21, %19 ]
  %34 = add nuw nsw i64 %20, 1
  %35 = icmp eq i64 %34, %12
  br i1 %35, label %36, label %19, !llvm.loop !93

36:                                               ; preds = %32, %9
  %37 = phi i32 [ 0, %9 ], [ %33, %32 ]
  store i32 %37, ptr %4, align 4, !tbaa !51
  %38 = getelementptr inbounds %struct.fmatrix3x3, ptr %2, i64 0, i32 7
  store i32 0, ptr %38, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !94 {
  %3 = load float, ptr %1, align 4, !tbaa !77
  store float %3, ptr %0, align 4, !tbaa !77
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !77
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @implicit_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %112, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Cloth, ptr %3, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %112, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %14(ptr noundef nonnull %11) #15
  br label %15

15:                                               ; preds = %9, %13
  %16 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %20(ptr noundef nonnull %17) #15
  br label %21

21:                                               ; preds = %15, %19
  %22 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %26(ptr noundef nonnull %23) #15
  br label %27

27:                                               ; preds = %21, %25
  %28 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %32(ptr noundef nonnull %29) #15
  br label %33

33:                                               ; preds = %27, %31
  %34 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %38(ptr noundef nonnull %35) #15
  br label %39

39:                                               ; preds = %33, %37
  %40 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %44(ptr noundef nonnull %41) #15
  br label %45

45:                                               ; preds = %39, %43
  %46 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 15
  %47 = load ptr, ptr %46, align 8, !tbaa !62
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %50(ptr noundef nonnull %47) #15
  br label %51

51:                                               ; preds = %45, %49
  %52 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 16
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %56(ptr noundef nonnull %53) #15
  br label %57

57:                                               ; preds = %51, %55
  %58 = load ptr, ptr %7, align 8, !tbaa !64
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %61(ptr noundef nonnull %58) #15
  br label %62

62:                                               ; preds = %57, %60
  %63 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !65
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %67(ptr noundef nonnull %64) #15
  br label %68

68:                                               ; preds = %62, %66
  %69 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !66
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %73(ptr noundef nonnull %70) #15
  br label %74

74:                                               ; preds = %68, %72
  %75 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !67
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %79(ptr noundef nonnull %76) #15
  br label %80

80:                                               ; preds = %74, %78
  %81 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !68
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %85(ptr noundef nonnull %82) #15
  br label %86

86:                                               ; preds = %80, %84
  %87 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !69
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %91(ptr noundef nonnull %88) #15
  br label %92

92:                                               ; preds = %86, %90
  %93 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !70
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %97(ptr noundef nonnull %94) #15
  br label %98

98:                                               ; preds = %92, %96
  %99 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !71
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %103(ptr noundef nonnull %100) #15
  br label %104

104:                                              ; preds = %98, %102
  %105 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !72
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %109(ptr noundef nonnull %106) #15
  br label %110

110:                                              ; preds = %104, %108
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %111(ptr noundef nonnull %7) #15
  br label %112

112:                                              ; preds = %5, %110, %1
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @implicit_solver(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x float], align 8
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = getelementptr inbounds %struct.ClothSimSettings, ptr %7, i64 0, i32 15
  %9 = load float, ptr %8, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct.ClothModifierData, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.Cloth, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.ClothSimSettings, ptr %7, i64 0, i32 28
  %16 = load i32, ptr %15, align 4, !tbaa !98
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %9, %17
  %19 = fdiv float %17, %9
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %21 = zext i32 %14 to i64
  %22 = mul nuw nsw i64 %21, 12
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.2) #15
  %24 = getelementptr inbounds %struct.Cloth, ptr %11, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = load ptr, ptr %6, align 8, !tbaa !95
  %27 = getelementptr inbounds %struct.ClothSimSettings, ptr %26, i64 0, i32 29
  %28 = load i32, ptr %27, align 8, !tbaa !99
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %4
  %32 = load i32, ptr %13, align 8, !tbaa !49
  %33 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  tail call fastcc void @update_matrixS(ptr noundef %12, i32 noundef %32, ptr noundef %34) #16
  %35 = icmp eq i32 %14, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 1
  br label %38

38:                                               ; preds = %36, %49
  %39 = phi i64 [ 0, %36 ], [ %50, %49 ]
  %40 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %39
  %41 = load i32, ptr %40, align 8, !tbaa !92
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %37, align 8, !tbaa !66
  %46 = getelementptr inbounds [3 x float], ptr %45, i64 %39
  %47 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %39, i32 2
  %48 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %39, i32 4
  tail call fastcc void @sub_v3_v3v3(ptr noundef %46, ptr noundef nonnull %47, ptr noundef nonnull %48) #16
  br label %49

49:                                               ; preds = %38, %44
  %50 = add nuw nsw i64 %39, 1
  %51 = icmp eq i64 %50, %21
  br i1 %51, label %52, label %38, !llvm.loop !100

52:                                               ; preds = %49, %31, %4
  %53 = fcmp ogt float %9, 0.000000e+00
  br i1 %53, label %54, label %72

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 1
  %56 = icmp eq i32 %14, 0
  %57 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 5
  %58 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 10
  %59 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 11
  %60 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 16
  %61 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 3
  %62 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 9
  %63 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 6
  %64 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 7
  %65 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 12
  %66 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 8
  %67 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 4
  %68 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 2
  %69 = getelementptr inbounds float, ptr %5, i64 2
  %70 = getelementptr inbounds %struct.ClothModifierData, ptr %2, i64 0, i32 4
  %71 = fmul float %18, 5.000000e-01
  br label %76

72:                                               ; preds = %286, %52
  %73 = icmp eq i32 %14, 0
  br i1 %73, label %320, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.Implicit_Data, ptr %25, i64 0, i32 1
  br label %291

76:                                               ; preds = %54, %286
  %77 = phi float [ 0.000000e+00, %54 ], [ %289, %286 ]
  %78 = load ptr, ptr %55, align 8, !tbaa !66
  %79 = load ptr, ptr %6, align 8, !tbaa !95
  %80 = getelementptr inbounds %struct.ClothSimSettings, ptr %79, i64 0, i32 25
  %81 = load float, ptr %80, align 8, !tbaa !101
  br i1 %56, label %95, label %82

82:                                               ; preds = %76
  %83 = insertelement <2 x float> poison, float %81, i64 0
  %84 = shufflevector <2 x float> %83, <2 x float> poison, <2 x i32> zeroinitializer
  br label %85

85:                                               ; preds = %82, %85
  %86 = phi i64 [ %93, %85 ], [ 0, %82 ]
  %87 = getelementptr inbounds [3 x float], ptr %78, i64 %86
  %88 = load <2 x float>, ptr %87, align 4, !tbaa !77
  %89 = fmul <2 x float> %84, %88
  store <2 x float> %89, ptr %87, align 4, !tbaa !77
  %90 = getelementptr inbounds float, ptr %87, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !77
  %92 = fmul float %81, %91
  store float %92, ptr %90, align 4, !tbaa !77
  %93 = add nuw nsw i64 %86, 1
  %94 = icmp eq i64 %93, %21
  br i1 %94, label %95, label %85, !llvm.loop !102

95:                                               ; preds = %85, %76
  %96 = load ptr, ptr %57, align 8, !tbaa !69
  %97 = load ptr, ptr %25, align 8, !tbaa !64
  %98 = load ptr, ptr %58, align 8, !tbaa !57
  %99 = load ptr, ptr %59, align 8, !tbaa !58
  %100 = load ptr, ptr %60, align 8, !tbaa !63
  tail call fastcc void @cloth_calc_force(ptr noundef %2, ptr noundef %96, ptr noundef %97, ptr noundef %78, ptr noundef %98, ptr noundef %99, ptr noundef %3, float noundef %77, ptr noundef %100) #16
  %101 = load ptr, ptr %61, align 8, !tbaa !67
  %102 = load ptr, ptr %55, align 8, !tbaa !66
  %103 = load ptr, ptr %57, align 8, !tbaa !69
  %104 = load ptr, ptr %58, align 8, !tbaa !57
  %105 = load ptr, ptr %59, align 8, !tbaa !58
  %106 = load ptr, ptr %62, align 8, !tbaa !55
  %107 = load ptr, ptr %63, align 8, !tbaa !70
  %108 = load ptr, ptr %64, align 8, !tbaa !71
  %109 = load ptr, ptr %65, align 8, !tbaa !59
  %110 = load ptr, ptr %66, align 8, !tbaa !72
  %111 = load ptr, ptr %67, align 8, !tbaa !68
  %112 = load ptr, ptr %60, align 8, !tbaa !63
  tail call fastcc void @simulate_implicit_euler(ptr noundef %101, ptr noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef %105, float noundef %18, ptr noundef %106, ptr noundef %107, ptr noundef %108, ptr noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112) #16
  %113 = load ptr, ptr %68, align 8, !tbaa !65
  %114 = load ptr, ptr %25, align 8, !tbaa !64
  %115 = load ptr, ptr %61, align 8, !tbaa !67
  br i1 %56, label %175, label %121

116:                                              ; preds = %121
  br i1 %56, label %175, label %117

117:                                              ; preds = %116
  %118 = fadd float %18, %77
  %119 = insertelement <2 x float> poison, float %118, i64 0
  %120 = shufflevector <2 x float> %119, <2 x float> poison, <2 x i32> zeroinitializer
  br label %143

121:                                              ; preds = %95, %121
  %122 = phi i64 [ %141, %121 ], [ 0, %95 ]
  %123 = getelementptr inbounds [3 x float], ptr %114, i64 %122
  %124 = load float, ptr %123, align 4, !tbaa !77
  %125 = getelementptr inbounds [3 x float], ptr %115, i64 %122
  %126 = load float, ptr %125, align 4, !tbaa !77
  %127 = tail call float @llvm.fmuladd.f32(float %126, float %18, float %124)
  %128 = getelementptr inbounds [3 x float], ptr %113, i64 %122
  store float %127, ptr %128, align 4, !tbaa !77
  %129 = getelementptr inbounds float, ptr %123, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !77
  %131 = getelementptr inbounds float, ptr %125, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !77
  %133 = tail call float @llvm.fmuladd.f32(float %132, float %18, float %130)
  %134 = getelementptr inbounds float, ptr %128, i64 1
  store float %133, ptr %134, align 4, !tbaa !77
  %135 = getelementptr inbounds float, ptr %123, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !77
  %137 = getelementptr inbounds float, ptr %125, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !77
  %139 = tail call float @llvm.fmuladd.f32(float %138, float %18, float %136)
  %140 = getelementptr inbounds float, ptr %128, i64 2
  store float %139, ptr %140, align 4, !tbaa !77
  %141 = add nuw nsw i64 %122, 1
  %142 = icmp eq i64 %141, %21
  br i1 %142, label %116, label %121, !llvm.loop !103

143:                                              ; preds = %117, %169
  %144 = phi i64 [ 0, %117 ], [ %173, %169 ]
  %145 = load ptr, ptr %6, align 8, !tbaa !95
  %146 = getelementptr inbounds %struct.ClothSimSettings, ptr %145, i64 0, i32 29
  %147 = load i32, ptr %146, align 8, !tbaa !99
  %148 = and i32 %147, 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %169, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %144
  %152 = load i32, ptr %151, align 8, !tbaa !92
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %169, label %155

155:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %156 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %144, i32 2
  %157 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %144, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %156, ptr noundef nonnull %157) #16
  %158 = load float, ptr %69, align 8, !tbaa !77
  %159 = fmul float %118, %158
  %160 = load <2 x float>, ptr %5, align 8, !tbaa !77
  %161 = fmul <2 x float> %120, %160
  %162 = load <2 x float>, ptr %157, align 8, !tbaa !77
  %163 = fadd <2 x float> %161, %162
  store <2 x float> %163, ptr %5, align 8, !tbaa !77
  %164 = getelementptr inbounds float, ptr %157, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !77
  %166 = fadd float %159, %165
  store float %166, ptr %69, align 8, !tbaa !77
  %167 = load ptr, ptr %68, align 8, !tbaa !65
  %168 = getelementptr inbounds [3 x float], ptr %167, i64 %144
  call fastcc void @copy_v3_v3(ptr noundef %168, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  br label %169

169:                                              ; preds = %150, %155, %143
  %170 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %144, i32 6
  %171 = load ptr, ptr %25, align 8, !tbaa !64
  %172 = getelementptr inbounds [3 x float], ptr %171, i64 %144
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %170, ptr noundef %172) #16
  %173 = add nuw nsw i64 %144, 1
  %174 = icmp eq i64 %173, %21
  br i1 %174, label %175, label %143, !llvm.loop !104

175:                                              ; preds = %169, %95, %116
  %176 = load ptr, ptr %70, align 8, !tbaa !105
  %177 = getelementptr inbounds %struct.ClothCollSettings, ptr %176, i64 0, i32 7
  %178 = load i32, ptr %177, align 8, !tbaa !106
  %179 = and i32 %178, 2
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %280, label %181

181:                                              ; preds = %175
  %182 = load ptr, ptr %10, align 8, !tbaa !42
  %183 = getelementptr inbounds %struct.Cloth, ptr %182, i64 0, i32 8
  %184 = load ptr, ptr %183, align 8, !tbaa !108
  %185 = icmp eq ptr %184, null
  br i1 %185, label %280, label %186

186:                                              ; preds = %181
  br i1 %56, label %197, label %187

187:                                              ; preds = %186, %187
  %188 = phi i64 [ %195, %187 ], [ 0, %186 ]
  %189 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %188, i32 5
  %190 = load ptr, ptr %68, align 8, !tbaa !65
  %191 = getelementptr inbounds [3 x float], ptr %190, i64 %188
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %189, ptr noundef %191) #16
  %192 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %188, i32 7
  %193 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %188, i32 6
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %192, ptr noundef nonnull %189, ptr noundef nonnull %193) #16
  %194 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %188, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %194, ptr noundef nonnull %192) #16
  %195 = add nuw nsw i64 %188, 1
  %196 = icmp eq i64 %195, %21
  br i1 %196, label %197, label %187, !llvm.loop !109

197:                                              ; preds = %187, %186
  %198 = load i32, ptr %13, align 8, !tbaa !49
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %212, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr %11, align 8, !tbaa !45
  br label %202

202:                                              ; preds = %200, %202
  %203 = phi i64 [ 0, %200 ], [ %207, %202 ]
  %204 = phi ptr [ %201, %200 ], [ %208, %202 ]
  %205 = getelementptr inbounds [3 x float], ptr %23, i64 %203
  %206 = getelementptr inbounds %struct.ClothVertex, ptr %204, i64 0, i32 5
  tail call fastcc void @copy_v3_v3(ptr noundef %205, ptr noundef nonnull %206) #16
  %207 = add nuw nsw i64 %203, 1
  %208 = getelementptr inbounds %struct.ClothVertex, ptr %204, i64 1
  %209 = load i32, ptr %13, align 8, !tbaa !49
  %210 = zext i32 %209 to i64
  %211 = icmp ult i64 %207, %210
  br i1 %211, label %202, label %212, !llvm.loop !110

212:                                              ; preds = %202, %197
  %213 = load ptr, ptr %6, align 8, !tbaa !95
  %214 = getelementptr inbounds %struct.ClothSimSettings, ptr %213, i64 0, i32 15
  %215 = load float, ptr %214, align 8, !tbaa !96
  %216 = fdiv float %77, %215
  %217 = fdiv float %18, %215
  %218 = tail call i32 @cloth_bvh_objcollision(ptr noundef %0, ptr noundef %2, float noundef %216, float noundef %217) #15
  br i1 %56, label %229, label %219

219:                                              ; preds = %212, %219
  %220 = phi i64 [ %225, %219 ], [ 0, %212 ]
  %221 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %220, i32 7
  %222 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %220, i32 5
  %223 = load ptr, ptr %25, align 8, !tbaa !64
  %224 = getelementptr inbounds [3 x float], ptr %223, i64 %220
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %221, ptr noundef nonnull %222, ptr noundef %224) #16
  %225 = add nuw nsw i64 %220, 1
  %226 = icmp eq i64 %225, %21
  br i1 %226, label %227, label %219, !llvm.loop !111

227:                                              ; preds = %219
  %228 = icmp eq i32 %218, 0
  br i1 %228, label %283, label %231

229:                                              ; preds = %212
  %230 = icmp eq i32 %218, 0
  br i1 %230, label %283, label %256

231:                                              ; preds = %227
  br i1 %56, label %256, label %232

232:                                              ; preds = %231, %253
  %233 = phi i64 [ %254, %253 ], [ 0, %231 ]
  %234 = load ptr, ptr %6, align 8, !tbaa !95
  %235 = getelementptr inbounds %struct.ClothSimSettings, ptr %234, i64 0, i32 29
  %236 = load i32, ptr %235, align 8, !tbaa !99
  %237 = and i32 %236, 8
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %233
  %241 = load i32, ptr %240, align 8, !tbaa !92
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %239, %232
  %245 = load ptr, ptr %68, align 8, !tbaa !65
  %246 = getelementptr inbounds [3 x float], ptr %245, i64 %233
  %247 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %233, i32 5
  tail call fastcc void @copy_v3_v3(ptr noundef %246, ptr noundef nonnull %247) #16
  %248 = load ptr, ptr %61, align 8, !tbaa !67
  %249 = getelementptr inbounds [3 x float], ptr %248, i64 %233
  %250 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %233, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef %249, ptr noundef nonnull %250) #16
  %251 = load ptr, ptr %61, align 8, !tbaa !67
  %252 = getelementptr inbounds [3 x float], ptr %251, i64 %233
  tail call fastcc void @mul_v3_fl(ptr noundef %252, float noundef %19) #16
  br label %253

253:                                              ; preds = %239, %244
  %254 = add nuw nsw i64 %233, 1
  %255 = icmp eq i64 %254, %21
  br i1 %255, label %256, label %232, !llvm.loop !112

256:                                              ; preds = %253, %229, %231
  %257 = load ptr, ptr %25, align 8, !tbaa !64
  %258 = load ptr, ptr %68, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %257, ptr align 4 %258, i64 %22, i1 false)
  %259 = load ptr, ptr %55, align 8, !tbaa !66
  %260 = load ptr, ptr %61, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %259, ptr align 4 %260, i64 %22, i1 false)
  %261 = load ptr, ptr %57, align 8, !tbaa !69
  %262 = load ptr, ptr %25, align 8, !tbaa !64
  %263 = load ptr, ptr %55, align 8, !tbaa !66
  %264 = load ptr, ptr %58, align 8, !tbaa !57
  %265 = load ptr, ptr %59, align 8, !tbaa !58
  %266 = fadd float %18, %77
  %267 = load ptr, ptr %60, align 8, !tbaa !63
  tail call fastcc void @cloth_calc_force(ptr noundef %2, ptr noundef %261, ptr noundef %262, ptr noundef %263, ptr noundef %264, ptr noundef %265, ptr noundef %3, float noundef %266, ptr noundef %267) #16
  %268 = load ptr, ptr %61, align 8, !tbaa !67
  %269 = load ptr, ptr %55, align 8, !tbaa !66
  %270 = load ptr, ptr %57, align 8, !tbaa !69
  %271 = load ptr, ptr %58, align 8, !tbaa !57
  %272 = load ptr, ptr %59, align 8, !tbaa !58
  %273 = load ptr, ptr %62, align 8, !tbaa !55
  %274 = load ptr, ptr %63, align 8, !tbaa !70
  %275 = load ptr, ptr %64, align 8, !tbaa !71
  %276 = load ptr, ptr %65, align 8, !tbaa !59
  %277 = load ptr, ptr %66, align 8, !tbaa !72
  %278 = load ptr, ptr %67, align 8, !tbaa !68
  %279 = load ptr, ptr %60, align 8, !tbaa !63
  tail call fastcc void @simulate_implicit_euler(ptr noundef %268, ptr noundef %269, ptr noundef %270, ptr noundef %271, ptr noundef %272, float noundef %71, ptr noundef %273, ptr noundef %274, ptr noundef %275, ptr noundef %276, ptr noundef %277, ptr noundef %278, ptr noundef %279) #16
  br label %286

280:                                              ; preds = %181, %175
  %281 = load ptr, ptr %25, align 8, !tbaa !64
  %282 = load ptr, ptr %68, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %281, ptr align 4 %282, i64 %22, i1 false)
  br label %286

283:                                              ; preds = %229, %227
  %284 = load ptr, ptr %25, align 8, !tbaa !64
  %285 = load ptr, ptr %68, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %284, ptr align 4 %285, i64 %22, i1 false)
  br label %286

286:                                              ; preds = %283, %256, %280
  %287 = load ptr, ptr %55, align 8, !tbaa !66
  %288 = load ptr, ptr %61, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %287, ptr align 4 %288, i64 %22, i1 false)
  %289 = fadd float %18, %77
  %290 = fcmp olt float %289, %9
  br i1 %290, label %76, label %72, !llvm.loop !113

291:                                              ; preds = %74, %314
  %292 = phi i64 [ 0, %74 ], [ %318, %314 ]
  %293 = load ptr, ptr %6, align 8, !tbaa !95
  %294 = getelementptr inbounds %struct.ClothSimSettings, ptr %293, i64 0, i32 29
  %295 = load i32, ptr %294, align 8, !tbaa !99
  %296 = and i32 %295, 8
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %307, label %298

298:                                              ; preds = %291
  %299 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %292
  %300 = load i32, ptr %299, align 8, !tbaa !92
  %301 = and i32 %300, 1
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %307, label %303

303:                                              ; preds = %298
  %304 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %292, i32 6
  %305 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %292, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %304, ptr noundef nonnull %305) #16
  %306 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %292, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %306, ptr noundef nonnull %305) #16
  br label %314

307:                                              ; preds = %298, %291
  %308 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %292, i32 6
  %309 = load ptr, ptr %25, align 8, !tbaa !64
  %310 = getelementptr inbounds [3 x float], ptr %309, i64 %292
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %308, ptr noundef %310) #16
  %311 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %292, i32 3
  %312 = load ptr, ptr %25, align 8, !tbaa !64
  %313 = getelementptr inbounds [3 x float], ptr %312, i64 %292
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %311, ptr noundef %313) #16
  br label %314

314:                                              ; preds = %303, %307
  %315 = getelementptr inbounds %struct.ClothVertex, ptr %12, i64 %292, i32 1
  %316 = load ptr, ptr %75, align 8, !tbaa !66
  %317 = getelementptr inbounds [3 x float], ptr %316, i64 %292
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %315, ptr noundef %317) #16
  %318 = add nuw nsw i64 %292, 1
  %319 = icmp eq i64 %318, %21
  br i1 %319, label %320, label %291, !llvm.loop !114

320:                                              ; preds = %314, %72
  %321 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %321(ptr noundef %23) #15
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !115 {
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = load float, ptr %2, align 4, !tbaa !77
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !77
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !77
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cloth_calc_force(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr noundef %6, float noundef %7, ptr nocapture noundef readonly %8) unnamed_addr #0 !PGOFuncName !116 {
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x [3 x float]], align 16
  %15 = alloca [3 x float], align 8
  %16 = alloca [3 x [3 x float]], align 16
  %17 = alloca [3 x float], align 8
  %18 = alloca [3 x [3 x float]], align 16
  %19 = alloca %struct.EffectedPoint, align 8
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 8
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = getelementptr inbounds %struct.ClothSimSettings, ptr %30, i64 0, i32 3
  %32 = load float, ptr %31, align 8, !tbaa !117
  %33 = fmul float %32, 0x3F847AE140000000
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %17, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %18) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %18, i8 0, i64 32, i1 false)
  %34 = getelementptr inbounds %struct.Cloth, ptr %28, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !118
  %36 = getelementptr inbounds %struct.Cloth, ptr %28, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #17
  %38 = fneg float %33
  %39 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2, i64 2
  store float %38, ptr %39, align 16, !tbaa !77
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1, i64 1
  store float %38, ptr %40, align 16, !tbaa !77
  store float %38, ptr %18, align 16, !tbaa !77
  %41 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !119
  %43 = getelementptr inbounds %struct.Scene, ptr %42, i64 0, i32 40, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !120
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %9
  %48 = getelementptr inbounds %struct.Scene, ptr %42, i64 0, i32 40
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %48) #16
  %49 = getelementptr inbounds %struct.ClothSimSettings, ptr %30, i64 0, i32 41
  %50 = load ptr, ptr %49, align 8, !tbaa !141
  %51 = getelementptr inbounds %struct.EffectorWeights, ptr %50, i64 0, i32 2
  %52 = load float, ptr %51, align 8, !tbaa !142
  %53 = fmul float %52, 0x3F50624DE0000000
  %54 = load <2 x float>, ptr %17, align 8, !tbaa !77
  %55 = insertelement <2 x float> poison, float %53, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = fmul <2 x float> %54, %56
  store <2 x float> %57, ptr %17, align 8, !tbaa !77
  %58 = getelementptr inbounds float, ptr %17, i64 2
  %59 = load float, ptr %58, align 8, !tbaa !77
  %60 = fmul float %53, %59
  store float %60, ptr %58, align 8, !tbaa !77
  br label %61

61:                                               ; preds = %47, %9
  %62 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 0, i32 6
  %63 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 0, i32 7
  %64 = load i32, ptr %62, align 4, !tbaa !51
  %65 = load i32, ptr %63, align 4, !tbaa !54
  %66 = sub i32 0, %64
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %79, label %68

68:                                               ; preds = %61, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %61 ]
  %70 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 %69
  tail call fastcc void @copy_v3_v3(ptr noundef %70, ptr noundef nonnull @ZERO) #16
  %71 = getelementptr inbounds [3 x float], ptr %70, i64 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %71, ptr noundef nonnull getelementptr inbounds ([3 x [3 x float]], ptr @ZERO, i64 0, i64 1)) #16
  %72 = getelementptr inbounds [3 x float], ptr %70, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %72, ptr noundef nonnull getelementptr inbounds ([3 x [3 x float]], ptr @ZERO, i64 0, i64 2)) #16
  %73 = add nuw nsw i64 %69, 1
  %74 = load i32, ptr %62, align 4, !tbaa !51
  %75 = load i32, ptr %63, align 4, !tbaa !54
  %76 = add i32 %75, %74
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %68, label %79, !llvm.loop !144

79:                                               ; preds = %68, %61
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %16) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %16, i8 0, i64 36, i1 false)
  %80 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 0, i32 6
  %81 = load i32, ptr %80, align 4, !tbaa !51
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds [3 x float], ptr %18, i64 1
  %85 = getelementptr inbounds [3 x float], ptr %18, i64 2
  br label %96

86:                                               ; preds = %96, %79
  %87 = phi i32 [ 0, %79 ], [ %102, %96 ]
  %88 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 0, i32 7
  %89 = load i32, ptr %88, align 4, !tbaa !54
  %90 = add i32 %89, %87
  %91 = icmp ult i32 %87, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %86
  %93 = getelementptr inbounds [3 x float], ptr %16, i64 1
  %94 = getelementptr inbounds [3 x float], ptr %16, i64 2
  %95 = zext i32 %87 to i64
  br label %105

96:                                               ; preds = %83, %96
  %97 = phi i64 [ 0, %83 ], [ %101, %96 ]
  %98 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %97
  call fastcc void @copy_v3_v3(ptr noundef %98, ptr noundef nonnull %18) #16
  %99 = getelementptr inbounds [3 x float], ptr %98, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %99, ptr noundef nonnull %84) #16
  %100 = getelementptr inbounds [3 x float], ptr %98, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %100, ptr noundef nonnull %85) #16
  %101 = add nuw nsw i64 %97, 1
  %102 = load i32, ptr %80, align 4, !tbaa !51
  %103 = zext i32 %102 to i64
  %104 = icmp ult i64 %101, %103
  br i1 %104, label %96, label %86, !llvm.loop !87

105:                                              ; preds = %92, %105
  %106 = phi i64 [ %95, %92 ], [ %110, %105 ]
  %107 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %106
  call fastcc void @copy_v3_v3(ptr noundef %107, ptr noundef nonnull %16) #16
  %108 = getelementptr inbounds [3 x float], ptr %107, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %108, ptr noundef nonnull %93) #16
  %109 = getelementptr inbounds [3 x float], ptr %107, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %109, ptr noundef nonnull %94) #16
  %110 = add nuw nsw i64 %106, 1
  %111 = load i32, ptr %80, align 4, !tbaa !51
  %112 = load i32, ptr %88, align 4, !tbaa !54
  %113 = add i32 %112, %111
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %110, %114
  br i1 %115, label %105, label %116, !llvm.loop !88

116:                                              ; preds = %105, %86
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %16) #17
  %117 = icmp eq i32 %37, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %116
  %119 = zext i32 %37 to i64
  br label %120

120:                                              ; preds = %118, %120
  %121 = phi i64 [ 0, %118 ], [ %123, %120 ]
  %122 = getelementptr inbounds [3 x float], ptr %1, i64 %121
  call fastcc void @copy_v3_v3(ptr noundef %122, ptr noundef nonnull %17) #16
  %123 = add nuw nsw i64 %121, 1
  %124 = icmp eq i64 %123, %119
  br i1 %124, label %125, label %120, !llvm.loop !145

125:                                              ; preds = %120, %116
  %126 = load ptr, ptr %29, align 8, !tbaa !95
  %127 = getelementptr inbounds %struct.ClothSimSettings, ptr %126, i64 0, i32 23
  %128 = load float, ptr %127, align 8, !tbaa !146
  %129 = fcmp ogt float %128, 0.000000e+00
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.ClothSimSettings, ptr %126, i64 0, i32 24
  %132 = load float, ptr %131, align 4, !tbaa !147
  %133 = fcmp ogt float %132, 0.000000e+00
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %125
  tail call fastcc void @hair_velocity_smoothing(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %37) #16
  br label %135

135:                                              ; preds = %134, %130
  br i1 %117, label %176, label %136

136:                                              ; preds = %135
  %137 = zext i32 %37 to i64
  br label %141

138:                                              ; preds = %141
  br i1 %117, label %176, label %139

139:                                              ; preds = %138
  %140 = zext i32 %37 to i64
  br label %154

141:                                              ; preds = %136, %141
  %142 = phi i64 [ 0, %136 ], [ %152, %141 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #17
  %143 = getelementptr inbounds [3 x float], ptr %1, i64 %142
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef %143) #16
  %144 = getelementptr inbounds %struct.fmatrix3x3, ptr %8, i64 %142
  %145 = call fastcc float @dot_v3v3(ptr noundef %144, ptr noundef nonnull %20) #16
  store float %145, ptr %143, align 4, !tbaa !77
  %146 = getelementptr inbounds [3 x float], ptr %144, i64 1
  %147 = call fastcc float @dot_v3v3(ptr noundef nonnull %146, ptr noundef nonnull %20) #16
  %148 = getelementptr inbounds float, ptr %143, i64 1
  store float %147, ptr %148, align 4, !tbaa !77
  %149 = getelementptr inbounds [3 x float], ptr %144, i64 2
  %150 = call fastcc float @dot_v3v3(ptr noundef nonnull %149, ptr noundef nonnull %20) #16
  %151 = getelementptr inbounds float, ptr %143, i64 2
  store float %150, ptr %151, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #17
  %152 = add nuw nsw i64 %142, 1
  %153 = icmp eq i64 %152, %137
  br i1 %153, label %138, label %141, !llvm.loop !148

154:                                              ; preds = %139, %154
  %155 = phi i64 [ 0, %139 ], [ %174, %154 ]
  %156 = getelementptr inbounds [3 x float], ptr %3, i64 %155
  %157 = load float, ptr %156, align 4, !tbaa !77
  %158 = getelementptr inbounds [3 x float], ptr %1, i64 %155
  %159 = load float, ptr %158, align 4, !tbaa !77
  %160 = fneg float %157
  %161 = tail call float @llvm.fmuladd.f32(float %160, float %33, float %159)
  store float %161, ptr %158, align 4, !tbaa !77
  %162 = getelementptr inbounds float, ptr %156, i64 1
  %163 = load float, ptr %162, align 4, !tbaa !77
  %164 = getelementptr inbounds float, ptr %158, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !77
  %166 = fneg float %163
  %167 = tail call float @llvm.fmuladd.f32(float %166, float %33, float %165)
  store float %167, ptr %164, align 4, !tbaa !77
  %168 = getelementptr inbounds float, ptr %156, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !77
  %170 = getelementptr inbounds float, ptr %158, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !77
  %172 = fneg float %169
  %173 = tail call float @llvm.fmuladd.f32(float %172, float %33, float %171)
  store float %173, ptr %170, align 4, !tbaa !77
  %174 = add nuw nsw i64 %155, 1
  %175 = icmp eq i64 %174, %140
  br i1 %175, label %176, label %154, !llvm.loop !149

176:                                              ; preds = %154, %135, %138
  %177 = icmp eq ptr %6, null
  br i1 %177, label %372, label %178

178:                                              ; preds = %176
  %179 = load i32, ptr %36, align 8, !tbaa !49
  %180 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %181 = zext i32 %179 to i64
  %182 = mul nuw nsw i64 %181, 12
  %183 = tail call ptr %180(i64 noundef %182, ptr noundef nonnull @.str.5) #15
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  br label %187

187:                                              ; preds = %185, %178
  %188 = load i32, ptr %36, align 8, !tbaa !49
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %196, %187
  %191 = getelementptr inbounds %struct.Cloth, ptr %28, i64 0, i32 4
  %192 = load i32, ptr %191, align 8, !tbaa !150
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %294, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds float, ptr %23, i64 2
  br label %210

196:                                              ; preds = %187, %196
  %197 = phi i64 [ %206, %196 ], [ 0, %187 ]
  %198 = load ptr, ptr %41, align 8, !tbaa !119
  %199 = getelementptr inbounds [3 x float], ptr %2, i64 %197
  %200 = getelementptr inbounds [3 x float], ptr %3, i64 %197
  %201 = trunc i64 %197 to i32
  call void @pd_point_from_loc(ptr noundef %198, ptr noundef %199, ptr noundef %200, i32 noundef %201, ptr noundef nonnull %19) #15
  %202 = load ptr, ptr %29, align 8, !tbaa !95
  %203 = getelementptr inbounds %struct.ClothSimSettings, ptr %202, i64 0, i32 41
  %204 = load ptr, ptr %203, align 8, !tbaa !141
  %205 = getelementptr inbounds [3 x float], ptr %183, i64 %197
  call void @pdDoEffectors(ptr noundef nonnull %6, ptr noundef null, ptr noundef %204, ptr noundef nonnull %19, ptr noundef %205, ptr noundef null) #15
  %206 = add nuw nsw i64 %197, 1
  %207 = load i32, ptr %36, align 8, !tbaa !49
  %208 = zext i32 %207 to i64
  %209 = icmp ult i64 %206, %208
  br i1 %209, label %196, label %190, !llvm.loop !151

210:                                              ; preds = %194, %287
  %211 = phi i64 [ 0, %194 ], [ %288, %287 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %21, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %22, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %23, i8 0, i64 12, i1 false)
  %212 = getelementptr inbounds %struct.MFace, ptr %35, i64 %211
  %213 = getelementptr inbounds %struct.MFace, ptr %35, i64 %211, i32 3
  %214 = load i32, ptr %213, align 4, !tbaa !152
  %215 = icmp eq i32 %214, 0
  %216 = select i1 %215, float 0x3F7B4E81C0000000, float 0x3F747AE140000000
  %217 = load i32, ptr %212, align 4, !tbaa !154
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [3 x float], ptr %2, i64 %218
  %220 = getelementptr inbounds %struct.MFace, ptr %35, i64 %211, i32 1
  %221 = load i32, ptr %220, align 4, !tbaa !155
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [3 x float], ptr %2, i64 %222
  %224 = getelementptr inbounds %struct.MFace, ptr %35, i64 %211, i32 2
  %225 = load i32, ptr %224, align 4, !tbaa !156
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [3 x float], ptr %2, i64 %226
  br i1 %215, label %231, label %228

228:                                              ; preds = %210
  %229 = zext i32 %214 to i64
  %230 = getelementptr inbounds [3 x float], ptr %2, i64 %229
  call fastcc void @CalcFloat4(ptr noundef %219, ptr noundef %223, ptr noundef %227, ptr noundef nonnull %230, ptr noundef nonnull %22) #16
  br label %232

231:                                              ; preds = %210
  call fastcc void @CalcFloat(ptr noundef %219, ptr noundef %223, ptr noundef %227, ptr noundef nonnull %22) #16
  br label %232

232:                                              ; preds = %231, %228
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %21, ptr noundef nonnull %22) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %21) #16
  %233 = load i32, ptr %212, align 4, !tbaa !154
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [3 x float], ptr %183, i64 %234
  %236 = call fastcc float @calculateVertexWindForce(ptr noundef %235, ptr noundef nonnull %22) #16
  call fastcc void @mul_v3_fl(ptr noundef nonnull %23, float noundef %236) #16
  %237 = getelementptr inbounds [3 x float], ptr %1, i64 %234
  %238 = load <2 x float>, ptr %237, align 4, !tbaa !77
  %239 = load <2 x float>, ptr %23, align 8, !tbaa !77
  %240 = insertelement <2 x float> poison, float %216, i64 0
  %241 = shufflevector <2 x float> %240, <2 x float> poison, <2 x i32> zeroinitializer
  %242 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %239, <2 x float> %241, <2 x float> %238)
  store <2 x float> %242, ptr %237, align 4, !tbaa !77
  %243 = getelementptr inbounds [3 x float], ptr %1, i64 %234, i64 2
  %244 = load float, ptr %243, align 4, !tbaa !77
  %245 = load float, ptr %195, align 8, !tbaa !77
  %246 = call float @llvm.fmuladd.f32(float %245, float %216, float %244)
  store float %246, ptr %243, align 4, !tbaa !77
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %21) #16
  %247 = getelementptr inbounds %struct.MFace, ptr %35, i64 %211, i32 1
  %248 = load i32, ptr %247, align 4, !tbaa !155
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds [3 x float], ptr %183, i64 %249
  %251 = call fastcc float @calculateVertexWindForce(ptr noundef %250, ptr noundef nonnull %22) #16
  call fastcc void @mul_v3_fl(ptr noundef nonnull %23, float noundef %251) #16
  %252 = getelementptr inbounds [3 x float], ptr %1, i64 %249
  %253 = load <2 x float>, ptr %252, align 4, !tbaa !77
  %254 = load <2 x float>, ptr %23, align 8, !tbaa !77
  %255 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %254, <2 x float> %241, <2 x float> %253)
  store <2 x float> %255, ptr %252, align 4, !tbaa !77
  %256 = getelementptr inbounds [3 x float], ptr %1, i64 %249, i64 2
  %257 = load float, ptr %256, align 4, !tbaa !77
  %258 = load float, ptr %195, align 8, !tbaa !77
  %259 = call float @llvm.fmuladd.f32(float %258, float %216, float %257)
  store float %259, ptr %256, align 4, !tbaa !77
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %21) #16
  %260 = getelementptr inbounds %struct.MFace, ptr %35, i64 %211, i32 2
  %261 = load i32, ptr %260, align 4, !tbaa !156
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds [3 x float], ptr %183, i64 %262
  %264 = call fastcc float @calculateVertexWindForce(ptr noundef %263, ptr noundef nonnull %22) #16
  call fastcc void @mul_v3_fl(ptr noundef nonnull %23, float noundef %264) #16
  %265 = getelementptr inbounds [3 x float], ptr %1, i64 %262
  %266 = load <2 x float>, ptr %265, align 4, !tbaa !77
  %267 = load <2 x float>, ptr %23, align 8, !tbaa !77
  %268 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %267, <2 x float> %241, <2 x float> %266)
  store <2 x float> %268, ptr %265, align 4, !tbaa !77
  %269 = getelementptr inbounds [3 x float], ptr %1, i64 %262, i64 2
  %270 = load float, ptr %269, align 4, !tbaa !77
  %271 = load float, ptr %195, align 8, !tbaa !77
  %272 = call float @llvm.fmuladd.f32(float %271, float %216, float %270)
  store float %272, ptr %269, align 4, !tbaa !77
  %273 = load i32, ptr %213, align 4, !tbaa !152
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %287, label %275

275:                                              ; preds = %232
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %21) #16
  %276 = zext i32 %273 to i64
  %277 = getelementptr inbounds [3 x float], ptr %183, i64 %276
  %278 = call fastcc float @calculateVertexWindForce(ptr noundef nonnull %277, ptr noundef nonnull %22) #16
  call fastcc void @mul_v3_fl(ptr noundef nonnull %23, float noundef %278) #16
  %279 = getelementptr inbounds [3 x float], ptr %1, i64 %276
  %280 = load <2 x float>, ptr %279, align 4, !tbaa !77
  %281 = load <2 x float>, ptr %23, align 8, !tbaa !77
  %282 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %281, <2 x float> %241, <2 x float> %280)
  store <2 x float> %282, ptr %279, align 4, !tbaa !77
  %283 = getelementptr inbounds [3 x float], ptr %1, i64 %276, i64 2
  %284 = load float, ptr %283, align 4, !tbaa !77
  %285 = load float, ptr %195, align 8, !tbaa !77
  %286 = call float @llvm.fmuladd.f32(float %285, float %216, float %284)
  store float %286, ptr %283, align 4, !tbaa !77
  br label %287

287:                                              ; preds = %275, %232
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #17
  %288 = add nuw nsw i64 %211, 1
  %289 = load i32, ptr %191, align 8, !tbaa !150
  %290 = zext i32 %289 to i64
  %291 = icmp ult i64 %288, %290
  br i1 %291, label %210, label %292, !llvm.loop !157

292:                                              ; preds = %287
  %293 = icmp eq i32 %289, 0
  br i1 %293, label %294, label %369

294:                                              ; preds = %190, %292
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %24, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %25, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %26, i8 0, i64 12, i1 false)
  %295 = getelementptr inbounds %struct.Cloth, ptr %28, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !47
  %297 = icmp eq ptr %296, null
  br i1 %297, label %368, label %298

298:                                              ; preds = %294
  %299 = getelementptr inbounds float, ptr %25, i64 1
  %300 = getelementptr inbounds float, ptr %25, i64 2
  br label %301

301:                                              ; preds = %298, %365
  %302 = phi ptr [ %296, %298 ], [ %366, %365 ]
  %303 = getelementptr inbounds %struct.LinkNode, ptr %302, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !80
  %305 = getelementptr inbounds %struct.ClothSpring, ptr %304, i64 0, i32 4
  %306 = load i32, ptr %305, align 4, !tbaa !158
  %307 = icmp eq i32 %306, 2
  br i1 %307, label %308, label %365

308:                                              ; preds = %301
  %309 = load i32, ptr %304, align 4, !tbaa !82
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [3 x float], ptr %2, i64 %310
  %312 = getelementptr inbounds %struct.ClothSpring, ptr %304, i64 0, i32 1
  %313 = load i32, ptr %312, align 4, !tbaa !84
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [3 x float], ptr %2, i64 %314
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %24, ptr noundef %311, ptr noundef %315) #16
  %316 = load i32, ptr %304, align 4, !tbaa !82
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [3 x float], ptr %183, i64 %317
  call void @project_v3_v3v3(ptr noundef nonnull %26, ptr noundef %318, ptr noundef nonnull %24) #15
  %319 = load i32, ptr %304, align 4, !tbaa !82
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [3 x float], ptr %183, i64 %320
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %25, ptr noundef %321, ptr noundef nonnull %26) #16
  %322 = getelementptr inbounds [3 x float], ptr %1, i64 %320
  %323 = load float, ptr %322, align 4, !tbaa !77
  %324 = load float, ptr %25, align 4, !tbaa !77
  %325 = getelementptr inbounds %struct.ClothSpring, ptr %304, i64 0, i32 2
  %326 = load float, ptr %325, align 4, !tbaa !159
  %327 = fmul float %324, %326
  %328 = call float @llvm.fmuladd.f32(float %327, float 0x3F847AE140000000, float %323)
  store float %328, ptr %322, align 4, !tbaa !77
  %329 = getelementptr inbounds [3 x float], ptr %1, i64 %320, i64 1
  %330 = load float, ptr %329, align 4, !tbaa !77
  %331 = load float, ptr %299, align 4, !tbaa !77
  %332 = load float, ptr %325, align 4, !tbaa !159
  %333 = fmul float %331, %332
  %334 = call float @llvm.fmuladd.f32(float %333, float 0x3F847AE140000000, float %330)
  store float %334, ptr %329, align 4, !tbaa !77
  %335 = getelementptr inbounds [3 x float], ptr %1, i64 %320, i64 2
  %336 = load float, ptr %335, align 4, !tbaa !77
  %337 = load float, ptr %300, align 4, !tbaa !77
  %338 = load float, ptr %325, align 4, !tbaa !159
  %339 = fmul float %337, %338
  %340 = call float @llvm.fmuladd.f32(float %339, float 0x3F847AE140000000, float %336)
  store float %340, ptr %335, align 4, !tbaa !77
  %341 = load i32, ptr %312, align 4, !tbaa !84
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [3 x float], ptr %183, i64 %342
  call void @project_v3_v3v3(ptr noundef nonnull %26, ptr noundef %343, ptr noundef nonnull %24) #15
  %344 = load i32, ptr %312, align 4, !tbaa !84
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [3 x float], ptr %183, i64 %345
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %25, ptr noundef %346, ptr noundef nonnull %26) #16
  %347 = getelementptr inbounds [3 x float], ptr %1, i64 %345
  %348 = load float, ptr %347, align 4, !tbaa !77
  %349 = load float, ptr %25, align 4, !tbaa !77
  %350 = load float, ptr %325, align 4, !tbaa !159
  %351 = fmul float %349, %350
  %352 = call float @llvm.fmuladd.f32(float %351, float 0x3F847AE140000000, float %348)
  store float %352, ptr %347, align 4, !tbaa !77
  %353 = getelementptr inbounds [3 x float], ptr %1, i64 %345, i64 1
  %354 = load float, ptr %353, align 4, !tbaa !77
  %355 = load float, ptr %299, align 4, !tbaa !77
  %356 = load float, ptr %325, align 4, !tbaa !159
  %357 = fmul float %355, %356
  %358 = call float @llvm.fmuladd.f32(float %357, float 0x3F847AE140000000, float %354)
  store float %358, ptr %353, align 4, !tbaa !77
  %359 = getelementptr inbounds [3 x float], ptr %1, i64 %345, i64 2
  %360 = load float, ptr %359, align 4, !tbaa !77
  %361 = load float, ptr %300, align 4, !tbaa !77
  %362 = load float, ptr %325, align 4, !tbaa !159
  %363 = fmul float %361, %362
  %364 = call float @llvm.fmuladd.f32(float %363, float 0x3F847AE140000000, float %360)
  store float %364, ptr %359, align 4, !tbaa !77
  br label %365

365:                                              ; preds = %308, %301
  %366 = load ptr, ptr %302, align 8, !tbaa !47
  %367 = icmp eq ptr %366, null
  br i1 %367, label %368, label %301, !llvm.loop !160

368:                                              ; preds = %365, %294
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #17
  br label %369

369:                                              ; preds = %368, %292
  br i1 %184, label %372, label %370

370:                                              ; preds = %369
  %371 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %371(ptr noundef nonnull %183) #15
  br label %372

372:                                              ; preds = %370, %369, %176
  %373 = getelementptr inbounds %struct.Cloth, ptr %28, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !47
  %375 = icmp eq ptr %374, null
  br i1 %375, label %846, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds [3 x float], ptr %14, i64 1
  %378 = getelementptr inbounds [3 x float], ptr %14, i64 2
  %379 = getelementptr inbounds float, ptr %10, i64 2
  %380 = getelementptr inbounds float, ptr %11, i64 2
  %381 = getelementptr inbounds float, ptr %15, i64 2
  %382 = insertelement <2 x float> poison, float %7, i64 0
  %383 = shufflevector <2 x float> %382, <2 x float> poison, <2 x i32> zeroinitializer
  br label %387

384:                                              ; preds = %680
  %385 = load ptr, ptr %373, align 8, !tbaa !47
  %386 = icmp eq ptr %385, null
  br i1 %386, label %846, label %683

387:                                              ; preds = %376, %680
  %388 = phi ptr [ %374, %376 ], [ %681, %680 ]
  %389 = getelementptr inbounds %struct.LinkNode, ptr %388, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !80
  %391 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 5
  %392 = load i32, ptr %391, align 4, !tbaa !161
  %393 = and i32 %392, 2
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %680

395:                                              ; preds = %387
  %396 = load ptr, ptr %27, align 8, !tbaa !42
  %397 = load ptr, ptr %396, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #17
  %398 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 2
  %399 = load float, ptr %398, align 4, !tbaa !159
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %14, i8 0, i64 36, i1 false)
  %400 = load ptr, ptr %29, align 8, !tbaa !95
  %401 = getelementptr inbounds %struct.ClothSimSettings, ptr %400, i64 0, i32 29
  %402 = load i32, ptr %401, align 8, !tbaa !99
  %403 = and i32 %402, 8192
  %404 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %404, ptr noundef nonnull %13) #16
  %405 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %405, ptr noundef nonnull %14) #16
  %406 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 6, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %406, ptr noundef nonnull %377) #16
  %407 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 6, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %407, ptr noundef nonnull %378) #16
  %408 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %408, ptr noundef nonnull %14) #16
  %409 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 7, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %409, ptr noundef nonnull %377) #16
  %410 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 7, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %410, ptr noundef nonnull %378) #16
  %411 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 1
  %412 = load i32, ptr %411, align 4, !tbaa !84
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [3 x float], ptr %2, i64 %413
  %415 = load i32, ptr %390, align 4, !tbaa !82
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [3 x float], ptr %2, i64 %416
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %414, ptr noundef %417) #16
  %418 = getelementptr inbounds [3 x float], ptr %3, i64 %413
  %419 = getelementptr inbounds [3 x float], ptr %3, i64 %416
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef %418, ptr noundef %419) #16
  %420 = call fastcc float @dot_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %10) #16
  %421 = call float @sqrtf(float noundef %420) #15
  %422 = load i32, ptr %391, align 4, !tbaa !161
  %423 = and i32 %422, -5
  store i32 %423, ptr %391, align 4, !tbaa !161
  %424 = fcmp ogt float %421, 0x3E80000000000000
  br i1 %424, label %425, label %432

425:                                              ; preds = %395
  %426 = fdiv float 1.000000e+00, %421
  %427 = load <2 x float>, ptr %10, align 8, !tbaa !77
  %428 = insertelement <2 x float> poison, float %426, i64 0
  %429 = shufflevector <2 x float> %428, <2 x float> poison, <2 x i32> zeroinitializer
  %430 = fmul <2 x float> %429, %427
  store <2 x float> %430, ptr %11, align 8, !tbaa !77
  %431 = load float, ptr %379, align 8, !tbaa !77
  br label %436

432:                                              ; preds = %395
  %433 = load <2 x float>, ptr %10, align 8, !tbaa !77
  %434 = fmul <2 x float> %433, zeroinitializer
  store <2 x float> %434, ptr %11, align 8, !tbaa !77
  %435 = load float, ptr %379, align 8, !tbaa !77
  br label %436

436:                                              ; preds = %432, %425
  %437 = phi float [ 0.000000e+00, %432 ], [ %431, %425 ]
  %438 = phi float [ %435, %432 ], [ %426, %425 ]
  %439 = phi <2 x float> [ %434, %432 ], [ %430, %425 ]
  %440 = shufflevector <2 x float> %439, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %441 = fmul float %438, %437
  store float %441, ptr %380, align 8, !tbaa !77
  %442 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 4
  %443 = load i32, ptr %442, align 4, !tbaa !158
  %444 = and i32 %443, 32
  %445 = icmp eq i32 %444, 0
  %446 = and i32 %443, 38
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %546, label %448

448:                                              ; preds = %436
  %449 = fcmp ogt float %421, %399
  %450 = icmp ne i32 %403, 0
  %451 = select i1 %449, i1 true, i1 %450
  br i1 %451, label %452, label %679

452:                                              ; preds = %448
  %453 = or i32 %422, 4
  store i32 %453, ptr %391, align 4, !tbaa !161
  %454 = load ptr, ptr %29, align 8, !tbaa !95
  %455 = getelementptr inbounds %struct.ClothSimSettings, ptr %454, i64 0, i32 7
  %456 = load float, ptr %455, align 8, !tbaa !162
  %457 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 9
  %458 = load float, ptr %457, align 4, !tbaa !163
  %459 = getelementptr inbounds %struct.ClothSimSettings, ptr %454, i64 0, i32 11
  %460 = load float, ptr %459, align 8, !tbaa !164
  %461 = fsub float %460, %456
  %462 = call float @llvm.fabs.f32(float %461)
  %463 = call float @llvm.fmuladd.f32(float %458, float %462, float %456)
  %464 = getelementptr inbounds %struct.ClothSimSettings, ptr %454, i64 0, i32 14
  %465 = load float, ptr %464, align 4, !tbaa !165
  %466 = fadd float %465, 0x3E80000000000000
  %467 = fdiv float %463, %466
  %468 = fsub float %421, %399
  %469 = fmul float %468, %467
  br i1 %445, label %478, label %470

470:                                              ; preds = %452
  %471 = getelementptr inbounds %struct.ClothSimSettings, ptr %454, i64 0, i32 13
  %472 = load float, ptr %471, align 8, !tbaa !166
  %473 = fcmp ogt float %469, %472
  %474 = select i1 %473, float %472, float %469
  %475 = insertelement <2 x float> poison, float %474, i64 0
  %476 = shufflevector <2 x float> %475, <2 x float> poison, <2 x i32> zeroinitializer
  %477 = fmul <2 x float> %439, %476
  br label %482

478:                                              ; preds = %452
  %479 = insertelement <2 x float> poison, float %469, i64 0
  %480 = shufflevector <2 x float> %479, <2 x float> poison, <2 x i32> zeroinitializer
  %481 = fmul <2 x float> %480, %439
  br label %482

482:                                              ; preds = %478, %470
  %483 = phi float [ %469, %478 ], [ %474, %470 ]
  %484 = phi <2 x float> [ %481, %478 ], [ %477, %470 ]
  %485 = fmul float %483, %441
  %486 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 8, i64 2
  %487 = load float, ptr %486, align 4, !tbaa !77
  %488 = fadd float %485, %487
  store float %488, ptr %486, align 4, !tbaa !77
  %489 = getelementptr inbounds %struct.ClothSimSettings, ptr %454, i64 0, i32 2
  %490 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11) #16
  %491 = load <2 x float>, ptr %404, align 4, !tbaa !77
  %492 = fadd <2 x float> %484, %491
  store <2 x float> %492, ptr %404, align 4, !tbaa !77
  %493 = load float, ptr %489, align 4, !tbaa !167
  %494 = fmul float %493, %490
  %495 = insertelement <2 x float> poison, float %494, i64 0
  %496 = shufflevector <2 x float> %495, <2 x float> poison, <2 x i32> zeroinitializer
  %497 = fmul <2 x float> %439, %496
  %498 = fmul float %494, %441
  %499 = fadd <2 x float> %492, %497
  store <2 x float> %499, ptr %404, align 4, !tbaa !77
  %500 = fadd float %488, %498
  store float %500, ptr %486, align 4, !tbaa !77
  %501 = fmul <2 x float> %439, %439
  %502 = extractelement <2 x float> %501, i64 0
  store float %502, ptr %405, align 4, !tbaa !77
  %503 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 6, i64 0, i64 1
  %504 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 6, i64 1, i64 1
  %505 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 6, i64 1, i64 2
  %506 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 6, i64 2, i64 1
  %507 = fmul float %441, %441
  %508 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 6, i64 2, i64 2
  store float %507, ptr %508, align 4, !tbaa !77
  %509 = fdiv float %399, %421
  %510 = fneg float %467
  %511 = insertelement <4 x float> poison, float %510, i64 0
  %512 = shufflevector <4 x float> %511, <4 x float> poison, <4 x i32> zeroinitializer
  %513 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 7, i64 0, i64 1
  %514 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 7, i64 0, i64 2
  %515 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 7, i64 2, i64 2
  %516 = insertelement <2 x float> %439, float %441, i64 0
  %517 = shufflevector <2 x float> %516, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %518 = fmul <4 x float> %440, %517
  %519 = extractelement <4 x float> %518, i64 0
  %520 = shufflevector <4 x float> %518, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  store <4 x float> %520, ptr %503, align 4, !tbaa !77
  %521 = extractelement <4 x float> %518, i64 3
  store float %521, ptr %505, align 4, !tbaa !77
  store float %519, ptr %407, align 4, !tbaa !77
  store float %521, ptr %506, align 4, !tbaa !77
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %405, ptr noundef nonnull @I, ptr noundef nonnull %405) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %406, ptr noundef nonnull getelementptr inbounds ([3 x [3 x float]], ptr @I, i64 0, i64 1), ptr noundef nonnull %406) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %407, ptr noundef nonnull getelementptr inbounds ([3 x [3 x float]], ptr @I, i64 0, i64 2), ptr noundef nonnull %407) #16
  %522 = load <4 x float>, ptr %405, align 4, !tbaa !77
  %523 = insertelement <4 x float> poison, float %509, i64 0
  %524 = shufflevector <4 x float> %523, <4 x float> poison, <4 x i32> zeroinitializer
  %525 = fmul <4 x float> %524, %522
  store <4 x float> %525, ptr %405, align 4, !tbaa !77
  %526 = load <4 x float>, ptr %504, align 4, !tbaa !77
  %527 = fmul <4 x float> %524, %526
  store <4 x float> %527, ptr %504, align 4, !tbaa !77
  %528 = load float, ptr %508, align 4, !tbaa !77
  %529 = fmul float %509, %528
  store float %529, ptr %508, align 4, !tbaa !77
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %405, ptr noundef nonnull %405, ptr noundef nonnull @I) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %406, ptr noundef nonnull %406, ptr noundef nonnull getelementptr inbounds ([3 x [3 x float]], ptr @I, i64 0, i64 1)) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %407, ptr noundef nonnull %407, ptr noundef nonnull getelementptr inbounds ([3 x [3 x float]], ptr @I, i64 0, i64 2)) #16
  %530 = load <4 x float>, ptr %405, align 4, !tbaa !77
  %531 = fmul <4 x float> %530, %512
  store <4 x float> %531, ptr %405, align 4, !tbaa !77
  %532 = load <4 x float>, ptr %504, align 4, !tbaa !77
  %533 = fmul <4 x float> %532, %512
  store <4 x float> %533, ptr %504, align 4, !tbaa !77
  %534 = load float, ptr %508, align 4, !tbaa !77
  %535 = fmul float %534, %510
  store float %535, ptr %508, align 4, !tbaa !77
  %536 = load ptr, ptr %29, align 8, !tbaa !95
  %537 = getelementptr inbounds %struct.ClothSimSettings, ptr %536, i64 0, i32 2
  %538 = load float, ptr %537, align 4, !tbaa !167
  %539 = fmul float %502, %538
  store float %539, ptr %408, align 4, !tbaa !77
  %540 = insertelement <4 x float> poison, float %538, i64 0
  %541 = shufflevector <4 x float> %540, <4 x float> poison, <4 x i32> zeroinitializer
  %542 = fmul <4 x float> %518, %541
  %543 = extractelement <4 x float> %542, i64 1
  store float %543, ptr %513, align 4, !tbaa !77
  store <4 x float> %542, ptr %514, align 4, !tbaa !77
  %544 = shufflevector <4 x float> %542, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %544, ptr %410, align 4, !tbaa !77
  %545 = fmul float %507, %538
  store float %545, ptr %515, align 4, !tbaa !77
  br label %679

546:                                              ; preds = %436
  %547 = and i32 %443, 16
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %603, label %549

549:                                              ; preds = %546
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #17
  %550 = or i32 %422, 4
  store i32 %550, ptr %391, align 4, !tbaa !161
  %551 = load i32, ptr %390, align 4, !tbaa !82
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.ClothVertex, ptr %397, i64 %552, i32 2
  %554 = getelementptr inbounds %struct.ClothVertex, ptr %397, i64 %552, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %553, ptr noundef nonnull %554) #16
  %555 = load float, ptr %381, align 8, !tbaa !77
  %556 = fmul float %555, %7
  %557 = load <2 x float>, ptr %15, align 8, !tbaa !77
  %558 = fmul <2 x float> %557, %383
  %559 = load <2 x float>, ptr %554, align 8, !tbaa !77
  %560 = fadd <2 x float> %558, %559
  store <2 x float> %560, ptr %15, align 8, !tbaa !77
  %561 = getelementptr inbounds %struct.ClothVertex, ptr %397, i64 %552, i32 4, i64 2
  %562 = load float, ptr %561, align 4, !tbaa !77
  %563 = fadd float %556, %562
  store float %563, ptr %381, align 8, !tbaa !77
  %564 = getelementptr inbounds [3 x float], ptr %2, i64 %552
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %564, ptr noundef nonnull %15) #16
  %565 = load ptr, ptr %29, align 8, !tbaa !95
  %566 = getelementptr inbounds %struct.ClothSimSettings, ptr %565, i64 0, i32 21
  %567 = load float, ptr %566, align 8, !tbaa !168
  %568 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 9
  %569 = load float, ptr %568, align 4, !tbaa !163
  %570 = getelementptr inbounds %struct.ClothSimSettings, ptr %565, i64 0, i32 11
  %571 = load float, ptr %570, align 8, !tbaa !164
  %572 = fsub float %571, %567
  %573 = call float @llvm.fabs.f32(float %572)
  %574 = call float @llvm.fmuladd.f32(float %569, float %573, float %567)
  %575 = getelementptr inbounds %struct.ClothVertex, ptr %397, i64 %552, i32 9
  %576 = load float, ptr %575, align 4, !tbaa !169
  %577 = getelementptr inbounds %struct.ClothSimSettings, ptr %565, i64 0, i32 14
  %578 = load float, ptr %577, align 4, !tbaa !165
  %579 = fadd float %578, 0x3E80000000000000
  %580 = fneg float %576
  %581 = fmul float %574, %580
  %582 = fdiv float %581, %579
  %583 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 8, i64 2
  %584 = load float, ptr %583, align 4, !tbaa !77
  %585 = load float, ptr %379, align 8, !tbaa !77
  %586 = call float @llvm.fmuladd.f32(float %585, float %582, float %584)
  store float %586, ptr %583, align 4, !tbaa !77
  %587 = getelementptr inbounds %struct.ClothSimSettings, ptr %565, i64 0, i32 22
  %588 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %11) #16
  %589 = load <2 x float>, ptr %404, align 4, !tbaa !77
  %590 = load <2 x float>, ptr %10, align 8, !tbaa !77
  %591 = insertelement <2 x float> poison, float %582, i64 0
  %592 = shufflevector <2 x float> %591, <2 x float> poison, <2 x i32> zeroinitializer
  %593 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %590, <2 x float> %592, <2 x float> %589)
  store <2 x float> %593, ptr %404, align 4, !tbaa !77
  %594 = load float, ptr %587, align 4, !tbaa !170
  %595 = fmul float %594, 0x3F847AE140000000
  %596 = fmul float %595, %588
  %597 = insertelement <2 x float> poison, float %596, i64 0
  %598 = shufflevector <2 x float> %597, <2 x float> poison, <2 x i32> zeroinitializer
  %599 = fmul <2 x float> %439, %598
  %600 = fmul float %596, %441
  %601 = fadd <2 x float> %593, %599
  store <2 x float> %601, ptr %404, align 4, !tbaa !77
  %602 = fadd float %586, %600
  store float %602, ptr %583, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #17
  br label %679

603:                                              ; preds = %546
  %604 = fcmp olt float %421, %399
  br i1 %604, label %605, label %679

605:                                              ; preds = %603
  %606 = or i32 %422, 4
  store i32 %606, ptr %391, align 4, !tbaa !161
  %607 = load ptr, ptr %29, align 8, !tbaa !95
  %608 = getelementptr inbounds %struct.ClothSimSettings, ptr %607, i64 0, i32 9
  %609 = load float, ptr %608, align 8, !tbaa !171
  %610 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 9
  %611 = load float, ptr %610, align 4, !tbaa !163
  %612 = getelementptr inbounds %struct.ClothSimSettings, ptr %607, i64 0, i32 10
  %613 = load float, ptr %612, align 4, !tbaa !172
  %614 = fsub float %613, %609
  %615 = call float @llvm.fabs.f32(float %614)
  %616 = call float @llvm.fmuladd.f32(float %611, float %615, float %609)
  %617 = getelementptr inbounds %struct.ClothSimSettings, ptr %607, i64 0, i32 14
  %618 = load float, ptr %617, align 4, !tbaa !165
  %619 = fadd float %618, 0x3E80000000000000
  %620 = fmul float %619, 2.000000e+01
  %621 = fdiv float %616, %620
  %622 = fdiv float %421, %399
  %623 = call float @powf(float noundef %622, float noundef 4.000000e+00) #15
  %624 = call float @powf(float noundef %622, float noundef 3.000000e+00) #15
  %625 = fmul float %624, 0x404118B440000000
  %626 = call float @llvm.fmuladd.f32(float %623, float 0xC02714FE00000000, float %625)
  %627 = fmul float %622, %622
  %628 = call float @llvm.fmuladd.f32(float %627, float 0xC0438A9FC0000000, float %626)
  %629 = call float @llvm.fmuladd.f32(float %622, float 0x40371DB220000000, float %628)
  %630 = fadd float %629, 0xC0236D0E60000000
  %631 = fmul float %621, %630
  %632 = fsub float %421, %399
  %633 = fmul float %632, %621
  %634 = fcmp olt float %631, %633
  %635 = select i1 %634, float %633, float %631
  %636 = fmul float %441, %635
  %637 = insertelement <2 x float> poison, float %635, i64 0
  %638 = shufflevector <2 x float> %637, <2 x float> poison, <2 x i32> zeroinitializer
  %639 = fmul <2 x float> %439, %638
  %640 = load <2 x float>, ptr %404, align 4, !tbaa !77
  %641 = fadd <2 x float> %640, %639
  store <2 x float> %641, ptr %404, align 4, !tbaa !77
  %642 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 8, i64 2
  %643 = load float, ptr %642, align 4, !tbaa !77
  %644 = fadd float %643, %636
  store float %644, ptr %642, align 4, !tbaa !77
  %645 = call float @powf(float noundef %622, float noundef 4.000000e+00) #15
  %646 = call float @powf(float noundef %622, float noundef 3.000000e+00) #15
  %647 = fmul float %646, 0x404118B440000000
  %648 = call float @llvm.fmuladd.f32(float %645, float 0xC02714FE00000000, float %647)
  %649 = call float @llvm.fmuladd.f32(float %627, float 0xC0438A9FC0000000, float %648)
  %650 = call float @llvm.fmuladd.f32(float %622, float 0x40371DB220000000, float %649)
  %651 = fadd float %650, 0xC0236D0E60000000
  %652 = fmul float %621, %651
  %653 = fcmp olt float %652, %633
  br i1 %653, label %661, label %654

654:                                              ; preds = %605
  %655 = call float @powf(float noundef %622, float noundef 3.000000e+00) #15
  %656 = fmul float %627, 0x4059A50E60000000
  %657 = call float @llvm.fmuladd.f32(float %655, float 0xC04714FE00000000, float %656)
  %658 = call float @llvm.fmuladd.f32(float %622, float 0xC0538A9FC0000000, float %657)
  %659 = fadd float %658, 0x40371DB220000000
  %660 = fmul float %621, %659
  br label %661

661:                                              ; preds = %605, %654
  %662 = phi float [ %660, %654 ], [ %621, %605 ]
  %663 = fmul <2 x float> %439, %439
  %664 = extractelement <2 x float> %663, i64 0
  %665 = insertelement <2 x float> %439, float %441, i64 0
  %666 = shufflevector <2 x float> %665, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %667 = fmul <4 x float> %440, %666
  %668 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 6, i64 0, i64 1
  %669 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 6, i64 0, i64 2
  %670 = fmul float %441, %441
  %671 = getelementptr inbounds %struct.ClothSpring, ptr %390, i64 0, i32 6, i64 2, i64 2
  %672 = fmul float %664, %662
  store float %672, ptr %405, align 4, !tbaa !77
  %673 = insertelement <4 x float> poison, float %662, i64 0
  %674 = shufflevector <4 x float> %673, <4 x float> poison, <4 x i32> zeroinitializer
  %675 = fmul <4 x float> %667, %674
  %676 = extractelement <4 x float> %675, i64 1
  store float %676, ptr %668, align 4, !tbaa !77
  store <4 x float> %675, ptr %669, align 4, !tbaa !77
  %677 = shufflevector <4 x float> %675, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %677, ptr %407, align 4, !tbaa !77
  %678 = fmul float %670, %662
  store float %678, ptr %671, align 4, !tbaa !77
  br label %679

679:                                              ; preds = %448, %482, %549, %603, %661
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #17
  br label %680

680:                                              ; preds = %679, %387
  %681 = load ptr, ptr %388, align 8, !tbaa !47
  %682 = icmp eq ptr %681, null
  br i1 %682, label %384, label %387, !llvm.loop !173

683:                                              ; preds = %384, %843
  %684 = phi ptr [ %844, %843 ], [ %385, %384 ]
  %685 = getelementptr inbounds %struct.LinkNode, ptr %684, i64 0, i32 1
  %686 = load ptr, ptr %685, align 8, !tbaa !80
  %687 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 5
  %688 = load i32, ptr %687, align 4, !tbaa !161
  %689 = and i32 %688, 6
  %690 = icmp eq i32 %689, 4
  br i1 %690, label %691, label %843

691:                                              ; preds = %683
  %692 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 4
  %693 = load i32, ptr %692, align 4, !tbaa !158
  %694 = and i32 %693, 8
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %757

696:                                              ; preds = %691
  %697 = load i32, ptr %686, align 4, !tbaa !82
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %698
  %700 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef %699, ptr noundef %699, ptr noundef nonnull %700) #16
  %701 = getelementptr inbounds [3 x float], ptr %699, i64 1
  %702 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 7, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %701, ptr noundef nonnull %701, ptr noundef nonnull %702) #16
  %703 = getelementptr inbounds [3 x float], ptr %699, i64 2
  %704 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 7, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %703, ptr noundef nonnull %703, ptr noundef nonnull %704) #16
  %705 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 1
  %706 = load i32, ptr %705, align 4, !tbaa !84
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %707
  call fastcc void @sub_v3_v3v3(ptr noundef %708, ptr noundef %708, ptr noundef nonnull %700) #16
  %709 = getelementptr inbounds [3 x float], ptr %708, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %709, ptr noundef nonnull %709, ptr noundef nonnull %702) #16
  %710 = getelementptr inbounds [3 x float], ptr %708, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %710, ptr noundef nonnull %710, ptr noundef nonnull %704) #16
  %711 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 3
  %712 = load i32, ptr %711, align 4, !tbaa !85
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %713
  %715 = load float, ptr %714, align 4, !tbaa !77
  %716 = load float, ptr %700, align 4, !tbaa !77
  %717 = fadd float %715, %716
  store float %717, ptr %714, align 4, !tbaa !77
  %718 = getelementptr inbounds float, ptr %714, i64 1
  %719 = load float, ptr %718, align 4, !tbaa !77
  %720 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 7, i64 0, i64 1
  %721 = load float, ptr %720, align 4, !tbaa !77
  %722 = fadd float %719, %721
  store float %722, ptr %718, align 4, !tbaa !77
  %723 = getelementptr inbounds float, ptr %714, i64 2
  %724 = load float, ptr %723, align 4, !tbaa !77
  %725 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 7, i64 0, i64 2
  %726 = load float, ptr %725, align 4, !tbaa !77
  %727 = fadd float %724, %726
  store float %727, ptr %723, align 4, !tbaa !77
  %728 = getelementptr inbounds [3 x float], ptr %714, i64 1
  %729 = load float, ptr %728, align 4, !tbaa !77
  %730 = load float, ptr %702, align 4, !tbaa !77
  %731 = fadd float %729, %730
  store float %731, ptr %728, align 4, !tbaa !77
  %732 = getelementptr inbounds [3 x float], ptr %714, i64 1, i64 1
  %733 = load float, ptr %732, align 4, !tbaa !77
  %734 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 7, i64 1, i64 1
  %735 = load float, ptr %734, align 4, !tbaa !77
  %736 = fadd float %733, %735
  store float %736, ptr %732, align 4, !tbaa !77
  %737 = getelementptr inbounds [3 x float], ptr %714, i64 1, i64 2
  %738 = load float, ptr %737, align 4, !tbaa !77
  %739 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 7, i64 1, i64 2
  %740 = load float, ptr %739, align 4, !tbaa !77
  %741 = fadd float %738, %740
  store float %741, ptr %737, align 4, !tbaa !77
  %742 = getelementptr inbounds [3 x float], ptr %714, i64 2
  %743 = load float, ptr %742, align 4, !tbaa !77
  %744 = load float, ptr %704, align 4, !tbaa !77
  %745 = fadd float %743, %744
  store float %745, ptr %742, align 4, !tbaa !77
  %746 = getelementptr inbounds [3 x float], ptr %714, i64 2, i64 1
  %747 = load float, ptr %746, align 4, !tbaa !77
  %748 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 7, i64 2, i64 1
  %749 = load float, ptr %748, align 4, !tbaa !77
  %750 = fadd float %747, %749
  store float %750, ptr %746, align 4, !tbaa !77
  %751 = getelementptr inbounds [3 x float], ptr %714, i64 2, i64 2
  %752 = load float, ptr %751, align 4, !tbaa !77
  %753 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 7, i64 2, i64 2
  %754 = load float, ptr %753, align 4, !tbaa !77
  %755 = fadd float %752, %754
  store float %755, ptr %751, align 4, !tbaa !77
  %756 = load i32, ptr %692, align 4, !tbaa !158
  br label %757

757:                                              ; preds = %696, %691
  %758 = phi i32 [ %756, %696 ], [ %693, %691 ]
  %759 = load i32, ptr %686, align 4, !tbaa !82
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds [3 x float], ptr %1, i64 %760
  %762 = load float, ptr %761, align 4, !tbaa !77
  %763 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 8
  %764 = load float, ptr %763, align 4, !tbaa !77
  %765 = fadd float %762, %764
  store float %765, ptr %761, align 4, !tbaa !77
  %766 = getelementptr inbounds [3 x float], ptr %1, i64 %760, i64 1
  %767 = load float, ptr %766, align 4, !tbaa !77
  %768 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 8, i64 1
  %769 = load float, ptr %768, align 4, !tbaa !77
  %770 = fadd float %767, %769
  store float %770, ptr %766, align 4, !tbaa !77
  %771 = getelementptr inbounds [3 x float], ptr %1, i64 %760, i64 2
  %772 = load float, ptr %771, align 4, !tbaa !77
  %773 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 8, i64 2
  %774 = load float, ptr %773, align 4, !tbaa !77
  %775 = fadd float %772, %774
  store float %775, ptr %771, align 4, !tbaa !77
  %776 = and i32 %758, 16
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %783

778:                                              ; preds = %757
  %779 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 1
  %780 = load i32, ptr %779, align 4, !tbaa !84
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds [3 x float], ptr %1, i64 %781
  call fastcc void @sub_v3_v3v3(ptr noundef %782, ptr noundef %782, ptr noundef nonnull %763) #16
  br label %783

783:                                              ; preds = %778, %757
  %784 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 1
  %785 = load i32, ptr %784, align 4, !tbaa !84
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 %786
  %788 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 6
  call fastcc void @sub_v3_v3v3(ptr noundef %787, ptr noundef %787, ptr noundef nonnull %788) #16
  %789 = getelementptr inbounds [3 x float], ptr %787, i64 1
  %790 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 6, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %789, ptr noundef nonnull %789, ptr noundef nonnull %790) #16
  %791 = getelementptr inbounds [3 x float], ptr %787, i64 2
  %792 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 6, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %791, ptr noundef nonnull %791, ptr noundef nonnull %792) #16
  %793 = load i32, ptr %686, align 4, !tbaa !82
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 %794
  call fastcc void @sub_v3_v3v3(ptr noundef %795, ptr noundef %795, ptr noundef nonnull %788) #16
  %796 = getelementptr inbounds [3 x float], ptr %795, i64 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %796, ptr noundef nonnull %796, ptr noundef nonnull %790) #16
  %797 = getelementptr inbounds [3 x float], ptr %795, i64 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %797, ptr noundef nonnull %797, ptr noundef nonnull %792) #16
  %798 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 3
  %799 = load i32, ptr %798, align 4, !tbaa !85
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 %800
  %802 = load float, ptr %801, align 4, !tbaa !77
  %803 = load float, ptr %788, align 4, !tbaa !77
  %804 = fadd float %802, %803
  store float %804, ptr %801, align 4, !tbaa !77
  %805 = getelementptr inbounds float, ptr %801, i64 1
  %806 = load float, ptr %805, align 4, !tbaa !77
  %807 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 6, i64 0, i64 1
  %808 = load float, ptr %807, align 4, !tbaa !77
  %809 = fadd float %806, %808
  store float %809, ptr %805, align 4, !tbaa !77
  %810 = getelementptr inbounds float, ptr %801, i64 2
  %811 = load float, ptr %810, align 4, !tbaa !77
  %812 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 6, i64 0, i64 2
  %813 = load float, ptr %812, align 4, !tbaa !77
  %814 = fadd float %811, %813
  store float %814, ptr %810, align 4, !tbaa !77
  %815 = getelementptr inbounds [3 x float], ptr %801, i64 1
  %816 = load float, ptr %815, align 4, !tbaa !77
  %817 = load float, ptr %790, align 4, !tbaa !77
  %818 = fadd float %816, %817
  store float %818, ptr %815, align 4, !tbaa !77
  %819 = getelementptr inbounds [3 x float], ptr %801, i64 1, i64 1
  %820 = load float, ptr %819, align 4, !tbaa !77
  %821 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 6, i64 1, i64 1
  %822 = load float, ptr %821, align 4, !tbaa !77
  %823 = fadd float %820, %822
  store float %823, ptr %819, align 4, !tbaa !77
  %824 = getelementptr inbounds [3 x float], ptr %801, i64 1, i64 2
  %825 = load float, ptr %824, align 4, !tbaa !77
  %826 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 6, i64 1, i64 2
  %827 = load float, ptr %826, align 4, !tbaa !77
  %828 = fadd float %825, %827
  store float %828, ptr %824, align 4, !tbaa !77
  %829 = getelementptr inbounds [3 x float], ptr %801, i64 2
  %830 = load float, ptr %829, align 4, !tbaa !77
  %831 = load float, ptr %792, align 4, !tbaa !77
  %832 = fadd float %830, %831
  store float %832, ptr %829, align 4, !tbaa !77
  %833 = getelementptr inbounds [3 x float], ptr %801, i64 2, i64 1
  %834 = load float, ptr %833, align 4, !tbaa !77
  %835 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 6, i64 2, i64 1
  %836 = load float, ptr %835, align 4, !tbaa !77
  %837 = fadd float %834, %836
  store float %837, ptr %833, align 4, !tbaa !77
  %838 = getelementptr inbounds [3 x float], ptr %801, i64 2, i64 2
  %839 = load float, ptr %838, align 4, !tbaa !77
  %840 = getelementptr inbounds %struct.ClothSpring, ptr %686, i64 0, i32 6, i64 2, i64 2
  %841 = load float, ptr %840, align 4, !tbaa !77
  %842 = fadd float %839, %841
  store float %842, ptr %838, align 4, !tbaa !77
  br label %843

843:                                              ; preds = %783, %683
  %844 = load ptr, ptr %684, align 8, !tbaa !47
  %845 = icmp eq ptr %844, null
  br i1 %845, label %846, label %683, !llvm.loop !174

846:                                              ; preds = %843, %372, %384
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simulate_implicit_euler(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, float noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef readonly %12) unnamed_addr #0 !PGOFuncName !175 {
  %14 = getelementptr inbounds %struct.fmatrix3x3, ptr %3, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %17 = zext i32 %15 to i64
  %18 = mul nuw nsw i64 %17, 12
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @.str.5) #15
  tail call void @llvm.memset.p0.i64(ptr align 4 %8, i8 0, i64 %18, i1 false)
  %20 = getelementptr inbounds %struct.fmatrix3x3, ptr %12, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = getelementptr inbounds %struct.fmatrix3x3, ptr %12, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !54
  %24 = add i32 %23, %21
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %12, i64 %26, i1 false)
  %27 = fmul float %5, %5
  %28 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 0, i32 6
  %29 = load i32, ptr %28, align 4, !tbaa !51
  %30 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !54
  %32 = add i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %121, label %34

34:                                               ; preds = %13
  %35 = zext i32 %32 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ 0, %34 ], [ %119, %36 ]
  %38 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %37
  %39 = getelementptr inbounds %struct.fmatrix3x3, ptr %3, i64 %37
  %40 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %37
  %41 = load float, ptr %39, align 4, !tbaa !77
  %42 = load float, ptr %40, align 4, !tbaa !77
  %43 = fmul float %27, %42
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %5, float %43)
  %45 = load float, ptr %38, align 4, !tbaa !77
  %46 = fsub float %45, %44
  store float %46, ptr %38, align 4, !tbaa !77
  %47 = getelementptr inbounds float, ptr %39, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !77
  %49 = getelementptr inbounds float, ptr %40, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !77
  %51 = fmul float %27, %50
  %52 = tail call float @llvm.fmuladd.f32(float %48, float %5, float %51)
  %53 = getelementptr inbounds float, ptr %38, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !77
  %55 = fsub float %54, %52
  store float %55, ptr %53, align 4, !tbaa !77
  %56 = getelementptr inbounds float, ptr %39, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !77
  %58 = getelementptr inbounds float, ptr %40, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !77
  %60 = fmul float %27, %59
  %61 = tail call float @llvm.fmuladd.f32(float %57, float %5, float %60)
  %62 = getelementptr inbounds float, ptr %38, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !77
  %64 = fsub float %63, %61
  store float %64, ptr %62, align 4, !tbaa !77
  %65 = getelementptr inbounds [3 x float], ptr %39, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !77
  %67 = getelementptr inbounds [3 x float], ptr %40, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !77
  %69 = fmul float %27, %68
  %70 = tail call float @llvm.fmuladd.f32(float %66, float %5, float %69)
  %71 = getelementptr inbounds [3 x float], ptr %38, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !77
  %73 = fsub float %72, %70
  store float %73, ptr %71, align 4, !tbaa !77
  %74 = getelementptr inbounds [3 x float], ptr %39, i64 1, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !77
  %76 = getelementptr inbounds [3 x float], ptr %40, i64 1, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !77
  %78 = fmul float %27, %77
  %79 = tail call float @llvm.fmuladd.f32(float %75, float %5, float %78)
  %80 = getelementptr inbounds [3 x float], ptr %38, i64 1, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !77
  %82 = fsub float %81, %79
  store float %82, ptr %80, align 4, !tbaa !77
  %83 = getelementptr inbounds [3 x float], ptr %39, i64 1, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !77
  %85 = getelementptr inbounds [3 x float], ptr %40, i64 1, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !77
  %87 = fmul float %27, %86
  %88 = tail call float @llvm.fmuladd.f32(float %84, float %5, float %87)
  %89 = getelementptr inbounds [3 x float], ptr %38, i64 1, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !77
  %91 = fsub float %90, %88
  store float %91, ptr %89, align 4, !tbaa !77
  %92 = getelementptr inbounds [3 x float], ptr %39, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !77
  %94 = getelementptr inbounds [3 x float], ptr %40, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !77
  %96 = fmul float %27, %95
  %97 = tail call float @llvm.fmuladd.f32(float %93, float %5, float %96)
  %98 = getelementptr inbounds [3 x float], ptr %38, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !77
  %100 = fsub float %99, %97
  store float %100, ptr %98, align 4, !tbaa !77
  %101 = getelementptr inbounds [3 x float], ptr %39, i64 2, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !77
  %103 = getelementptr inbounds [3 x float], ptr %40, i64 2, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !77
  %105 = fmul float %27, %104
  %106 = tail call float @llvm.fmuladd.f32(float %102, float %5, float %105)
  %107 = getelementptr inbounds [3 x float], ptr %38, i64 2, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !77
  %109 = fsub float %108, %106
  store float %109, ptr %107, align 4, !tbaa !77
  %110 = getelementptr inbounds [3 x float], ptr %39, i64 2, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !77
  %112 = getelementptr inbounds [3 x float], ptr %40, i64 2, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !77
  %114 = fmul float %27, %113
  %115 = tail call float @llvm.fmuladd.f32(float %111, float %5, float %114)
  %116 = getelementptr inbounds [3 x float], ptr %38, i64 2, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !77
  %118 = fsub float %117, %115
  store float %118, ptr %116, align 4, !tbaa !77
  %119 = add nuw nsw i64 %37, 1
  %120 = icmp eq i64 %119, %35
  br i1 %120, label %121, label %36, !llvm.loop !176

121:                                              ; preds = %36, %13
  %122 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %123 = zext i32 %29 to i64
  %124 = mul nuw nsw i64 %123, 12
  %125 = tail call ptr %122(i64 noundef %124, ptr noundef nonnull @.str.5) #15
  tail call void @llvm.memset.p0.i64(ptr align 4 %19, i8 0, i64 %124, i1 false)
  %126 = load i32, ptr %28, align 4, !tbaa !51
  %127 = load i32, ptr %30, align 4, !tbaa !54
  %128 = add i32 %127, %126
  %129 = icmp ult i32 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = zext i32 %126 to i64
  %132 = zext i32 %128 to i64
  br label %137

133:                                              ; preds = %137, %121
  %134 = icmp eq i32 %128, 0
  br i1 %134, label %163, label %135

135:                                              ; preds = %133
  %136 = zext i32 %128 to i64
  br label %167

137:                                              ; preds = %130, %137
  %138 = phi i64 [ %131, %130 ], [ %161, %137 ]
  %139 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %138
  %140 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %138, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !73
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [3 x float], ptr %19, i64 %142
  %144 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %138, i32 2
  %145 = load i32, ptr %144, align 4, !tbaa !74
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [3 x float], ptr %1, i64 %146
  %148 = tail call fastcc float @dot_v3v3(ptr noundef %139, ptr noundef %147) #16
  %149 = load float, ptr %143, align 4, !tbaa !77
  %150 = fadd float %148, %149
  store float %150, ptr %143, align 4, !tbaa !77
  %151 = getelementptr inbounds [3 x float], ptr %139, i64 1
  %152 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %151, ptr noundef %147) #16
  %153 = getelementptr inbounds float, ptr %143, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !77
  %155 = fadd float %152, %154
  store float %155, ptr %153, align 4, !tbaa !77
  %156 = getelementptr inbounds [3 x float], ptr %139, i64 2
  %157 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %156, ptr noundef %147) #16
  %158 = getelementptr inbounds float, ptr %143, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !77
  %160 = fadd float %157, %159
  store float %160, ptr %158, align 4, !tbaa !77
  %161 = add nuw nsw i64 %138, 1
  %162 = icmp eq i64 %161, %132
  br i1 %162, label %133, label %137, !llvm.loop !177

163:                                              ; preds = %167, %133
  %164 = icmp eq i32 %126, 0
  br i1 %164, label %212, label %165

165:                                              ; preds = %163
  %166 = zext i32 %126 to i64
  br label %193

167:                                              ; preds = %135, %167
  %168 = phi i64 [ 0, %135 ], [ %191, %167 ]
  %169 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %168
  %170 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %168, i32 2
  %171 = load i32, ptr %170, align 4, !tbaa !74
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [3 x float], ptr %125, i64 %172
  %174 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %168, i32 1
  %175 = load i32, ptr %174, align 4, !tbaa !73
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [3 x float], ptr %1, i64 %176
  %178 = tail call fastcc float @dot_v3v3(ptr noundef %169, ptr noundef %177) #16
  %179 = load float, ptr %173, align 4, !tbaa !77
  %180 = fadd float %178, %179
  store float %180, ptr %173, align 4, !tbaa !77
  %181 = getelementptr inbounds [3 x float], ptr %169, i64 1
  %182 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %181, ptr noundef %177) #16
  %183 = getelementptr inbounds float, ptr %173, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !77
  %185 = fadd float %182, %184
  store float %185, ptr %183, align 4, !tbaa !77
  %186 = getelementptr inbounds [3 x float], ptr %169, i64 2
  %187 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %186, ptr noundef %177) #16
  %188 = getelementptr inbounds float, ptr %173, i64 2
  %189 = load float, ptr %188, align 4, !tbaa !77
  %190 = fadd float %187, %189
  store float %190, ptr %188, align 4, !tbaa !77
  %191 = add nuw nsw i64 %168, 1
  %192 = icmp eq i64 %191, %136
  br i1 %192, label %163, label %167, !llvm.loop !178

193:                                              ; preds = %165, %193
  %194 = phi i64 [ 0, %165 ], [ %210, %193 ]
  %195 = getelementptr inbounds [3 x float], ptr %19, i64 %194
  %196 = load float, ptr %195, align 4, !tbaa !77
  %197 = getelementptr inbounds [3 x float], ptr %125, i64 %194
  %198 = load float, ptr %197, align 4, !tbaa !77
  %199 = fadd float %196, %198
  store float %199, ptr %195, align 4, !tbaa !77
  %200 = getelementptr inbounds float, ptr %195, i64 1
  %201 = load float, ptr %200, align 4, !tbaa !77
  %202 = getelementptr inbounds float, ptr %197, i64 1
  %203 = load float, ptr %202, align 4, !tbaa !77
  %204 = fadd float %201, %203
  store float %204, ptr %200, align 4, !tbaa !77
  %205 = getelementptr inbounds float, ptr %195, i64 2
  %206 = load float, ptr %205, align 4, !tbaa !77
  %207 = getelementptr inbounds float, ptr %197, i64 2
  %208 = load float, ptr %207, align 4, !tbaa !77
  %209 = fadd float %206, %208
  store float %209, ptr %205, align 4, !tbaa !77
  %210 = add nuw nsw i64 %194, 1
  %211 = icmp eq i64 %210, %166
  br i1 %211, label %214, label %193, !llvm.loop !179

212:                                              ; preds = %163
  %213 = icmp eq ptr %125, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %193, %212
  %215 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %215(ptr noundef nonnull %125) #15
  br label %216

216:                                              ; preds = %212, %214
  %217 = icmp eq i32 %15, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %216
  tail call fastcc void @cg_filtered(ptr noundef %8, ptr noundef %6, ptr noundef %7, ptr noundef %10, ptr noundef %9) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %8, i64 %18, i1 false)
  br label %267

219:                                              ; preds = %216, %219
  %220 = phi i64 [ %242, %219 ], [ 0, %216 ]
  %221 = getelementptr inbounds [3 x float], ptr %2, i64 %220
  %222 = load float, ptr %221, align 4, !tbaa !77
  %223 = getelementptr inbounds [3 x float], ptr %19, i64 %220
  %224 = load float, ptr %223, align 4, !tbaa !77
  %225 = fmul float %27, %224
  %226 = tail call float @llvm.fmuladd.f32(float %222, float %5, float %225)
  %227 = getelementptr inbounds [3 x float], ptr %7, i64 %220
  store float %226, ptr %227, align 4, !tbaa !77
  %228 = getelementptr inbounds float, ptr %221, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !77
  %230 = getelementptr inbounds float, ptr %223, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !77
  %232 = fmul float %27, %231
  %233 = tail call float @llvm.fmuladd.f32(float %229, float %5, float %232)
  %234 = getelementptr inbounds float, ptr %227, i64 1
  store float %233, ptr %234, align 4, !tbaa !77
  %235 = getelementptr inbounds float, ptr %221, i64 2
  %236 = load float, ptr %235, align 4, !tbaa !77
  %237 = getelementptr inbounds float, ptr %223, i64 2
  %238 = load float, ptr %237, align 4, !tbaa !77
  %239 = fmul float %27, %238
  %240 = tail call float @llvm.fmuladd.f32(float %236, float %5, float %239)
  %241 = getelementptr inbounds float, ptr %227, i64 2
  store float %240, ptr %241, align 4, !tbaa !77
  %242 = add nuw nsw i64 %220, 1
  %243 = icmp eq i64 %242, %17
  br i1 %243, label %244, label %219, !llvm.loop !180

244:                                              ; preds = %219
  tail call fastcc void @cg_filtered(ptr noundef %8, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %10, ptr noundef %9) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %8, i64 %18, i1 false)
  br i1 %217, label %269, label %245

245:                                              ; preds = %244, %245
  %246 = phi i64 [ %265, %245 ], [ 0, %244 ]
  %247 = getelementptr inbounds [3 x float], ptr %1, i64 %246
  %248 = load float, ptr %247, align 4, !tbaa !77
  %249 = getelementptr inbounds [3 x float], ptr %8, i64 %246
  %250 = load float, ptr %249, align 4, !tbaa !77
  %251 = fadd float %248, %250
  %252 = getelementptr inbounds [3 x float], ptr %0, i64 %246
  store float %251, ptr %252, align 4, !tbaa !77
  %253 = getelementptr inbounds float, ptr %247, i64 1
  %254 = load float, ptr %253, align 4, !tbaa !77
  %255 = getelementptr inbounds float, ptr %249, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !77
  %257 = fadd float %254, %256
  %258 = getelementptr inbounds float, ptr %252, i64 1
  store float %257, ptr %258, align 4, !tbaa !77
  %259 = getelementptr inbounds float, ptr %247, i64 2
  %260 = load float, ptr %259, align 4, !tbaa !77
  %261 = getelementptr inbounds float, ptr %249, i64 2
  %262 = load float, ptr %261, align 4, !tbaa !77
  %263 = fadd float %260, %262
  %264 = getelementptr inbounds float, ptr %252, i64 2
  store float %263, ptr %264, align 4, !tbaa !77
  %265 = add nuw nsw i64 %246, 1
  %266 = icmp eq i64 %265, %17
  br i1 %266, label %267, label %245, !llvm.loop !179

267:                                              ; preds = %245, %218
  %268 = icmp eq ptr %19, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %244, %267
  %270 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %270(ptr noundef nonnull %19) #15
  br label %271

271:                                              ; preds = %267, %269
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare i32 @cloth_bvh_objcollision(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !181 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !77
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !77
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @implicit_set_positions(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Cloth, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.Cloth, ptr %3, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Implicit_Data, ptr %8, i64 0, i32 1
  %12 = zext i32 %6 to i64
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi i64 [ 0, %10 ], [ %21, %13 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !64
  %16 = getelementptr inbounds [3 x float], ptr %15, i64 %14
  %17 = getelementptr inbounds %struct.ClothVertex, ptr %4, i64 %14, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef %16, ptr noundef nonnull %17) #16
  %18 = load ptr, ptr %11, align 8, !tbaa !66
  %19 = getelementptr inbounds [3 x float], ptr %18, i64 %14
  %20 = getelementptr inbounds %struct.ClothVertex, ptr %4, i64 %14, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef %19, ptr noundef nonnull %20) #16
  %21 = add nuw nsw i64 %14, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %23, label %13, !llvm.loop !182

23:                                               ; preds = %13, %1
  %24 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !34
  %25 = icmp sgt i16 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %28

28:                                               ; preds = %26, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hair_velocity_smoothing(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !183 {
  %6 = alloca [10 x [10 x [10 x %struct.HairGridVert]]], align 16
  %7 = alloca [10 x [10 x [10 x %struct.HairGridVert]]], align 16
  %8 = alloca ptr, align 8
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16000, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 16000, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %10 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = tail call ptr @get_collider_cache(ptr noundef %11, ptr noundef null, ptr noundef null) #15
  store ptr %12, ptr %8, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = getelementptr inbounds %struct.ClothSimSettings, ptr %14, i64 0, i32 23
  %16 = load float, ptr %15, align 8, !tbaa !146
  %17 = fmul float %16, 2.000000e+00
  %18 = getelementptr inbounds %struct.ClothSimSettings, ptr %14, i64 0, i32 24
  %19 = load float, ptr %18, align 4, !tbaa !147
  %20 = fmul float %19, 2.000000e+00
  %21 = icmp eq i32 %4, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = zext i32 %4 to i64
  br label %32

24:                                               ; preds = %32, %5
  %25 = phi float [ 0xC6293E5940000000, %5 ], [ %49, %32 ]
  %26 = phi float [ 0x46293E5940000000, %5 ], [ %42, %32 ]
  %27 = phi <2 x float> [ <float 0x46293E5940000000, float 0x46293E5940000000>, %5 ], [ %45, %32 ]
  %28 = phi <2 x float> [ <float 0xC6293E5940000000, float 0xC6293E5940000000>, %5 ], [ %47, %32 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16000) %6, i8 0, i64 16000, i1 false), !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16000) %7, i8 0, i64 16000, i1 false), !tbaa !77
  %29 = fcmp ogt float %17, 0.000000e+00
  %30 = icmp ne i32 %4, 0
  %31 = and i1 %29, %30
  br i1 %31, label %52, label %101

32:                                               ; preds = %22, %32
  %33 = phi i64 [ 0, %22 ], [ %50, %32 ]
  %34 = phi float [ 0x46293E5940000000, %22 ], [ %42, %32 ]
  %35 = phi float [ 0xC6293E5940000000, %22 ], [ %49, %32 ]
  %36 = phi <2 x float> [ <float 0x46293E5940000000, float 0x46293E5940000000>, %22 ], [ %45, %32 ]
  %37 = phi <2 x float> [ <float 0xC6293E5940000000, float 0xC6293E5940000000>, %22 ], [ %47, %32 ]
  %38 = getelementptr inbounds [3 x float], ptr %2, i64 %33
  %39 = getelementptr inbounds [3 x float], ptr %2, i64 %33, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !77
  %41 = fcmp ogt float %34, %40
  %42 = select i1 %41, float %40, float %34
  %43 = load <2 x float>, ptr %38, align 4, !tbaa !77
  %44 = fcmp ogt <2 x float> %36, %43
  %45 = select <2 x i1> %44, <2 x float> %43, <2 x float> %36
  %46 = fcmp olt <2 x float> %37, %43
  %47 = select <2 x i1> %46, <2 x float> %43, <2 x float> %37
  %48 = fcmp olt float %35, %40
  %49 = select i1 %48, float %40, float %35
  %50 = add nuw nsw i64 %33, 1
  %51 = icmp eq i64 %50, %23
  br i1 %51, label %24, label %32, !llvm.loop !184

52:                                               ; preds = %24
  %53 = fsub <2 x float> %28, %27
  %54 = fsub float %25, %26
  %55 = zext i32 %4 to i64
  br label %56

56:                                               ; preds = %52, %98
  %57 = phi i64 [ 0, %52 ], [ %99, %98 ]
  %58 = getelementptr inbounds [3 x float], ptr %2, i64 %57
  %59 = getelementptr inbounds [3 x float], ptr %2, i64 %57, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !77
  %61 = fsub float %60, %26
  %62 = fdiv float %61, %54
  %63 = fmul float %62, 0x4023FAE140000000
  %64 = fptosi float %63 to i32
  %65 = icmp slt i32 %64, 0
  %66 = load <2 x float>, ptr %58, align 4, !tbaa !77
  %67 = fsub <2 x float> %66, %27
  %68 = fdiv <2 x float> %67, %53
  %69 = fmul <2 x float> %68, <float 0x4023FAE140000000, float 0x4023FAE140000000>
  %70 = fptosi <2 x float> %69 to <2 x i32>
  %71 = extractelement <2 x i32> %70, i64 0
  %72 = icmp slt i32 %71, 0
  %73 = extractelement <2 x i32> %70, i64 1
  %74 = icmp slt i32 %73, 0
  %75 = select i1 %72, i1 true, i1 %74
  %76 = select i1 %75, i1 true, i1 %65
  %77 = icmp sgt <2 x i32> %70, <i32 9, i32 9>
  %78 = extractelement <2 x i1> %77, i64 0
  %79 = or i1 %78, %76
  %80 = extractelement <2 x i1> %77, i64 1
  %81 = select i1 %79, i1 true, i1 %80
  %82 = icmp sgt i32 %64, 9
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %98, label %84

84:                                               ; preds = %56
  %85 = getelementptr inbounds [3 x float], ptr %3, i64 %57
  %86 = load float, ptr %85, align 4, !tbaa !77
  %87 = zext nneg i32 %71 to i64
  %88 = zext nneg i32 %73 to i64
  %89 = zext nneg i32 %64 to i64
  %90 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %6, i64 0, i64 %87, i64 %88, i64 %89
  %91 = getelementptr inbounds [3 x float], ptr %3, i64 %57, i64 1
  %92 = load <2 x float>, ptr %91, align 4, !tbaa !77
  %93 = load <4 x float>, ptr %90, align 16, !tbaa !77
  %94 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %86, i64 0
  %95 = shufflevector <2 x float> %92, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %96 = shufflevector <4 x float> %94, <4 x float> %95, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %97 = fadd <4 x float> %93, %96
  store <4 x float> %97, ptr %90, align 16, !tbaa !77
  br label %98

98:                                               ; preds = %56, %84
  %99 = add nuw nsw i64 %57, 1
  %100 = icmp eq i64 %99, %55
  br i1 %100, label %101, label %56, !llvm.loop !185

101:                                              ; preds = %98, %24
  %102 = icmp ne ptr %12, null
  %103 = fcmp ogt float %20, 0.000000e+00
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %105, label %174

105:                                              ; preds = %101
  %106 = load ptr, ptr %12, align 8, !tbaa !47
  %107 = icmp eq ptr %106, null
  br i1 %107, label %174, label %108

108:                                              ; preds = %105
  %109 = extractelement <2 x float> %27, i64 0
  %110 = fsub <2 x float> %28, %27
  %111 = extractelement <2 x float> %110, i64 0
  %112 = extractelement <2 x float> %27, i64 1
  %113 = fsub <2 x float> %28, %27
  %114 = extractelement <2 x float> %113, i64 1
  %115 = fsub float %25, %26
  %116 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  br label %117

117:                                              ; preds = %108, %171
  %118 = phi ptr [ %106, %108 ], [ %172, %171 ]
  %119 = getelementptr inbounds %struct.ColliderCache, ptr %118, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !186
  %121 = getelementptr inbounds %struct.CollisionModifierData, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !188
  %123 = getelementptr inbounds %struct.CollisionModifierData, ptr %120, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #17
  %125 = getelementptr inbounds %struct.CollisionModifierData, ptr %120, i64 0, i32 8
  %126 = load i32, ptr %125, align 8, !tbaa !191
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %171, label %128

128:                                              ; preds = %117, %166
  %129 = phi ptr [ %169, %166 ], [ %124, %117 ]
  %130 = phi ptr [ %168, %166 ], [ %122, %117 ]
  %131 = phi i32 [ %167, %166 ], [ 0, %117 ]
  %132 = load float, ptr %129, align 4, !tbaa !77
  %133 = fsub float %132, %109
  %134 = fdiv float %133, %111
  %135 = fmul float %134, 0x4023FAE140000000
  %136 = fptosi float %135 to i32
  %137 = icmp ult i32 %136, 10
  br i1 %137, label %138, label %166

138:                                              ; preds = %128
  %139 = getelementptr inbounds [3 x float], ptr %129, i64 0, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !77
  %141 = fsub float %140, %112
  %142 = fdiv float %141, %114
  %143 = fmul float %142, 0x4023FAE140000000
  %144 = fptosi float %143 to i32
  %145 = icmp ult i32 %144, 10
  br i1 %145, label %146, label %166

146:                                              ; preds = %138
  %147 = getelementptr inbounds [3 x float], ptr %129, i64 0, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !77
  %149 = fsub float %148, %26
  %150 = fdiv float %149, %115
  %151 = fmul float %150, 0x4023FAE140000000
  %152 = fptosi float %151 to i32
  %153 = icmp ult i32 %152, 10
  br i1 %153, label %154, label %166

154:                                              ; preds = %146
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %129, ptr noundef %130) #16
  %155 = load float, ptr %9, align 4, !tbaa !77
  %156 = zext nneg i32 %136 to i64
  %157 = zext nneg i32 %144 to i64
  %158 = zext nneg i32 %152 to i64
  %159 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %7, i64 0, i64 %156, i64 %157, i64 %158
  %160 = load <2 x float>, ptr %116, align 4, !tbaa !77
  %161 = load <4 x float>, ptr %159, align 16, !tbaa !77
  %162 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %155, i64 0
  %163 = shufflevector <2 x float> %160, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %164 = shufflevector <4 x float> %162, <4 x float> %163, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %165 = fadd <4 x float> %161, %164
  store <4 x float> %165, ptr %159, align 16, !tbaa !77
  br label %166

166:                                              ; preds = %128, %146, %154, %138
  %167 = add nuw i32 %131, 1
  %168 = getelementptr inbounds %struct.MVert, ptr %130, i64 1
  %169 = getelementptr inbounds %struct.MVert, ptr %129, i64 1
  %170 = icmp eq i32 %167, %126
  br i1 %170, label %171, label %128, !llvm.loop !192

171:                                              ; preds = %166, %117
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #17
  %172 = load ptr, ptr %118, align 8, !tbaa !47
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %117, !llvm.loop !193

174:                                              ; preds = %171, %105, %101
  br label %175

175:                                              ; preds = %174, %217
  %176 = phi i64 [ %218, %217 ], [ 0, %174 ]
  br label %182

177:                                              ; preds = %217
  br i1 %21, label %298, label %178

178:                                              ; preds = %177
  %179 = fsub <2 x float> %28, %27
  %180 = fsub float %25, %26
  %181 = zext i32 %4 to i64
  br label %220

182:                                              ; preds = %175, %214
  %183 = phi i64 [ 0, %175 ], [ %215, %214 ]
  br label %184

184:                                              ; preds = %182, %211
  %185 = phi i64 [ 0, %182 ], [ %212, %211 ]
  %186 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %6, i64 0, i64 %176, i64 %183, i64 %185, i32 1
  %187 = load float, ptr %186, align 4, !tbaa !194
  %188 = fcmp ogt float %187, 0.000000e+00
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %6, i64 0, i64 %176, i64 %183, i64 %185
  %191 = load <2 x float>, ptr %190, align 16, !tbaa !77
  %192 = insertelement <2 x float> poison, float %187, i64 0
  %193 = shufflevector <2 x float> %192, <2 x float> poison, <2 x i32> zeroinitializer
  %194 = fdiv <2 x float> %191, %193
  store <2 x float> %194, ptr %190, align 16, !tbaa !77
  %195 = getelementptr inbounds [3 x float], ptr %190, i64 0, i64 2
  %196 = load float, ptr %195, align 8, !tbaa !77
  %197 = fdiv float %196, %187
  store float %197, ptr %195, align 8, !tbaa !77
  br label %198

198:                                              ; preds = %189, %184
  %199 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %7, i64 0, i64 %176, i64 %183, i64 %185, i32 1
  %200 = load float, ptr %199, align 4, !tbaa !194
  %201 = fcmp ogt float %200, 0.000000e+00
  br i1 %201, label %202, label %211

202:                                              ; preds = %198
  %203 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %7, i64 0, i64 %176, i64 %183, i64 %185
  %204 = load <2 x float>, ptr %203, align 16, !tbaa !77
  %205 = insertelement <2 x float> poison, float %200, i64 0
  %206 = shufflevector <2 x float> %205, <2 x float> poison, <2 x i32> zeroinitializer
  %207 = fdiv <2 x float> %204, %206
  store <2 x float> %207, ptr %203, align 16, !tbaa !77
  %208 = getelementptr inbounds [3 x float], ptr %203, i64 0, i64 2
  %209 = load float, ptr %208, align 8, !tbaa !77
  %210 = fdiv float %209, %200
  store float %210, ptr %208, align 8, !tbaa !77
  br label %211

211:                                              ; preds = %198, %202
  %212 = add nuw nsw i64 %185, 1
  %213 = icmp eq i64 %212, 10
  br i1 %213, label %214, label %184, !llvm.loop !196

214:                                              ; preds = %211
  %215 = add nuw nsw i64 %183, 1
  %216 = icmp eq i64 %215, 10
  br i1 %216, label %217, label %182, !llvm.loop !197

217:                                              ; preds = %214
  %218 = add nuw nsw i64 %176, 1
  %219 = icmp eq i64 %218, 10
  br i1 %219, label %177, label %175, !llvm.loop !198

220:                                              ; preds = %178, %295
  %221 = phi i64 [ 0, %178 ], [ %296, %295 ]
  %222 = getelementptr inbounds [3 x float], ptr %2, i64 %221
  %223 = getelementptr inbounds [3 x float], ptr %2, i64 %221, i64 2
  %224 = load float, ptr %223, align 4, !tbaa !77
  %225 = fsub float %224, %26
  %226 = fdiv float %225, %180
  %227 = fmul float %226, 0x4023FAE140000000
  %228 = fptosi float %227 to i32
  %229 = icmp slt i32 %228, 0
  %230 = load <2 x float>, ptr %222, align 4, !tbaa !77
  %231 = fsub <2 x float> %230, %27
  %232 = fdiv <2 x float> %231, %179
  %233 = fmul <2 x float> %232, <float 0x4023FAE140000000, float 0x4023FAE140000000>
  %234 = fptosi <2 x float> %233 to <2 x i32>
  %235 = extractelement <2 x i32> %234, i64 0
  %236 = icmp slt i32 %235, 0
  %237 = extractelement <2 x i32> %234, i64 1
  %238 = icmp slt i32 %237, 0
  %239 = select i1 %236, i1 true, i1 %238
  %240 = select i1 %239, i1 true, i1 %229
  %241 = icmp sgt <2 x i32> %234, <i32 9, i32 9>
  %242 = extractelement <2 x i1> %241, i64 0
  %243 = or i1 %242, %240
  %244 = extractelement <2 x i1> %241, i64 1
  %245 = select i1 %243, i1 true, i1 %244
  %246 = icmp sgt i32 %228, 9
  %247 = select i1 %245, i1 true, i1 %246
  br i1 %247, label %295, label %248

248:                                              ; preds = %220
  %249 = zext nneg i32 %235 to i64
  %250 = zext nneg i32 %237 to i64
  %251 = zext nneg i32 %228 to i64
  %252 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %6, i64 0, i64 %249, i64 %250, i64 %251
  %253 = load float, ptr %252, align 16, !tbaa !77
  %254 = getelementptr inbounds [3 x float], ptr %3, i64 %221
  %255 = load float, ptr %254, align 4, !tbaa !77
  %256 = fsub float %253, %255
  %257 = getelementptr inbounds [3 x float], ptr %1, i64 %221
  %258 = load float, ptr %257, align 4, !tbaa !77
  %259 = tail call float @llvm.fmuladd.f32(float %17, float %256, float %258)
  store float %259, ptr %257, align 4, !tbaa !77
  %260 = getelementptr inbounds [3 x float], ptr %252, i64 0, i64 1
  %261 = load float, ptr %260, align 4, !tbaa !77
  %262 = getelementptr inbounds [3 x float], ptr %3, i64 %221, i64 1
  %263 = load float, ptr %262, align 4, !tbaa !77
  %264 = fsub float %261, %263
  %265 = getelementptr inbounds [3 x float], ptr %1, i64 %221, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !77
  %267 = tail call float @llvm.fmuladd.f32(float %17, float %264, float %266)
  store float %267, ptr %265, align 4, !tbaa !77
  %268 = getelementptr inbounds [3 x float], ptr %252, i64 0, i64 2
  %269 = load float, ptr %268, align 8, !tbaa !77
  %270 = getelementptr inbounds [3 x float], ptr %3, i64 %221, i64 2
  %271 = load float, ptr %270, align 4, !tbaa !77
  %272 = fsub float %269, %271
  %273 = getelementptr inbounds [3 x float], ptr %1, i64 %221, i64 2
  %274 = load float, ptr %273, align 4, !tbaa !77
  %275 = tail call float @llvm.fmuladd.f32(float %17, float %272, float %274)
  store float %275, ptr %273, align 4, !tbaa !77
  %276 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %7, i64 0, i64 %249, i64 %250, i64 %251, i32 1
  %277 = load float, ptr %276, align 4, !tbaa !194
  %278 = fcmp ogt float %277, 0.000000e+00
  br i1 %278, label %279, label %295

279:                                              ; preds = %248
  %280 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %7, i64 0, i64 %249, i64 %250, i64 %251
  %281 = load float, ptr %280, align 16, !tbaa !77
  %282 = load float, ptr %254, align 4, !tbaa !77
  %283 = fsub float %281, %282
  %284 = tail call float @llvm.fmuladd.f32(float %20, float %283, float %259)
  store float %284, ptr %257, align 4, !tbaa !77
  %285 = getelementptr inbounds [3 x float], ptr %280, i64 0, i64 1
  %286 = load float, ptr %285, align 4, !tbaa !77
  %287 = load float, ptr %262, align 4, !tbaa !77
  %288 = fsub float %286, %287
  %289 = tail call float @llvm.fmuladd.f32(float %20, float %288, float %267)
  store float %289, ptr %265, align 4, !tbaa !77
  %290 = getelementptr inbounds [3 x float], ptr %280, i64 0, i64 2
  %291 = load float, ptr %290, align 8, !tbaa !77
  %292 = load float, ptr %270, align 4, !tbaa !77
  %293 = fsub float %291, %292
  %294 = tail call float @llvm.fmuladd.f32(float %20, float %293, float %275)
  store float %294, ptr %273, align 4, !tbaa !77
  br label %295

295:                                              ; preds = %248, %279, %220
  %296 = add nuw nsw i64 %221, 1
  %297 = icmp eq i64 %296, %181
  br i1 %297, label %298, label %220, !llvm.loop !199

298:                                              ; preds = %295, %177
  call void @free_collider_cache(ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 16000, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 16000, ptr nonnull %6) #17
  ret void
}

; Function Attrs: optsize
declare void @pd_point_from_loc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CalcFloat4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #3 !PGOFuncName !200 {
  %6 = load float, ptr %0, align 4, !tbaa !77
  %7 = load float, ptr %2, align 4, !tbaa !77
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %1, align 4, !tbaa !77
  %12 = load float, ptr %3, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = getelementptr inbounds float, ptr %3, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !77
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %1, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !77
  %20 = getelementptr inbounds float, ptr %3, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !77
  %22 = load <2 x float>, ptr %9, align 4, !tbaa !77
  %23 = load <2 x float>, ptr %10, align 4, !tbaa !77
  %24 = fsub <2 x float> %22, %23
  %25 = insertelement <2 x float> poison, float %19, i64 0
  %26 = insertelement <2 x float> %25, float %11, i64 1
  %27 = insertelement <2 x float> poison, float %21, i64 0
  %28 = insertelement <2 x float> %27, float %12, i64 1
  %29 = fsub <2 x float> %26, %28
  %30 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %31 = insertelement <2 x float> %30, float %8, i64 1
  %32 = fneg <2 x float> %31
  %33 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %34 = insertelement <2 x float> %33, float %17, i64 0
  %35 = fmul <2 x float> %34, %32
  %36 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %29, <2 x float> %35)
  store <2 x float> %36, ptr %4, align 4, !tbaa !77
  %37 = extractelement <2 x float> %24, i64 0
  %38 = fneg float %37
  %39 = extractelement <2 x float> %29, i64 1
  %40 = fmul float %39, %38
  %41 = tail call float @llvm.fmuladd.f32(float %8, float %17, float %40)
  %42 = getelementptr inbounds float, ptr %4, i64 2
  store float %41, ptr %42, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @CalcFloat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 !PGOFuncName !201 {
  %5 = load float, ptr %0, align 4, !tbaa !77
  %6 = load float, ptr %1, align 4, !tbaa !77
  %7 = fsub float %5, %6
  %8 = load float, ptr %2, align 4, !tbaa !77
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = getelementptr inbounds float, ptr %2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %2, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = load <2 x float>, ptr %10, align 4, !tbaa !77
  %16 = extractelement <2 x float> %15, i64 0
  %17 = fsub float %16, %12
  %18 = load <2 x float>, ptr %9, align 4, !tbaa !77
  %19 = fsub <2 x float> %18, %15
  %20 = insertelement <2 x float> %15, float %6, i64 0
  %21 = insertelement <2 x float> poison, float %8, i64 0
  %22 = insertelement <2 x float> %21, float %14, i64 1
  %23 = fsub <2 x float> %20, %22
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %25 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %26 = insertelement <2 x float> %25, float %7, i64 1
  %27 = fneg <2 x float> %26
  %28 = insertelement <2 x float> %23, float %17, i64 0
  %29 = fmul <2 x float> %28, %27
  %30 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %24, <2 x float> %29)
  store <2 x float> %30, ptr %3, align 4, !tbaa !77
  %31 = extractelement <2 x float> %19, i64 0
  %32 = fneg float %31
  %33 = extractelement <2 x float> %23, i64 0
  %34 = fmul float %33, %32
  %35 = tail call float @llvm.fmuladd.f32(float %7, float %17, float %34)
  %36 = getelementptr inbounds float, ptr %3, i64 2
  store float %35, ptr %36, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !202 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @calculateVertexWindForce(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !203 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %1) #16
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @get_collider_cache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @free_collider_cache(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !204 {
  %3 = load float, ptr %0, align 4, !tbaa !77
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !205 {
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !77
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !77
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !77
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !77
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !206 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !77
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cg_filtered(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !207 {
  %6 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !51
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %9 = zext i32 %7 to i64
  %10 = mul nuw nsw i64 %9, 12
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.5) #15
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %13 = tail call ptr %12(i64 noundef %10, ptr noundef nonnull @.str.5) #15
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %15 = tail call ptr %14(i64 noundef %10, ptr noundef nonnull @.str.5) #15
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %17 = tail call ptr %16(i64 noundef %10, ptr noundef nonnull @.str.5) #15
  %18 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !51
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = zext i32 %19 to i64
  br label %25

23:                                               ; preds = %25, %5
  %24 = icmp eq i32 %7, 0
  br i1 %24, label %84, label %65

25:                                               ; preds = %21, %25
  %26 = phi i64 [ 0, %21 ], [ %63, %25 ]
  %27 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %26
  %28 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %26, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !74
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [3 x float], ptr %0, i64 %30
  %32 = load float, ptr %27, align 4, !tbaa !77
  %33 = load float, ptr %31, align 4, !tbaa !77
  %34 = getelementptr inbounds [3 x float], ptr %27, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !77
  %36 = getelementptr inbounds float, ptr %31, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !77
  %38 = fmul float %35, %37
  %39 = tail call float @llvm.fmuladd.f32(float %32, float %33, float %38)
  %40 = getelementptr inbounds [3 x float], ptr %27, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !77
  %42 = getelementptr inbounds float, ptr %31, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !77
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %43, float %39)
  store float %44, ptr %31, align 4, !tbaa !77
  %45 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !77
  %47 = getelementptr inbounds [3 x float], ptr %27, i64 1, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !77
  %49 = fmul float %37, %48
  %50 = tail call float @llvm.fmuladd.f32(float %46, float %44, float %49)
  %51 = getelementptr inbounds [3 x float], ptr %27, i64 2, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !77
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %43, float %50)
  store float %53, ptr %36, align 4, !tbaa !77
  %54 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !77
  %56 = getelementptr inbounds [3 x float], ptr %27, i64 1, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !77
  %58 = fmul float %53, %57
  %59 = tail call float @llvm.fmuladd.f32(float %55, float %44, float %58)
  %60 = getelementptr inbounds [3 x float], ptr %27, i64 2, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !77
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %43, float %59)
  store float %62, ptr %42, align 4, !tbaa !77
  %63 = add nuw nsw i64 %26, 1
  %64 = icmp eq i64 %63, %22
  br i1 %64, label %23, label %25, !llvm.loop !208

65:                                               ; preds = %23, %65
  %66 = phi i64 [ %82, %65 ], [ 0, %23 ]
  %67 = getelementptr inbounds [3 x float], ptr %0, i64 %66
  %68 = load float, ptr %67, align 4, !tbaa !77
  %69 = getelementptr inbounds [3 x float], ptr %3, i64 %66
  %70 = load float, ptr %69, align 4, !tbaa !77
  %71 = fadd float %68, %70
  store float %71, ptr %67, align 4, !tbaa !77
  %72 = getelementptr inbounds float, ptr %67, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !77
  %74 = getelementptr inbounds float, ptr %69, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !77
  %76 = fadd float %73, %75
  store float %76, ptr %72, align 4, !tbaa !77
  %77 = getelementptr inbounds float, ptr %67, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !77
  %79 = getelementptr inbounds float, ptr %69, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !77
  %81 = fadd float %78, %80
  store float %81, ptr %77, align 4, !tbaa !77
  %82 = add nuw nsw i64 %66, 1
  %83 = icmp eq i64 %82, %9
  br i1 %83, label %84, label %65, !llvm.loop !179

84:                                               ; preds = %65, %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %17, ptr align 4 %2, i64 %10, i1 false)
  %85 = load i32, ptr %6, align 4, !tbaa !51
  %86 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %87 = zext i32 %85 to i64
  %88 = mul nuw nsw i64 %87, 12
  %89 = tail call ptr %86(i64 noundef %88, ptr noundef nonnull @.str.5) #15
  tail call void @llvm.memset.p0.i64(ptr align 4 %15, i8 0, i64 %88, i1 false)
  %90 = load i32, ptr %6, align 4, !tbaa !51
  %91 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 0, i32 7
  %92 = load i32, ptr %91, align 4, !tbaa !54
  %93 = add i32 %92, %90
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = zext i32 %90 to i64
  %97 = zext i32 %93 to i64
  br label %102

98:                                               ; preds = %102, %84
  %99 = icmp eq i32 %93, 0
  br i1 %99, label %128, label %100

100:                                              ; preds = %98
  %101 = zext i32 %93 to i64
  br label %132

102:                                              ; preds = %95, %102
  %103 = phi i64 [ %96, %95 ], [ %126, %102 ]
  %104 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %103
  %105 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %103, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !73
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [3 x float], ptr %15, i64 %107
  %109 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %103, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !74
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [3 x float], ptr %0, i64 %111
  %113 = tail call fastcc float @dot_v3v3(ptr noundef %104, ptr noundef %112) #16
  %114 = load float, ptr %108, align 4, !tbaa !77
  %115 = fadd float %113, %114
  store float %115, ptr %108, align 4, !tbaa !77
  %116 = getelementptr inbounds [3 x float], ptr %104, i64 1
  %117 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %116, ptr noundef %112) #16
  %118 = getelementptr inbounds float, ptr %108, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !77
  %120 = fadd float %117, %119
  store float %120, ptr %118, align 4, !tbaa !77
  %121 = getelementptr inbounds [3 x float], ptr %104, i64 2
  %122 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %121, ptr noundef %112) #16
  %123 = getelementptr inbounds float, ptr %108, i64 2
  %124 = load float, ptr %123, align 4, !tbaa !77
  %125 = fadd float %122, %124
  store float %125, ptr %123, align 4, !tbaa !77
  %126 = add nuw nsw i64 %103, 1
  %127 = icmp eq i64 %126, %97
  br i1 %127, label %98, label %102, !llvm.loop !177

128:                                              ; preds = %132, %98
  %129 = icmp eq i32 %90, 0
  br i1 %129, label %177, label %130

130:                                              ; preds = %128
  %131 = zext i32 %90 to i64
  br label %158

132:                                              ; preds = %100, %132
  %133 = phi i64 [ 0, %100 ], [ %156, %132 ]
  %134 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %133
  %135 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %133, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !74
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [3 x float], ptr %89, i64 %137
  %139 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %133, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !73
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [3 x float], ptr %0, i64 %141
  %143 = tail call fastcc float @dot_v3v3(ptr noundef %134, ptr noundef %142) #16
  %144 = load float, ptr %138, align 4, !tbaa !77
  %145 = fadd float %143, %144
  store float %145, ptr %138, align 4, !tbaa !77
  %146 = getelementptr inbounds [3 x float], ptr %134, i64 1
  %147 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %146, ptr noundef %142) #16
  %148 = getelementptr inbounds float, ptr %138, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !77
  %150 = fadd float %147, %149
  store float %150, ptr %148, align 4, !tbaa !77
  %151 = getelementptr inbounds [3 x float], ptr %134, i64 2
  %152 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %151, ptr noundef %142) #16
  %153 = getelementptr inbounds float, ptr %138, i64 2
  %154 = load float, ptr %153, align 4, !tbaa !77
  %155 = fadd float %152, %154
  store float %155, ptr %153, align 4, !tbaa !77
  %156 = add nuw nsw i64 %133, 1
  %157 = icmp eq i64 %156, %101
  br i1 %157, label %128, label %132, !llvm.loop !178

158:                                              ; preds = %130, %158
  %159 = phi i64 [ 0, %130 ], [ %175, %158 ]
  %160 = getelementptr inbounds [3 x float], ptr %15, i64 %159
  %161 = load float, ptr %160, align 4, !tbaa !77
  %162 = getelementptr inbounds [3 x float], ptr %89, i64 %159
  %163 = load float, ptr %162, align 4, !tbaa !77
  %164 = fadd float %161, %163
  store float %164, ptr %160, align 4, !tbaa !77
  %165 = getelementptr inbounds float, ptr %160, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !77
  %167 = getelementptr inbounds float, ptr %162, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !77
  %169 = fadd float %166, %168
  store float %169, ptr %165, align 4, !tbaa !77
  %170 = getelementptr inbounds float, ptr %160, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !77
  %172 = getelementptr inbounds float, ptr %162, i64 2
  %173 = load float, ptr %172, align 4, !tbaa !77
  %174 = fadd float %171, %173
  store float %174, ptr %170, align 4, !tbaa !77
  %175 = add nuw nsw i64 %159, 1
  %176 = icmp eq i64 %175, %131
  br i1 %176, label %179, label %158, !llvm.loop !179

177:                                              ; preds = %128
  %178 = icmp eq ptr %89, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %158, %177
  %180 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %180(ptr noundef nonnull %89) #15
  br label %181

181:                                              ; preds = %177, %179
  br i1 %24, label %182, label %187

182:                                              ; preds = %187, %181
  %183 = load i32, ptr %18, align 4, !tbaa !51
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %233, label %185

185:                                              ; preds = %182
  %186 = zext i32 %183 to i64
  br label %193

187:                                              ; preds = %181, %187
  %188 = phi i64 [ %191, %187 ], [ 0, %181 ]
  %189 = getelementptr inbounds [3 x float], ptr %17, i64 %188
  %190 = getelementptr inbounds [3 x float], ptr %15, i64 %188
  tail call fastcc void @sub_v3_v3v3(ptr noundef %189, ptr noundef %189, ptr noundef %190) #16
  %191 = add nuw nsw i64 %188, 1
  %192 = icmp eq i64 %191, %9
  br i1 %192, label %182, label %187, !llvm.loop !209

193:                                              ; preds = %185, %193
  %194 = phi i64 [ 0, %185 ], [ %231, %193 ]
  %195 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %194
  %196 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %194, i32 2
  %197 = load i32, ptr %196, align 4, !tbaa !74
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [3 x float], ptr %17, i64 %198
  %200 = load float, ptr %195, align 4, !tbaa !77
  %201 = load float, ptr %199, align 4, !tbaa !77
  %202 = getelementptr inbounds [3 x float], ptr %195, i64 1
  %203 = load float, ptr %202, align 4, !tbaa !77
  %204 = getelementptr inbounds float, ptr %199, i64 1
  %205 = load float, ptr %204, align 4, !tbaa !77
  %206 = fmul float %203, %205
  %207 = tail call float @llvm.fmuladd.f32(float %200, float %201, float %206)
  %208 = getelementptr inbounds [3 x float], ptr %195, i64 2
  %209 = load float, ptr %208, align 4, !tbaa !77
  %210 = getelementptr inbounds float, ptr %199, i64 2
  %211 = load float, ptr %210, align 4, !tbaa !77
  %212 = tail call float @llvm.fmuladd.f32(float %209, float %211, float %207)
  store float %212, ptr %199, align 4, !tbaa !77
  %213 = getelementptr inbounds [3 x float], ptr %195, i64 0, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !77
  %215 = getelementptr inbounds [3 x float], ptr %195, i64 1, i64 1
  %216 = load float, ptr %215, align 4, !tbaa !77
  %217 = fmul float %205, %216
  %218 = tail call float @llvm.fmuladd.f32(float %214, float %212, float %217)
  %219 = getelementptr inbounds [3 x float], ptr %195, i64 2, i64 1
  %220 = load float, ptr %219, align 4, !tbaa !77
  %221 = tail call float @llvm.fmuladd.f32(float %220, float %211, float %218)
  store float %221, ptr %204, align 4, !tbaa !77
  %222 = getelementptr inbounds [3 x float], ptr %195, i64 0, i64 2
  %223 = load float, ptr %222, align 4, !tbaa !77
  %224 = getelementptr inbounds [3 x float], ptr %195, i64 1, i64 2
  %225 = load float, ptr %224, align 4, !tbaa !77
  %226 = fmul float %221, %225
  %227 = tail call float @llvm.fmuladd.f32(float %223, float %212, float %226)
  %228 = getelementptr inbounds [3 x float], ptr %195, i64 2, i64 2
  %229 = load float, ptr %228, align 4, !tbaa !77
  %230 = tail call float @llvm.fmuladd.f32(float %229, float %211, float %227)
  store float %230, ptr %210, align 4, !tbaa !77
  %231 = add nuw nsw i64 %194, 1
  %232 = icmp eq i64 %231, %186
  br i1 %232, label %233, label %193, !llvm.loop !208

233:                                              ; preds = %193, %182
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %17, i64 %10, i1 false)
  br i1 %24, label %242, label %234

234:                                              ; preds = %233, %234
  %235 = phi float [ %239, %234 ], [ 0.000000e+00, %233 ]
  %236 = phi i64 [ %240, %234 ], [ 0, %233 ]
  %237 = getelementptr inbounds [3 x float], ptr %17, i64 %236
  %238 = tail call fastcc float @dot_v3v3(ptr noundef %237, ptr noundef %237) #16
  %239 = fadd float %235, %238
  %240 = add nuw nsw i64 %236, 1
  %241 = icmp eq i64 %240, %9
  br i1 %241, label %242, label %234, !llvm.loop !210

242:                                              ; preds = %234, %233
  %243 = phi float [ 0.000000e+00, %233 ], [ %239, %234 ]
  %244 = fmul float %243, 0x3F847AE140000000
  %245 = fcmp ogt float %243, %244
  br i1 %245, label %246, label %522

246:                                              ; preds = %242, %517
  %247 = phi i32 [ %518, %517 ], [ 0, %242 ]
  %248 = phi float [ %455, %517 ], [ %243, %242 ]
  %249 = load i32, ptr %6, align 4, !tbaa !51
  %250 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %251 = zext i32 %249 to i64
  %252 = mul nuw nsw i64 %251, 12
  %253 = tail call ptr %250(i64 noundef %252, ptr noundef nonnull @.str.5) #15
  tail call void @llvm.memset.p0.i64(ptr align 4 %11, i8 0, i64 %252, i1 false)
  %254 = load i32, ptr %6, align 4, !tbaa !51
  %255 = load i32, ptr %91, align 4, !tbaa !54
  %256 = add i32 %255, %254
  %257 = icmp ult i32 %254, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %246
  %259 = zext i32 %254 to i64
  %260 = zext i32 %256 to i64
  br label %265

261:                                              ; preds = %265, %246
  %262 = icmp eq i32 %256, 0
  br i1 %262, label %291, label %263

263:                                              ; preds = %261
  %264 = zext i32 %256 to i64
  br label %295

265:                                              ; preds = %258, %265
  %266 = phi i64 [ %259, %258 ], [ %289, %265 ]
  %267 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %266
  %268 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %266, i32 1
  %269 = load i32, ptr %268, align 4, !tbaa !73
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds [3 x float], ptr %11, i64 %270
  %272 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %266, i32 2
  %273 = load i32, ptr %272, align 4, !tbaa !74
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds [3 x float], ptr %13, i64 %274
  %276 = tail call fastcc float @dot_v3v3(ptr noundef %267, ptr noundef %275) #16
  %277 = load float, ptr %271, align 4, !tbaa !77
  %278 = fadd float %276, %277
  store float %278, ptr %271, align 4, !tbaa !77
  %279 = getelementptr inbounds [3 x float], ptr %267, i64 1
  %280 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %279, ptr noundef %275) #16
  %281 = getelementptr inbounds float, ptr %271, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !77
  %283 = fadd float %280, %282
  store float %283, ptr %281, align 4, !tbaa !77
  %284 = getelementptr inbounds [3 x float], ptr %267, i64 2
  %285 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %284, ptr noundef %275) #16
  %286 = getelementptr inbounds float, ptr %271, i64 2
  %287 = load float, ptr %286, align 4, !tbaa !77
  %288 = fadd float %285, %287
  store float %288, ptr %286, align 4, !tbaa !77
  %289 = add nuw nsw i64 %266, 1
  %290 = icmp eq i64 %289, %260
  br i1 %290, label %261, label %265, !llvm.loop !177

291:                                              ; preds = %295, %261
  %292 = icmp eq i32 %254, 0
  br i1 %292, label %340, label %293

293:                                              ; preds = %291
  %294 = zext i32 %254 to i64
  br label %321

295:                                              ; preds = %263, %295
  %296 = phi i64 [ 0, %263 ], [ %319, %295 ]
  %297 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %296
  %298 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %296, i32 2
  %299 = load i32, ptr %298, align 4, !tbaa !74
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds [3 x float], ptr %253, i64 %300
  %302 = getelementptr inbounds %struct.fmatrix3x3, ptr %1, i64 %296, i32 1
  %303 = load i32, ptr %302, align 4, !tbaa !73
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds [3 x float], ptr %13, i64 %304
  %306 = tail call fastcc float @dot_v3v3(ptr noundef %297, ptr noundef %305) #16
  %307 = load float, ptr %301, align 4, !tbaa !77
  %308 = fadd float %306, %307
  store float %308, ptr %301, align 4, !tbaa !77
  %309 = getelementptr inbounds [3 x float], ptr %297, i64 1
  %310 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %309, ptr noundef %305) #16
  %311 = getelementptr inbounds float, ptr %301, i64 1
  %312 = load float, ptr %311, align 4, !tbaa !77
  %313 = fadd float %310, %312
  store float %313, ptr %311, align 4, !tbaa !77
  %314 = getelementptr inbounds [3 x float], ptr %297, i64 2
  %315 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %314, ptr noundef %305) #16
  %316 = getelementptr inbounds float, ptr %301, i64 2
  %317 = load float, ptr %316, align 4, !tbaa !77
  %318 = fadd float %315, %317
  store float %318, ptr %316, align 4, !tbaa !77
  %319 = add nuw nsw i64 %296, 1
  %320 = icmp eq i64 %319, %264
  br i1 %320, label %291, label %295, !llvm.loop !178

321:                                              ; preds = %293, %321
  %322 = phi i64 [ 0, %293 ], [ %338, %321 ]
  %323 = getelementptr inbounds [3 x float], ptr %11, i64 %322
  %324 = load float, ptr %323, align 4, !tbaa !77
  %325 = getelementptr inbounds [3 x float], ptr %253, i64 %322
  %326 = load float, ptr %325, align 4, !tbaa !77
  %327 = fadd float %324, %326
  store float %327, ptr %323, align 4, !tbaa !77
  %328 = getelementptr inbounds float, ptr %323, i64 1
  %329 = load float, ptr %328, align 4, !tbaa !77
  %330 = getelementptr inbounds float, ptr %325, i64 1
  %331 = load float, ptr %330, align 4, !tbaa !77
  %332 = fadd float %329, %331
  store float %332, ptr %328, align 4, !tbaa !77
  %333 = getelementptr inbounds float, ptr %323, i64 2
  %334 = load float, ptr %333, align 4, !tbaa !77
  %335 = getelementptr inbounds float, ptr %325, i64 2
  %336 = load float, ptr %335, align 4, !tbaa !77
  %337 = fadd float %334, %336
  store float %337, ptr %333, align 4, !tbaa !77
  %338 = add nuw nsw i64 %322, 1
  %339 = icmp eq i64 %338, %294
  br i1 %339, label %342, label %321, !llvm.loop !179

340:                                              ; preds = %291
  %341 = icmp eq ptr %253, null
  br i1 %341, label %344, label %342

342:                                              ; preds = %321, %340
  %343 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %343(ptr noundef nonnull %253) #15
  br label %344

344:                                              ; preds = %340, %342
  %345 = load i32, ptr %18, align 4, !tbaa !51
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %344
  %348 = zext i32 %345 to i64
  br label %350

349:                                              ; preds = %350, %344
  br i1 %24, label %454, label %390

350:                                              ; preds = %347, %350
  %351 = phi i64 [ 0, %347 ], [ %388, %350 ]
  %352 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %351
  %353 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %351, i32 2
  %354 = load i32, ptr %353, align 4, !tbaa !74
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds [3 x float], ptr %11, i64 %355
  %357 = load float, ptr %352, align 4, !tbaa !77
  %358 = load float, ptr %356, align 4, !tbaa !77
  %359 = getelementptr inbounds [3 x float], ptr %352, i64 1
  %360 = load float, ptr %359, align 4, !tbaa !77
  %361 = getelementptr inbounds float, ptr %356, i64 1
  %362 = load float, ptr %361, align 4, !tbaa !77
  %363 = fmul float %360, %362
  %364 = tail call float @llvm.fmuladd.f32(float %357, float %358, float %363)
  %365 = getelementptr inbounds [3 x float], ptr %352, i64 2
  %366 = load float, ptr %365, align 4, !tbaa !77
  %367 = getelementptr inbounds float, ptr %356, i64 2
  %368 = load float, ptr %367, align 4, !tbaa !77
  %369 = tail call float @llvm.fmuladd.f32(float %366, float %368, float %364)
  store float %369, ptr %356, align 4, !tbaa !77
  %370 = getelementptr inbounds [3 x float], ptr %352, i64 0, i64 1
  %371 = load float, ptr %370, align 4, !tbaa !77
  %372 = getelementptr inbounds [3 x float], ptr %352, i64 1, i64 1
  %373 = load float, ptr %372, align 4, !tbaa !77
  %374 = fmul float %362, %373
  %375 = tail call float @llvm.fmuladd.f32(float %371, float %369, float %374)
  %376 = getelementptr inbounds [3 x float], ptr %352, i64 2, i64 1
  %377 = load float, ptr %376, align 4, !tbaa !77
  %378 = tail call float @llvm.fmuladd.f32(float %377, float %368, float %375)
  store float %378, ptr %361, align 4, !tbaa !77
  %379 = getelementptr inbounds [3 x float], ptr %352, i64 0, i64 2
  %380 = load float, ptr %379, align 4, !tbaa !77
  %381 = getelementptr inbounds [3 x float], ptr %352, i64 1, i64 2
  %382 = load float, ptr %381, align 4, !tbaa !77
  %383 = fmul float %378, %382
  %384 = tail call float @llvm.fmuladd.f32(float %380, float %369, float %383)
  %385 = getelementptr inbounds [3 x float], ptr %352, i64 2, i64 2
  %386 = load float, ptr %385, align 4, !tbaa !77
  %387 = tail call float @llvm.fmuladd.f32(float %386, float %368, float %384)
  store float %387, ptr %367, align 4, !tbaa !77
  %388 = add nuw nsw i64 %351, 1
  %389 = icmp eq i64 %388, %348
  br i1 %389, label %349, label %350, !llvm.loop !208

390:                                              ; preds = %349, %390
  %391 = phi float [ %396, %390 ], [ 0.000000e+00, %349 ]
  %392 = phi i64 [ %397, %390 ], [ 0, %349 ]
  %393 = getelementptr inbounds [3 x float], ptr %13, i64 %392
  %394 = getelementptr inbounds [3 x float], ptr %11, i64 %392
  %395 = tail call fastcc float @dot_v3v3(ptr noundef %393, ptr noundef %394) #16
  %396 = fadd float %391, %395
  %397 = add nuw nsw i64 %392, 1
  %398 = icmp eq i64 %397, %9
  br i1 %398, label %399, label %390, !llvm.loop !210

399:                                              ; preds = %390
  %400 = fdiv float %248, %396
  br i1 %24, label %454, label %402

401:                                              ; preds = %402
  br i1 %24, label %454, label %422

402:                                              ; preds = %399, %402
  %403 = phi i64 [ %419, %402 ], [ 0, %399 ]
  %404 = getelementptr inbounds [3 x float], ptr %0, i64 %403
  %405 = load float, ptr %404, align 4, !tbaa !77
  %406 = getelementptr inbounds [3 x float], ptr %13, i64 %403
  %407 = load float, ptr %406, align 4, !tbaa !77
  %408 = tail call float @llvm.fmuladd.f32(float %407, float %400, float %405)
  store float %408, ptr %404, align 4, !tbaa !77
  %409 = getelementptr inbounds float, ptr %404, i64 1
  %410 = load float, ptr %409, align 4, !tbaa !77
  %411 = getelementptr inbounds float, ptr %406, i64 1
  %412 = load float, ptr %411, align 4, !tbaa !77
  %413 = tail call float @llvm.fmuladd.f32(float %412, float %400, float %410)
  store float %413, ptr %409, align 4, !tbaa !77
  %414 = getelementptr inbounds float, ptr %404, i64 2
  %415 = load float, ptr %414, align 4, !tbaa !77
  %416 = getelementptr inbounds float, ptr %406, i64 2
  %417 = load float, ptr %416, align 4, !tbaa !77
  %418 = tail call float @llvm.fmuladd.f32(float %417, float %400, float %415)
  store float %418, ptr %414, align 4, !tbaa !77
  %419 = add nuw nsw i64 %403, 1
  %420 = icmp eq i64 %419, %9
  br i1 %420, label %401, label %402, !llvm.loop !103

421:                                              ; preds = %422
  br i1 %24, label %454, label %444

422:                                              ; preds = %401, %422
  %423 = phi i64 [ %442, %422 ], [ 0, %401 ]
  %424 = getelementptr inbounds [3 x float], ptr %17, i64 %423
  %425 = load float, ptr %424, align 4, !tbaa !77
  %426 = getelementptr inbounds [3 x float], ptr %11, i64 %423
  %427 = load float, ptr %426, align 4, !tbaa !77
  %428 = fneg float %427
  %429 = tail call float @llvm.fmuladd.f32(float %428, float %400, float %425)
  store float %429, ptr %424, align 4, !tbaa !77
  %430 = getelementptr inbounds float, ptr %424, i64 1
  %431 = load float, ptr %430, align 4, !tbaa !77
  %432 = getelementptr inbounds float, ptr %426, i64 1
  %433 = load float, ptr %432, align 4, !tbaa !77
  %434 = fneg float %433
  %435 = tail call float @llvm.fmuladd.f32(float %434, float %400, float %431)
  store float %435, ptr %430, align 4, !tbaa !77
  %436 = getelementptr inbounds float, ptr %424, i64 2
  %437 = load float, ptr %436, align 4, !tbaa !77
  %438 = getelementptr inbounds float, ptr %426, i64 2
  %439 = load float, ptr %438, align 4, !tbaa !77
  %440 = fneg float %439
  %441 = tail call float @llvm.fmuladd.f32(float %440, float %400, float %437)
  store float %441, ptr %436, align 4, !tbaa !77
  %442 = add nuw nsw i64 %423, 1
  %443 = icmp eq i64 %442, %9
  br i1 %443, label %421, label %422, !llvm.loop !211

444:                                              ; preds = %421, %444
  %445 = phi float [ %449, %444 ], [ 0.000000e+00, %421 ]
  %446 = phi i64 [ %450, %444 ], [ 0, %421 ]
  %447 = getelementptr inbounds [3 x float], ptr %17, i64 %446
  %448 = tail call fastcc float @dot_v3v3(ptr noundef %447, ptr noundef %447) #16
  %449 = fadd float %445, %448
  %450 = add nuw nsw i64 %446, 1
  %451 = icmp eq i64 %450, %9
  br i1 %451, label %452, label %444, !llvm.loop !210

452:                                              ; preds = %444
  %453 = fdiv float %449, %248
  br i1 %24, label %454, label %458

454:                                              ; preds = %458, %349, %399, %401, %421, %452
  %455 = phi float [ %449, %452 ], [ 0.000000e+00, %421 ], [ 0.000000e+00, %401 ], [ 0.000000e+00, %399 ], [ 0.000000e+00, %349 ], [ %449, %458 ]
  br i1 %346, label %517, label %456

456:                                              ; preds = %454
  %457 = zext i32 %345 to i64
  br label %477

458:                                              ; preds = %452, %458
  %459 = phi i64 [ %475, %458 ], [ 0, %452 ]
  %460 = getelementptr inbounds [3 x float], ptr %17, i64 %459
  %461 = load float, ptr %460, align 4, !tbaa !77
  %462 = getelementptr inbounds [3 x float], ptr %13, i64 %459
  %463 = load float, ptr %462, align 4, !tbaa !77
  %464 = tail call float @llvm.fmuladd.f32(float %463, float %453, float %461)
  store float %464, ptr %462, align 4, !tbaa !77
  %465 = getelementptr inbounds float, ptr %460, i64 1
  %466 = load float, ptr %465, align 4, !tbaa !77
  %467 = getelementptr inbounds float, ptr %462, i64 1
  %468 = load float, ptr %467, align 4, !tbaa !77
  %469 = tail call float @llvm.fmuladd.f32(float %468, float %453, float %466)
  store float %469, ptr %467, align 4, !tbaa !77
  %470 = getelementptr inbounds float, ptr %460, i64 2
  %471 = load float, ptr %470, align 4, !tbaa !77
  %472 = getelementptr inbounds float, ptr %462, i64 2
  %473 = load float, ptr %472, align 4, !tbaa !77
  %474 = tail call float @llvm.fmuladd.f32(float %473, float %453, float %471)
  store float %474, ptr %472, align 4, !tbaa !77
  %475 = add nuw nsw i64 %459, 1
  %476 = icmp eq i64 %475, %9
  br i1 %476, label %454, label %458, !llvm.loop !103

477:                                              ; preds = %456, %477
  %478 = phi i64 [ 0, %456 ], [ %515, %477 ]
  %479 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %478
  %480 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %478, i32 2
  %481 = load i32, ptr %480, align 4, !tbaa !74
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds [3 x float], ptr %13, i64 %482
  %484 = load float, ptr %479, align 4, !tbaa !77
  %485 = load float, ptr %483, align 4, !tbaa !77
  %486 = getelementptr inbounds [3 x float], ptr %479, i64 1
  %487 = load float, ptr %486, align 4, !tbaa !77
  %488 = getelementptr inbounds float, ptr %483, i64 1
  %489 = load float, ptr %488, align 4, !tbaa !77
  %490 = fmul float %487, %489
  %491 = tail call float @llvm.fmuladd.f32(float %484, float %485, float %490)
  %492 = getelementptr inbounds [3 x float], ptr %479, i64 2
  %493 = load float, ptr %492, align 4, !tbaa !77
  %494 = getelementptr inbounds float, ptr %483, i64 2
  %495 = load float, ptr %494, align 4, !tbaa !77
  %496 = tail call float @llvm.fmuladd.f32(float %493, float %495, float %491)
  store float %496, ptr %483, align 4, !tbaa !77
  %497 = getelementptr inbounds [3 x float], ptr %479, i64 0, i64 1
  %498 = load float, ptr %497, align 4, !tbaa !77
  %499 = getelementptr inbounds [3 x float], ptr %479, i64 1, i64 1
  %500 = load float, ptr %499, align 4, !tbaa !77
  %501 = fmul float %489, %500
  %502 = tail call float @llvm.fmuladd.f32(float %498, float %496, float %501)
  %503 = getelementptr inbounds [3 x float], ptr %479, i64 2, i64 1
  %504 = load float, ptr %503, align 4, !tbaa !77
  %505 = tail call float @llvm.fmuladd.f32(float %504, float %495, float %502)
  store float %505, ptr %488, align 4, !tbaa !77
  %506 = getelementptr inbounds [3 x float], ptr %479, i64 0, i64 2
  %507 = load float, ptr %506, align 4, !tbaa !77
  %508 = getelementptr inbounds [3 x float], ptr %479, i64 1, i64 2
  %509 = load float, ptr %508, align 4, !tbaa !77
  %510 = fmul float %505, %509
  %511 = tail call float @llvm.fmuladd.f32(float %507, float %496, float %510)
  %512 = getelementptr inbounds [3 x float], ptr %479, i64 2, i64 2
  %513 = load float, ptr %512, align 4, !tbaa !77
  %514 = tail call float @llvm.fmuladd.f32(float %513, float %495, float %511)
  store float %514, ptr %494, align 4, !tbaa !77
  %515 = add nuw nsw i64 %478, 1
  %516 = icmp eq i64 %515, %457
  br i1 %516, label %517, label %477, !llvm.loop !208

517:                                              ; preds = %477, %454
  %518 = add nuw nsw i32 %247, 1
  %519 = fcmp ogt float %455, %244
  %520 = icmp ult i32 %247, 99
  %521 = select i1 %519, i1 %520, i1 false
  br i1 %521, label %246, label %522, !llvm.loop !212

522:                                              ; preds = %517, %242
  %523 = icmp eq ptr %11, null
  br i1 %523, label %526, label %524

524:                                              ; preds = %522
  %525 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %525(ptr noundef nonnull %11) #15
  br label %526

526:                                              ; preds = %522, %524
  %527 = icmp eq ptr %13, null
  br i1 %527, label %530, label %528

528:                                              ; preds = %526
  %529 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %529(ptr noundef nonnull %13) #15
  br label %530

530:                                              ; preds = %526, %528
  %531 = icmp eq ptr %15, null
  br i1 %531, label %534, label %532

532:                                              ; preds = %530
  %533 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %533(ptr noundef nonnull %15) #15
  br label %534

534:                                              ; preds = %530, %532
  %535 = icmp eq ptr %17, null
  br i1 %535, label %538, label %536

536:                                              ; preds = %534
  %537 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %537(ptr noundef nonnull %17) #15
  br label %538

538:                                              ; preds = %534, %536
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !40, i64 2092}
!35 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!43, !36, i64 120}
!43 = !{!"ClothModifierData", !44, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152}
!44 = !{!"ModifierData", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!45 = !{!46, !36, i64 0}
!46 = !{!"Cloth", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !37, i64 28, !37, i64 29, !40, i64 30, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 84}
!47 = !{!36, !36, i64 0}
!48 = !{!46, !36, i64 56}
!49 = !{!46, !41, i64 16}
!50 = !{!46, !41, i64 20}
!51 = !{!52, !41, i64 56}
!52 = !{!"fmatrix3x3", !37, i64 0, !41, i64 36, !41, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !41, i64 56, !41, i64 60}
!53 = !{!"float", !37, i64 0}
!54 = !{!52, !41, i64 60}
!55 = !{!56, !36, i64 72}
!56 = !{!"Implicit_Data", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!57 = !{!56, !36, i64 80}
!58 = !{!56, !36, i64 88}
!59 = !{!56, !36, i64 96}
!60 = !{!56, !36, i64 112}
!61 = !{!56, !36, i64 104}
!62 = !{!56, !36, i64 120}
!63 = !{!56, !36, i64 128}
!64 = !{!56, !36, i64 0}
!65 = !{!56, !36, i64 16}
!66 = !{!56, !36, i64 8}
!67 = !{!56, !36, i64 24}
!68 = !{!56, !36, i64 32}
!69 = !{!56, !36, i64 40}
!70 = !{!56, !36, i64 48}
!71 = !{!56, !36, i64 56}
!72 = !{!56, !36, i64 64}
!73 = !{!52, !41, i64 36}
!74 = !{!52, !41, i64 40}
!75 = !{!76, !53, i64 88}
!76 = !{!"ClothVertex", !41, i64 0, !37, i64 4, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 64, !37, i64 76, !53, i64 88, !53, i64 92, !37, i64 96, !36, i64 112, !41, i64 120, !53, i64 124, !53, i64 128, !53, i64 132, !53, i64 136, !41, i64 140, !53, i64 144}
!77 = !{!53, !53, i64 0}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!81, !36, i64 8}
!81 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!82 = !{!83, !41, i64 0}
!83 = !{!"ClothSpring", !41, i64 0, !41, i64 4, !53, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 60, !37, i64 96, !53, i64 108, !53, i64 112}
!84 = !{!83, !41, i64 4}
!85 = !{!83, !41, i64 12}
!86 = distinct !{!86, !79}
!87 = distinct !{!87, !79}
!88 = distinct !{!88, !79}
!89 = distinct !{!89, !79}
!90 = !{!"implicit.c:update_matrixS"}
!91 = distinct !{!91, !79}
!92 = !{!76, !41, i64 0}
!93 = distinct !{!93, !79}
!94 = !{!"implicit.c:copy_v3_v3"}
!95 = !{!43, !36, i64 128}
!96 = !{!97, !53, i64 72}
!97 = !{!"ClothSimSettings", !36, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !37, i64 20, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !53, i64 64, !53, i64 68, !53, i64 72, !53, i64 76, !53, i64 80, !53, i64 84, !53, i64 88, !53, i64 92, !53, i64 96, !53, i64 100, !53, i64 104, !53, i64 108, !53, i64 112, !53, i64 116, !53, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !37, i64 156, !36, i64 160}
!98 = !{!97, !41, i64 124}
!99 = !{!97, !41, i64 128}
!100 = distinct !{!100, !79}
!101 = !{!97, !53, i64 112}
!102 = distinct !{!102, !79}
!103 = distinct !{!103, !79}
!104 = distinct !{!104, !79}
!105 = !{!43, !36, i64 136}
!106 = !{!107, !41, i64 32}
!107 = !{!"ClothCollSettings", !36, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !41, i64 32, !40, i64 36, !40, i64 38, !36, i64 40, !40, i64 48, !40, i64 50, !41, i64 52}
!108 = !{!46, !36, i64 32}
!109 = distinct !{!109, !79}
!110 = distinct !{!110, !79}
!111 = distinct !{!111, !79}
!112 = distinct !{!112, !79}
!113 = distinct !{!113, !79}
!114 = distinct !{!114, !79}
!115 = !{!"implicit.c:sub_v3_v3v3"}
!116 = !{!"implicit.c:cloth_calc_force"}
!117 = !{!97, !53, i64 16}
!118 = !{!46, !36, i64 48}
!119 = !{!43, !36, i64 112}
!120 = !{!121, !41, i64 4628}
!121 = !{!"Scene", !122, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !123, i64 280, !132, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !39, i64 4384, !133, i64 4400, !134, i64 4416, !137, i64 4600, !36, i64 4608, !138, i64 4616, !36, i64 4640, !139, i64 4648, !139, i64 4656, !125, i64 4664, !126, i64 4824, !140, i64 4888, !36, i64 4952}
!122 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!123 = !{!"RenderData", !124, i64 0, !36, i64 248, !36, i64 256, !127, i64 264, !128, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !53, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !129, i64 544, !129, i64 560, !130, i64 576, !39, i64 592, !40, i64 608, !40, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !41, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !53, i64 660, !53, i64 664, !40, i64 668, !40, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !53, i64 2528, !53, i64 2532, !40, i64 2536, !40, i64 2538, !53, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !41, i64 2576, !53, i64 2580, !37, i64 2584, !131, i64 2616, !41, i64 3976, !41, i64 3980}
!124 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !125, i64 24, !126, i64 184}
!125 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!126 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!127 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!128 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !53, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!129 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!130 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!131 = !{!"BakeData", !124, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!132 = !{!"AudioData", !41, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !53, i64 24, !53, i64 28}
!133 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!134 = !{!"GameData", !133, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !135, i64 40, !40, i64 64, !40, i64 66, !53, i64 68, !136, i64 72, !53, i64 128, !53, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!135 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!136 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !41, i64 40, !53, i64 44, !53, i64 48, !40, i64 52, !40, i64 54}
!137 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!138 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!139 = !{!"long", !37, i64 0}
!140 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!141 = !{!97, !36, i64 160}
!142 = !{!143, !53, i64 64}
!143 = !{!"EffectorWeights", !36, i64 0, !37, i64 8, !53, i64 64, !40, i64 68, !37, i64 70, !41, i64 76}
!144 = distinct !{!144, !79}
!145 = distinct !{!145, !79}
!146 = !{!97, !53, i64 104}
!147 = !{!97, !53, i64 108}
!148 = distinct !{!148, !79}
!149 = distinct !{!149, !79}
!150 = !{!46, !41, i64 24}
!151 = distinct !{!151, !79}
!152 = !{!153, !41, i64 12}
!153 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !37, i64 18, !37, i64 19}
!154 = !{!153, !41, i64 0}
!155 = !{!153, !41, i64 4}
!156 = !{!153, !41, i64 8}
!157 = distinct !{!157, !79}
!158 = !{!83, !41, i64 16}
!159 = !{!83, !53, i64 8}
!160 = distinct !{!160, !79}
!161 = !{!83, !41, i64 20}
!162 = !{!97, !53, i64 40}
!163 = !{!83, !53, i64 108}
!164 = !{!97, !53, i64 56}
!165 = !{!97, !53, i64 68}
!166 = !{!97, !53, i64 64}
!167 = !{!97, !53, i64 12}
!168 = !{!97, !53, i64 96}
!169 = !{!76, !53, i64 92}
!170 = !{!97, !53, i64 100}
!171 = !{!97, !53, i64 48}
!172 = !{!97, !53, i64 52}
!173 = distinct !{!173, !79}
!174 = distinct !{!174, !79}
!175 = !{!"implicit.c:simulate_implicit_euler"}
!176 = distinct !{!176, !79}
!177 = distinct !{!177, !79}
!178 = distinct !{!178, !79}
!179 = distinct !{!179, !79}
!180 = distinct !{!180, !79}
!181 = !{!"implicit.c:mul_v3_fl"}
!182 = distinct !{!182, !79}
!183 = !{!"implicit.c:hair_velocity_smoothing"}
!184 = distinct !{!184, !79}
!185 = distinct !{!185, !79}
!186 = !{!187, !36, i64 24}
!187 = !{!"ColliderCache", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!188 = !{!189, !36, i64 112}
!189 = !{!"CollisionModifierData", !44, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !41, i64 172, !53, i64 176, !53, i64 180, !36, i64 184}
!190 = !{!189, !36, i64 120}
!191 = !{!189, !41, i64 168}
!192 = distinct !{!192, !79}
!193 = distinct !{!193, !79}
!194 = !{!195, !53, i64 12}
!195 = !{!"HairGridVert", !37, i64 0, !53, i64 12}
!196 = distinct !{!196, !79}
!197 = distinct !{!197, !79}
!198 = distinct !{!198, !79}
!199 = distinct !{!199, !79}
!200 = !{!"implicit.c:CalcFloat4"}
!201 = !{!"implicit.c:CalcFloat"}
!202 = !{!"implicit.c:normalize_v3_v3"}
!203 = !{!"implicit.c:calculateVertexWindForce"}
!204 = !{!"implicit.c:dot_v3v3"}
!205 = !{!"implicit.c:mul_v3_v3fl"}
!206 = !{!"implicit.c:zero_v3"}
!207 = !{!"implicit.c:cg_filtered"}
!208 = distinct !{!208, !79}
!209 = distinct !{!209, !79}
!210 = distinct !{!210, !79}
!211 = distinct !{!211, !79}
!212 = distinct !{!212, !79}
