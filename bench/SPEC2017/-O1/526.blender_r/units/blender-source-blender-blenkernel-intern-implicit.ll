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
%struct.HairGridVert = type { [3 x float], float }
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
%struct.ColliderCache = type { ptr, ptr, ptr, ptr }
%struct.CollisionModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, float, float, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }

@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"implicit vecmat\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"initial_cos implicit.c\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"cloth_implicit_alloc_matrix\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"cloth_implicit_alloc_vector\00", align 1
@str = private unnamed_addr constant [14 x i8] c"implicit_init\00", align 1
@str.7 = private unnamed_addr constant [36 x i8] c"winvec: out of memory in implicit.c\00", align 1
@str.8 = private unnamed_addr constant [23 x i8] c"implicit_set_positions\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @implicit_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !34
  %4 = icmp sgt i16 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %7

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %12 = tail call ptr %11(i64 noundef 136, ptr noundef nonnull @.str.1) #9
  %13 = getelementptr inbounds %struct.Cloth, ptr %9, i64 0, i32 11
  store ptr %12, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.Cloth, ptr %9, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.Cloth, ptr %9, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %19 = add i32 %17, %15
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 6
  %22 = tail call ptr %18(i64 noundef %21, ptr noundef nonnull @.str.4) #9
  %23 = getelementptr inbounds %struct.fmatrix3x3, ptr %22, i64 0, i32 6
  store i32 %15, ptr %23, align 4, !tbaa !51
  %24 = getelementptr inbounds %struct.fmatrix3x3, ptr %22, i64 0, i32 7
  store i32 %17, ptr %24, align 4, !tbaa !54
  %25 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 9
  store ptr %22, ptr %25, align 8, !tbaa !55
  %26 = load i32, ptr %14, align 8, !tbaa !49
  %27 = load i32, ptr %16, align 4, !tbaa !50
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %29 = add i32 %27, %26
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 6
  %32 = tail call ptr %28(i64 noundef %31, ptr noundef nonnull @.str.4) #9
  %33 = getelementptr inbounds %struct.fmatrix3x3, ptr %32, i64 0, i32 6
  store i32 %26, ptr %33, align 4, !tbaa !51
  %34 = getelementptr inbounds %struct.fmatrix3x3, ptr %32, i64 0, i32 7
  store i32 %27, ptr %34, align 4, !tbaa !54
  %35 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 10
  store ptr %32, ptr %35, align 8, !tbaa !57
  %36 = load i32, ptr %14, align 8, !tbaa !49
  %37 = load i32, ptr %16, align 4, !tbaa !50
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %39 = add i32 %37, %36
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 6
  %42 = tail call ptr %38(i64 noundef %41, ptr noundef nonnull @.str.4) #9
  %43 = getelementptr inbounds %struct.fmatrix3x3, ptr %42, i64 0, i32 6
  store i32 %36, ptr %43, align 4, !tbaa !51
  %44 = getelementptr inbounds %struct.fmatrix3x3, ptr %42, i64 0, i32 7
  store i32 %37, ptr %44, align 4, !tbaa !54
  %45 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 11
  store ptr %42, ptr %45, align 8, !tbaa !58
  %46 = load i32, ptr %14, align 8, !tbaa !49
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %48 = zext i32 %46 to i64
  %49 = shl nuw nsw i64 %48, 6
  %50 = tail call ptr %47(i64 noundef %49, ptr noundef nonnull @.str.4) #9
  %51 = getelementptr inbounds %struct.fmatrix3x3, ptr %50, i64 0, i32 6
  store i32 %46, ptr %51, align 4, !tbaa !51
  %52 = getelementptr inbounds %struct.fmatrix3x3, ptr %50, i64 0, i32 7
  store i32 0, ptr %52, align 4, !tbaa !54
  %53 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 12
  store ptr %50, ptr %53, align 8, !tbaa !59
  %54 = load i32, ptr %14, align 8, !tbaa !49
  %55 = load i32, ptr %16, align 4, !tbaa !50
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %57 = add i32 %55, %54
  %58 = zext i32 %57 to i64
  %59 = shl nuw nsw i64 %58, 6
  %60 = tail call ptr %56(i64 noundef %59, ptr noundef nonnull @.str.4) #9
  %61 = getelementptr inbounds %struct.fmatrix3x3, ptr %60, i64 0, i32 6
  store i32 %54, ptr %61, align 4, !tbaa !51
  %62 = getelementptr inbounds %struct.fmatrix3x3, ptr %60, i64 0, i32 7
  store i32 %55, ptr %62, align 4, !tbaa !54
  %63 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 14
  store ptr %60, ptr %63, align 8, !tbaa !60
  %64 = load i32, ptr %14, align 8, !tbaa !49
  %65 = load i32, ptr %16, align 4, !tbaa !50
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %67 = add i32 %65, %64
  %68 = zext i32 %67 to i64
  %69 = shl nuw nsw i64 %68, 6
  %70 = tail call ptr %66(i64 noundef %69, ptr noundef nonnull @.str.4) #9
  %71 = getelementptr inbounds %struct.fmatrix3x3, ptr %70, i64 0, i32 6
  store i32 %64, ptr %71, align 4, !tbaa !51
  %72 = getelementptr inbounds %struct.fmatrix3x3, ptr %70, i64 0, i32 7
  store i32 %65, ptr %72, align 4, !tbaa !54
  %73 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 13
  store ptr %70, ptr %73, align 8, !tbaa !61
  %74 = load i32, ptr %14, align 8, !tbaa !49
  %75 = load i32, ptr %16, align 4, !tbaa !50
  %76 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %77 = add i32 %75, %74
  %78 = zext i32 %77 to i64
  %79 = shl nuw nsw i64 %78, 6
  %80 = tail call ptr %76(i64 noundef %79, ptr noundef nonnull @.str.4) #9
  %81 = getelementptr inbounds %struct.fmatrix3x3, ptr %80, i64 0, i32 6
  store i32 %74, ptr %81, align 4, !tbaa !51
  %82 = getelementptr inbounds %struct.fmatrix3x3, ptr %80, i64 0, i32 7
  store i32 %75, ptr %82, align 4, !tbaa !54
  %83 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 15
  store ptr %80, ptr %83, align 8, !tbaa !62
  %84 = load i32, ptr %14, align 8, !tbaa !49
  %85 = load i32, ptr %16, align 4, !tbaa !50
  %86 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %87 = add i32 %85, %84
  %88 = zext i32 %87 to i64
  %89 = shl nuw nsw i64 %88, 6
  %90 = tail call ptr %86(i64 noundef %89, ptr noundef nonnull @.str.4) #9
  %91 = getelementptr inbounds %struct.fmatrix3x3, ptr %90, i64 0, i32 6
  store i32 %84, ptr %91, align 4, !tbaa !51
  %92 = getelementptr inbounds %struct.fmatrix3x3, ptr %90, i64 0, i32 7
  store i32 %85, ptr %92, align 4, !tbaa !54
  %93 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 16
  store ptr %90, ptr %93, align 8, !tbaa !63
  %94 = load i32, ptr %14, align 8, !tbaa !49
  %95 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %96 = zext i32 %94 to i64
  %97 = mul nuw nsw i64 %96, 12
  %98 = tail call ptr %95(i64 noundef %97, ptr noundef nonnull @.str.5) #9
  store ptr %98, ptr %12, align 8, !tbaa !64
  %99 = load i32, ptr %14, align 8, !tbaa !49
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %101 = zext i32 %99 to i64
  %102 = mul nuw nsw i64 %101, 12
  %103 = tail call ptr %100(i64 noundef %102, ptr noundef nonnull @.str.5) #9
  %104 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 2
  store ptr %103, ptr %104, align 8, !tbaa !65
  %105 = load i32, ptr %14, align 8, !tbaa !49
  %106 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %107 = zext i32 %105 to i64
  %108 = mul nuw nsw i64 %107, 12
  %109 = tail call ptr %106(i64 noundef %108, ptr noundef nonnull @.str.5) #9
  %110 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 1
  store ptr %109, ptr %110, align 8, !tbaa !66
  %111 = load i32, ptr %14, align 8, !tbaa !49
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %113 = zext i32 %111 to i64
  %114 = mul nuw nsw i64 %113, 12
  %115 = tail call ptr %112(i64 noundef %114, ptr noundef nonnull @.str.5) #9
  %116 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 3
  store ptr %115, ptr %116, align 8, !tbaa !67
  %117 = load i32, ptr %14, align 8, !tbaa !49
  %118 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %119 = zext i32 %117 to i64
  %120 = mul nuw nsw i64 %119, 12
  %121 = tail call ptr %118(i64 noundef %120, ptr noundef nonnull @.str.5) #9
  %122 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 4
  store ptr %121, ptr %122, align 8, !tbaa !68
  %123 = load i32, ptr %14, align 8, !tbaa !49
  %124 = zext i32 %123 to i64
  %125 = mul nuw nsw i64 %124, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %121, i8 0, i64 %125, i1 false)
  %126 = load i32, ptr %14, align 8, !tbaa !49
  %127 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %128 = zext i32 %126 to i64
  %129 = mul nuw nsw i64 %128, 12
  %130 = tail call ptr %127(i64 noundef %129, ptr noundef nonnull @.str.5) #9
  %131 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 5
  store ptr %130, ptr %131, align 8, !tbaa !69
  %132 = load i32, ptr %14, align 8, !tbaa !49
  %133 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %134 = zext i32 %132 to i64
  %135 = mul nuw nsw i64 %134, 12
  %136 = tail call ptr %133(i64 noundef %135, ptr noundef nonnull @.str.5) #9
  %137 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 6
  store ptr %136, ptr %137, align 8, !tbaa !70
  %138 = load i32, ptr %14, align 8, !tbaa !49
  %139 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %140 = zext i32 %138 to i64
  %141 = mul nuw nsw i64 %140, 12
  %142 = tail call ptr %139(i64 noundef %141, ptr noundef nonnull @.str.5) #9
  %143 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 7
  store ptr %142, ptr %143, align 8, !tbaa !71
  %144 = load i32, ptr %14, align 8, !tbaa !49
  %145 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %146 = zext i32 %144 to i64
  %147 = mul nuw nsw i64 %146, 12
  %148 = tail call ptr %145(i64 noundef %147, ptr noundef nonnull @.str.5) #9
  %149 = getelementptr inbounds %struct.Implicit_Data, ptr %12, i64 0, i32 8
  store ptr %148, ptr %149, align 8, !tbaa !72
  %150 = load ptr, ptr %53, align 8, !tbaa !59
  %151 = getelementptr inbounds %struct.fmatrix3x3, ptr %150, i64 0, i32 6
  store i32 0, ptr %151, align 4, !tbaa !51
  %152 = load i32, ptr %14, align 8, !tbaa !49
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %7
  %155 = zext nneg i32 %152 to i64
  br label %156

156:                                              ; preds = %154, %170
  %157 = phi i64 [ 0, %154 ], [ %172, %170 ]
  %158 = phi i32 [ 0, %154 ], [ %171, %170 ]
  %159 = getelementptr inbounds %struct.ClothVertex, ptr %10, i64 %157
  %160 = load i32, ptr %159, align 8, !tbaa !73
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %156
  %164 = zext i32 %158 to i64
  %165 = getelementptr inbounds %struct.fmatrix3x3, ptr %150, i64 %164, i32 2
  %166 = trunc i64 %157 to i32
  store i32 %166, ptr %165, align 4, !tbaa !75
  %167 = getelementptr inbounds %struct.fmatrix3x3, ptr %150, i64 %164, i32 1
  %168 = trunc i64 %157 to i32
  store i32 %168, ptr %167, align 4, !tbaa !76
  %169 = add i32 %158, 1
  br label %170

170:                                              ; preds = %163, %156
  %171 = phi i32 [ %169, %163 ], [ %158, %156 ]
  %172 = add nuw nsw i64 %157, 1
  %173 = icmp eq i64 %172, %155
  br i1 %173, label %174, label %156, !llvm.loop !77

174:                                              ; preds = %170, %7
  %175 = phi i32 [ 0, %7 ], [ %171, %170 ]
  store i32 %175, ptr %151, align 4, !tbaa !51
  %176 = getelementptr inbounds %struct.fmatrix3x3, ptr %150, i64 0, i32 7
  store i32 0, ptr %176, align 4, !tbaa !54
  %177 = icmp eq i32 %152, 0
  br i1 %177, label %230, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %93, align 8, !tbaa !63
  %180 = load ptr, ptr %83, align 8, !tbaa !62
  %181 = load ptr, ptr %63, align 8, !tbaa !60
  %182 = load ptr, ptr %73, align 8, !tbaa !61
  %183 = load ptr, ptr %45, align 8, !tbaa !58
  %184 = load ptr, ptr %35, align 8, !tbaa !57
  %185 = load ptr, ptr %25, align 8, !tbaa !55
  %186 = zext i32 %152 to i64
  br label %187

187:                                              ; preds = %178, %187
  %188 = phi i64 [ 0, %178 ], [ %228, %187 ]
  %189 = getelementptr inbounds %struct.fmatrix3x3, ptr %179, i64 %188, i32 1
  %190 = trunc i64 %188 to i32
  store i32 %190, ptr %189, align 4, !tbaa !76
  %191 = getelementptr inbounds %struct.fmatrix3x3, ptr %179, i64 %188, i32 2
  %192 = trunc i64 %188 to i32
  store i32 %192, ptr %191, align 4, !tbaa !75
  %193 = getelementptr inbounds %struct.fmatrix3x3, ptr %180, i64 %188, i32 2
  %194 = trunc i64 %188 to i32
  store i32 %194, ptr %193, align 4, !tbaa !75
  %195 = getelementptr inbounds %struct.fmatrix3x3, ptr %180, i64 %188, i32 1
  %196 = trunc i64 %188 to i32
  store i32 %196, ptr %195, align 4, !tbaa !76
  %197 = getelementptr inbounds %struct.fmatrix3x3, ptr %181, i64 %188, i32 2
  %198 = trunc i64 %188 to i32
  store i32 %198, ptr %197, align 4, !tbaa !75
  %199 = getelementptr inbounds %struct.fmatrix3x3, ptr %181, i64 %188, i32 1
  %200 = trunc i64 %188 to i32
  store i32 %200, ptr %199, align 4, !tbaa !76
  %201 = getelementptr inbounds %struct.fmatrix3x3, ptr %182, i64 %188, i32 2
  %202 = trunc i64 %188 to i32
  store i32 %202, ptr %201, align 4, !tbaa !75
  %203 = getelementptr inbounds %struct.fmatrix3x3, ptr %182, i64 %188, i32 1
  %204 = trunc i64 %188 to i32
  store i32 %204, ptr %203, align 4, !tbaa !76
  %205 = getelementptr inbounds %struct.fmatrix3x3, ptr %183, i64 %188, i32 1
  %206 = trunc i64 %188 to i32
  store i32 %206, ptr %205, align 4, !tbaa !76
  %207 = getelementptr inbounds %struct.fmatrix3x3, ptr %183, i64 %188, i32 2
  %208 = trunc i64 %188 to i32
  store i32 %208, ptr %207, align 4, !tbaa !75
  %209 = getelementptr inbounds %struct.fmatrix3x3, ptr %184, i64 %188, i32 1
  %210 = trunc i64 %188 to i32
  store i32 %210, ptr %209, align 4, !tbaa !76
  %211 = getelementptr inbounds %struct.fmatrix3x3, ptr %184, i64 %188, i32 2
  %212 = trunc i64 %188 to i32
  store i32 %212, ptr %211, align 4, !tbaa !75
  %213 = getelementptr inbounds %struct.fmatrix3x3, ptr %185, i64 %188, i32 1
  %214 = trunc i64 %188 to i32
  store i32 %214, ptr %213, align 4, !tbaa !76
  %215 = getelementptr inbounds %struct.fmatrix3x3, ptr %185, i64 %188, i32 2
  %216 = trunc i64 %188 to i32
  store i32 %216, ptr %215, align 4, !tbaa !75
  %217 = getelementptr inbounds %struct.fmatrix3x3, ptr %179, i64 %188
  %218 = getelementptr inbounds %struct.ClothVertex, ptr %10, i64 %188, i32 8
  %219 = load float, ptr %218, align 8, !tbaa !80
  store float 0.000000e+00, ptr %217, align 4, !tbaa !81
  %220 = getelementptr inbounds float, ptr %217, i64 1
  store float 0.000000e+00, ptr %220, align 4, !tbaa !81
  %221 = getelementptr inbounds float, ptr %217, i64 2
  store float 0.000000e+00, ptr %221, align 4, !tbaa !81
  %222 = getelementptr inbounds [3 x float], ptr %217, i64 1
  store float 0.000000e+00, ptr %222, align 4, !tbaa !81
  %223 = getelementptr inbounds [3 x float], ptr %217, i64 1, i64 1
  store float 0.000000e+00, ptr %223, align 4, !tbaa !81
  %224 = getelementptr inbounds [3 x float], ptr %217, i64 1, i64 2
  store float 0.000000e+00, ptr %224, align 4, !tbaa !81
  %225 = getelementptr inbounds [3 x float], ptr %217, i64 2
  store float 0.000000e+00, ptr %225, align 4, !tbaa !81
  %226 = getelementptr inbounds [3 x float], ptr %217, i64 2, i64 1
  store float 0.000000e+00, ptr %226, align 4, !tbaa !81
  %227 = getelementptr inbounds [3 x float], ptr %217, i64 2, i64 2
  store float 0.000000e+00, ptr %227, align 4, !tbaa !81
  store float %219, ptr %217, align 4, !tbaa !81
  store float %219, ptr %223, align 4, !tbaa !81
  store float %219, ptr %227, align 4, !tbaa !81
  %228 = add nuw nsw i64 %188, 1
  %229 = icmp eq i64 %228, %186
  br i1 %229, label %230, label %187, !llvm.loop !82

230:                                              ; preds = %187, %174
  %231 = load i32, ptr %16, align 4, !tbaa !50
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %272, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.Cloth, ptr %9, i64 0, i32 1
  %235 = load ptr, ptr %93, align 8, !tbaa !63
  %236 = load ptr, ptr %83, align 8, !tbaa !62
  %237 = load ptr, ptr %63, align 8, !tbaa !60
  %238 = load ptr, ptr %73, align 8, !tbaa !61
  %239 = load ptr, ptr %45, align 8, !tbaa !58
  %240 = load ptr, ptr %35, align 8, !tbaa !57
  %241 = load ptr, ptr %25, align 8, !tbaa !55
  %242 = zext i32 %231 to i64
  br label %243

243:                                              ; preds = %233, %243
  %244 = phi i64 [ 0, %233 ], [ %270, %243 ]
  %245 = phi ptr [ %234, %233 ], [ %246, %243 ]
  %246 = load ptr, ptr %245, align 8, !tbaa !47
  %247 = getelementptr inbounds %struct.LinkNode, ptr %246, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !83
  %249 = load i32, ptr %248, align 4, !tbaa !85
  %250 = trunc i64 %244 to i32
  %251 = add i32 %152, %250
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.fmatrix3x3, ptr %235, i64 %252, i32 2
  store i32 %249, ptr %253, align 4, !tbaa !75
  %254 = getelementptr inbounds %struct.fmatrix3x3, ptr %236, i64 %252, i32 2
  store i32 %249, ptr %254, align 4, !tbaa !75
  %255 = getelementptr inbounds %struct.fmatrix3x3, ptr %237, i64 %252, i32 2
  store i32 %249, ptr %255, align 4, !tbaa !75
  %256 = getelementptr inbounds %struct.fmatrix3x3, ptr %238, i64 %252, i32 2
  store i32 %249, ptr %256, align 4, !tbaa !75
  %257 = getelementptr inbounds %struct.fmatrix3x3, ptr %239, i64 %252, i32 2
  store i32 %249, ptr %257, align 4, !tbaa !75
  %258 = getelementptr inbounds %struct.fmatrix3x3, ptr %240, i64 %252, i32 2
  store i32 %249, ptr %258, align 4, !tbaa !75
  %259 = getelementptr inbounds %struct.fmatrix3x3, ptr %241, i64 %252, i32 2
  store i32 %249, ptr %259, align 4, !tbaa !75
  %260 = getelementptr inbounds %struct.ClothSpring, ptr %248, i64 0, i32 1
  %261 = load i32, ptr %260, align 4, !tbaa !87
  %262 = getelementptr inbounds %struct.fmatrix3x3, ptr %235, i64 %252, i32 1
  store i32 %261, ptr %262, align 4, !tbaa !76
  %263 = getelementptr inbounds %struct.fmatrix3x3, ptr %236, i64 %252, i32 1
  store i32 %261, ptr %263, align 4, !tbaa !76
  %264 = getelementptr inbounds %struct.fmatrix3x3, ptr %237, i64 %252, i32 1
  store i32 %261, ptr %264, align 4, !tbaa !76
  %265 = getelementptr inbounds %struct.fmatrix3x3, ptr %238, i64 %252, i32 1
  store i32 %261, ptr %265, align 4, !tbaa !76
  %266 = getelementptr inbounds %struct.fmatrix3x3, ptr %239, i64 %252, i32 1
  store i32 %261, ptr %266, align 4, !tbaa !76
  %267 = getelementptr inbounds %struct.fmatrix3x3, ptr %240, i64 %252, i32 1
  store i32 %261, ptr %267, align 4, !tbaa !76
  %268 = getelementptr inbounds %struct.fmatrix3x3, ptr %241, i64 %252, i32 1
  store i32 %261, ptr %268, align 4, !tbaa !76
  %269 = getelementptr inbounds %struct.ClothSpring, ptr %248, i64 0, i32 3
  store i32 %251, ptr %269, align 4, !tbaa !88
  %270 = add nuw nsw i64 %244, 1
  %271 = icmp eq i64 %270, %242
  br i1 %271, label %272, label %243, !llvm.loop !89

272:                                              ; preds = %243, %230
  %273 = load ptr, ptr %83, align 8, !tbaa !62
  %274 = getelementptr inbounds %struct.fmatrix3x3, ptr %273, i64 0, i32 6
  %275 = load i32, ptr %274, align 4, !tbaa !51
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %272
  %278 = zext i32 %275 to i64
  br label %287

279:                                              ; preds = %287, %272
  %280 = getelementptr inbounds %struct.fmatrix3x3, ptr %273, i64 0, i32 7
  %281 = load i32, ptr %280, align 4, !tbaa !54
  %282 = add i32 %281, %275
  %283 = icmp ult i32 %275, %282
  br i1 %283, label %284, label %300

284:                                              ; preds = %279
  %285 = zext i32 %275 to i64
  %286 = zext i32 %282 to i64
  br label %305

287:                                              ; preds = %277, %287
  %288 = phi i64 [ 0, %277 ], [ %298, %287 ]
  %289 = getelementptr inbounds %struct.fmatrix3x3, ptr %273, i64 %288
  store float 1.000000e+00, ptr %289, align 4, !tbaa !81
  %290 = getelementptr inbounds float, ptr %289, i64 1
  store float 0.000000e+00, ptr %290, align 4, !tbaa !81
  %291 = getelementptr inbounds float, ptr %289, i64 2
  store float 0.000000e+00, ptr %291, align 4, !tbaa !81
  %292 = getelementptr inbounds [3 x float], ptr %289, i64 1
  store float 0.000000e+00, ptr %292, align 4, !tbaa !81
  %293 = getelementptr inbounds [3 x float], ptr %289, i64 1, i64 1
  store float 1.000000e+00, ptr %293, align 4, !tbaa !81
  %294 = getelementptr inbounds [3 x float], ptr %289, i64 1, i64 2
  store float 0.000000e+00, ptr %294, align 4, !tbaa !81
  %295 = getelementptr inbounds [3 x float], ptr %289, i64 2
  store float 0.000000e+00, ptr %295, align 4, !tbaa !81
  %296 = getelementptr inbounds [3 x float], ptr %289, i64 2, i64 1
  store float 0.000000e+00, ptr %296, align 4, !tbaa !81
  %297 = getelementptr inbounds [3 x float], ptr %289, i64 2, i64 2
  store float 1.000000e+00, ptr %297, align 4, !tbaa !81
  %298 = add nuw nsw i64 %288, 1
  %299 = icmp eq i64 %298, %278
  br i1 %299, label %279, label %287, !llvm.loop !90

300:                                              ; preds = %305, %279
  %301 = icmp eq i32 %152, 0
  br i1 %301, label %323, label %302

302:                                              ; preds = %300
  %303 = load ptr, ptr %12, align 8, !tbaa !64
  %304 = zext i32 %152 to i64
  br label %310

305:                                              ; preds = %284, %305
  %306 = phi i64 [ %285, %284 ], [ %308, %305 ]
  %307 = getelementptr inbounds %struct.fmatrix3x3, ptr %273, i64 %306
  %308 = add nuw nsw i64 %306, 1
  %309 = icmp eq i64 %308, %286
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %307, i8 0, i64 36, i1 false)
  br i1 %309, label %300, label %305, !llvm.loop !91

310:                                              ; preds = %302, %310
  %311 = phi i64 [ 0, %302 ], [ %321, %310 ]
  %312 = getelementptr inbounds [3 x float], ptr %303, i64 %311
  %313 = getelementptr inbounds %struct.ClothVertex, ptr %10, i64 %311, i32 3
  %314 = load float, ptr %313, align 4, !tbaa !81
  store float %314, ptr %312, align 4, !tbaa !81
  %315 = getelementptr inbounds float, ptr %313, i64 1
  %316 = load float, ptr %315, align 4, !tbaa !81
  %317 = getelementptr inbounds float, ptr %312, i64 1
  store float %316, ptr %317, align 4, !tbaa !81
  %318 = getelementptr inbounds float, ptr %313, i64 2
  %319 = load float, ptr %318, align 4, !tbaa !81
  %320 = getelementptr inbounds float, ptr %312, i64 2
  store float %319, ptr %320, align 4, !tbaa !81
  %321 = add nuw nsw i64 %311, 1
  %322 = icmp eq i64 %321, %304
  br i1 %322, label %323, label %310, !llvm.loop !92

323:                                              ; preds = %310, %300
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
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
  tail call void %14(ptr noundef nonnull %11) #9
  br label %15

15:                                               ; preds = %9, %13
  %16 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %20(ptr noundef nonnull %17) #9
  br label %21

21:                                               ; preds = %15, %19
  %22 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %26(ptr noundef nonnull %23) #9
  br label %27

27:                                               ; preds = %21, %25
  %28 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %32(ptr noundef nonnull %29) #9
  br label %33

33:                                               ; preds = %27, %31
  %34 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %38(ptr noundef nonnull %35) #9
  br label %39

39:                                               ; preds = %33, %37
  %40 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %44(ptr noundef nonnull %41) #9
  br label %45

45:                                               ; preds = %39, %43
  %46 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 15
  %47 = load ptr, ptr %46, align 8, !tbaa !62
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %50(ptr noundef nonnull %47) #9
  br label %51

51:                                               ; preds = %45, %49
  %52 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 16
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %56(ptr noundef nonnull %53) #9
  br label %57

57:                                               ; preds = %51, %55
  %58 = load ptr, ptr %7, align 8, !tbaa !64
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %61(ptr noundef nonnull %58) #9
  br label %62

62:                                               ; preds = %57, %60
  %63 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !65
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %67(ptr noundef nonnull %64) #9
  br label %68

68:                                               ; preds = %62, %66
  %69 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !66
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %73(ptr noundef nonnull %70) #9
  br label %74

74:                                               ; preds = %68, %72
  %75 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !67
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %79(ptr noundef nonnull %76) #9
  br label %80

80:                                               ; preds = %74, %78
  %81 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !68
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %85(ptr noundef nonnull %82) #9
  br label %86

86:                                               ; preds = %80, %84
  %87 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !69
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %91(ptr noundef nonnull %88) #9
  br label %92

92:                                               ; preds = %86, %90
  %93 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !70
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %97(ptr noundef nonnull %94) #9
  br label %98

98:                                               ; preds = %92, %96
  %99 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !71
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %103(ptr noundef nonnull %100) #9
  br label %104

104:                                              ; preds = %98, %102
  %105 = getelementptr inbounds %struct.Implicit_Data, ptr %7, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !72
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %109(ptr noundef nonnull %106) #9
  br label %110

110:                                              ; preds = %104, %108
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %111(ptr noundef nonnull %7) #9
  br label %112

112:                                              ; preds = %5, %110, %1
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @implicit_solver(ptr noundef %0, float noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.ClothSimSettings, ptr %6, i64 0, i32 15
  %8 = load float, ptr %7, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.ClothModifierData, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.ClothSimSettings, ptr %6, i64 0, i32 28
  %15 = load i32, ptr %14, align 4, !tbaa !96
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %8, %16
  %18 = fdiv float %16, %8
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %20 = zext i32 %13 to i64
  %21 = mul nuw nsw i64 %20, 12
  %22 = tail call ptr %19(i64 noundef %21, ptr noundef nonnull @.str.2) #9
  %23 = getelementptr inbounds %struct.Cloth, ptr %10, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = load ptr, ptr %5, align 8, !tbaa !93
  %26 = getelementptr inbounds %struct.ClothSimSettings, ptr %25, i64 0, i32 29
  %27 = load i32, ptr %26, align 8, !tbaa !97
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %104, label %30

30:                                               ; preds = %4
  %31 = load i32, ptr %12, align 8, !tbaa !49
  %32 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.fmatrix3x3, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !51
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = zext i32 %35 to i64
  br label %44

39:                                               ; preds = %44, %30
  %40 = getelementptr inbounds %struct.fmatrix3x3, ptr %33, i64 0, i32 6
  %41 = icmp sgt i32 %31, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  %43 = zext nneg i32 %31 to i64
  br label %50

44:                                               ; preds = %37, %44
  %45 = phi i64 [ 0, %37 ], [ %48, %44 ]
  %46 = getelementptr inbounds %struct.fmatrix3x3, ptr %33, i64 %45, i32 2
  store i32 0, ptr %46, align 4, !tbaa !75
  %47 = getelementptr inbounds %struct.fmatrix3x3, ptr %33, i64 %45, i32 1
  store i32 0, ptr %47, align 4, !tbaa !76
  %48 = add nuw nsw i64 %45, 1
  %49 = icmp eq i64 %48, %38
  br i1 %49, label %39, label %44, !llvm.loop !98

50:                                               ; preds = %42, %64
  %51 = phi i64 [ 0, %42 ], [ %66, %64 ]
  %52 = phi i32 [ 0, %42 ], [ %65, %64 ]
  %53 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %51
  %54 = load i32, ptr %53, align 8, !tbaa !73
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = zext i32 %52 to i64
  %59 = getelementptr inbounds %struct.fmatrix3x3, ptr %33, i64 %58, i32 2
  %60 = trunc i64 %51 to i32
  store i32 %60, ptr %59, align 4, !tbaa !75
  %61 = getelementptr inbounds %struct.fmatrix3x3, ptr %33, i64 %58, i32 1
  %62 = trunc i64 %51 to i32
  store i32 %62, ptr %61, align 4, !tbaa !76
  %63 = add i32 %52, 1
  br label %64

64:                                               ; preds = %57, %50
  %65 = phi i32 [ %63, %57 ], [ %52, %50 ]
  %66 = add nuw nsw i64 %51, 1
  %67 = icmp eq i64 %66, %43
  br i1 %67, label %68, label %50, !llvm.loop !77

68:                                               ; preds = %64, %39
  %69 = phi i32 [ 0, %39 ], [ %65, %64 ]
  store i32 %69, ptr %40, align 4, !tbaa !51
  %70 = getelementptr inbounds %struct.fmatrix3x3, ptr %33, i64 0, i32 7
  store i32 0, ptr %70, align 4, !tbaa !54
  %71 = icmp eq i32 %13, 0
  br i1 %71, label %104, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 1
  %74 = zext i32 %13 to i64
  br label %75

75:                                               ; preds = %72, %101
  %76 = phi i64 [ 0, %72 ], [ %102, %101 ]
  %77 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %76
  %78 = load i32, ptr %77, align 8, !tbaa !73
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr %73, align 8, !tbaa !66
  %83 = getelementptr inbounds [3 x float], ptr %82, i64 %76
  %84 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %76, i32 2
  %85 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %76, i32 4
  %86 = load float, ptr %84, align 4, !tbaa !81
  %87 = load float, ptr %85, align 4, !tbaa !81
  %88 = fsub float %86, %87
  store float %88, ptr %83, align 4, !tbaa !81
  %89 = getelementptr inbounds float, ptr %84, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !81
  %91 = getelementptr inbounds float, ptr %85, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !81
  %93 = fsub float %90, %92
  %94 = getelementptr inbounds float, ptr %83, i64 1
  store float %93, ptr %94, align 4, !tbaa !81
  %95 = getelementptr inbounds float, ptr %84, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !81
  %97 = getelementptr inbounds float, ptr %85, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !81
  %99 = fsub float %96, %98
  %100 = getelementptr inbounds float, ptr %83, i64 2
  store float %99, ptr %100, align 4, !tbaa !81
  br label %101

101:                                              ; preds = %75, %81
  %102 = add nuw nsw i64 %76, 1
  %103 = icmp eq i64 %102, %74
  br i1 %103, label %104, label %75, !llvm.loop !99

104:                                              ; preds = %101, %68, %4
  %105 = fcmp ogt float %8, 0.000000e+00
  br i1 %105, label %106, label %134

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 1
  %108 = icmp eq i32 %13, 0
  %109 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 5
  %110 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 10
  %111 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 11
  %112 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 16
  %113 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 3
  %114 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 9
  %115 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 6
  %116 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 7
  %117 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 12
  %118 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 8
  %119 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 4
  %120 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 2
  %121 = icmp eq i32 %13, 0
  %122 = getelementptr inbounds %struct.ClothModifierData, ptr %2, i64 0, i32 4
  %123 = icmp eq i32 %13, 0
  %124 = icmp eq i32 %13, 0
  %125 = icmp eq i32 %13, 0
  %126 = fmul float %17, 5.000000e-01
  %127 = zext i32 %13 to i64
  %128 = icmp eq i32 %13, 0
  %129 = zext i32 %13 to i64
  %130 = zext i32 %13 to i64
  %131 = zext i32 %13 to i64
  %132 = zext i32 %13 to i64
  %133 = zext i32 %13 to i64
  br label %145

134:                                              ; preds = %423, %104
  %135 = icmp eq i32 %13, 0
  br i1 %135, label %477, label %136

136:                                              ; preds = %134
  %137 = load ptr, ptr %5, align 8, !tbaa !93
  %138 = getelementptr inbounds %struct.ClothSimSettings, ptr %137, i64 0, i32 29
  %139 = load i32, ptr %138, align 8, !tbaa !97
  %140 = and i32 %139, 8
  %141 = icmp eq i32 %140, 0
  %142 = zext i32 %13 to i64
  %143 = getelementptr inbounds %struct.Implicit_Data, ptr %24, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !66
  br label %428

145:                                              ; preds = %106, %423
  %146 = phi float [ 0.000000e+00, %106 ], [ %426, %423 ]
  %147 = load ptr, ptr %107, align 8, !tbaa !66
  %148 = load ptr, ptr %5, align 8, !tbaa !93
  %149 = getelementptr inbounds %struct.ClothSimSettings, ptr %148, i64 0, i32 25
  %150 = load float, ptr %149, align 8, !tbaa !100
  br i1 %108, label %164, label %151

151:                                              ; preds = %145, %151
  %152 = phi i64 [ %162, %151 ], [ 0, %145 ]
  %153 = getelementptr inbounds [3 x float], ptr %147, i64 %152
  %154 = load float, ptr %153, align 4, !tbaa !81
  %155 = fmul float %150, %154
  store float %155, ptr %153, align 4, !tbaa !81
  %156 = getelementptr inbounds float, ptr %153, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !81
  %158 = fmul float %150, %157
  store float %158, ptr %156, align 4, !tbaa !81
  %159 = getelementptr inbounds float, ptr %153, i64 2
  %160 = load float, ptr %159, align 4, !tbaa !81
  %161 = fmul float %150, %160
  store float %161, ptr %159, align 4, !tbaa !81
  %162 = add nuw nsw i64 %152, 1
  %163 = icmp eq i64 %162, %127
  br i1 %163, label %164, label %151, !llvm.loop !101

164:                                              ; preds = %151, %145
  %165 = load ptr, ptr %109, align 8, !tbaa !69
  %166 = load ptr, ptr %24, align 8, !tbaa !64
  %167 = load ptr, ptr %110, align 8, !tbaa !57
  %168 = load ptr, ptr %111, align 8, !tbaa !58
  %169 = load ptr, ptr %112, align 8, !tbaa !63
  tail call fastcc void @cloth_calc_force(ptr noundef %2, ptr noundef %165, ptr noundef %166, ptr noundef %147, ptr noundef %167, ptr noundef %168, ptr noundef %3, float noundef %146, ptr noundef %169)
  %170 = load ptr, ptr %113, align 8, !tbaa !67
  %171 = load ptr, ptr %107, align 8, !tbaa !66
  %172 = load ptr, ptr %109, align 8, !tbaa !69
  %173 = load ptr, ptr %110, align 8, !tbaa !57
  %174 = load ptr, ptr %111, align 8, !tbaa !58
  %175 = load ptr, ptr %114, align 8, !tbaa !55
  %176 = load ptr, ptr %115, align 8, !tbaa !70
  %177 = load ptr, ptr %116, align 8, !tbaa !71
  %178 = load ptr, ptr %117, align 8, !tbaa !59
  %179 = load ptr, ptr %118, align 8, !tbaa !72
  %180 = load ptr, ptr %119, align 8, !tbaa !68
  %181 = load ptr, ptr %112, align 8, !tbaa !63
  tail call fastcc void @simulate_implicit_euler(ptr noundef %170, ptr noundef %171, ptr noundef %172, ptr noundef %173, ptr noundef %174, float noundef %17, ptr noundef %175, ptr noundef %176, ptr noundef %177, ptr noundef %178, ptr noundef %179, ptr noundef %180, ptr noundef %181)
  %182 = load ptr, ptr %120, align 8, !tbaa !65
  %183 = load ptr, ptr %24, align 8, !tbaa !64
  %184 = load ptr, ptr %113, align 8, !tbaa !67
  br i1 %128, label %259, label %193

185:                                              ; preds = %193
  br i1 %121, label %259, label %186

186:                                              ; preds = %185
  %187 = load ptr, ptr %5, align 8, !tbaa !93
  %188 = getelementptr inbounds %struct.ClothSimSettings, ptr %187, i64 0, i32 29
  %189 = load i32, ptr %188, align 8, !tbaa !97
  %190 = and i32 %189, 8
  %191 = icmp eq i32 %190, 0
  %192 = fadd float %17, %146
  br label %215

193:                                              ; preds = %164, %193
  %194 = phi i64 [ %213, %193 ], [ 0, %164 ]
  %195 = getelementptr inbounds [3 x float], ptr %183, i64 %194
  %196 = load float, ptr %195, align 4, !tbaa !81
  %197 = getelementptr inbounds [3 x float], ptr %184, i64 %194
  %198 = load float, ptr %197, align 4, !tbaa !81
  %199 = tail call float @llvm.fmuladd.f32(float %198, float %17, float %196)
  %200 = getelementptr inbounds [3 x float], ptr %182, i64 %194
  store float %199, ptr %200, align 4, !tbaa !81
  %201 = getelementptr inbounds float, ptr %195, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !81
  %203 = getelementptr inbounds float, ptr %197, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !81
  %205 = tail call float @llvm.fmuladd.f32(float %204, float %17, float %202)
  %206 = getelementptr inbounds float, ptr %200, i64 1
  store float %205, ptr %206, align 4, !tbaa !81
  %207 = getelementptr inbounds float, ptr %195, i64 2
  %208 = load float, ptr %207, align 4, !tbaa !81
  %209 = getelementptr inbounds float, ptr %197, i64 2
  %210 = load float, ptr %209, align 4, !tbaa !81
  %211 = tail call float @llvm.fmuladd.f32(float %210, float %17, float %208)
  %212 = getelementptr inbounds float, ptr %200, i64 2
  store float %211, ptr %212, align 4, !tbaa !81
  %213 = add nuw nsw i64 %194, 1
  %214 = icmp eq i64 %213, %129
  br i1 %214, label %185, label %193, !llvm.loop !102

215:                                              ; preds = %186, %247
  %216 = phi i64 [ 0, %186 ], [ %257, %247 ]
  br i1 %191, label %247, label %217

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %216
  %219 = load i32, ptr %218, align 8, !tbaa !73
  %220 = and i32 %219, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %247, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %216, i32 2
  %224 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %216, i32 4
  %225 = load float, ptr %223, align 4, !tbaa !81
  %226 = load float, ptr %224, align 4, !tbaa !81
  %227 = fsub float %225, %226
  %228 = getelementptr inbounds float, ptr %223, i64 1
  %229 = load float, ptr %228, align 4, !tbaa !81
  %230 = getelementptr inbounds float, ptr %224, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !81
  %232 = fsub float %229, %231
  %233 = getelementptr inbounds float, ptr %223, i64 2
  %234 = load float, ptr %233, align 4, !tbaa !81
  %235 = getelementptr inbounds float, ptr %224, i64 2
  %236 = load float, ptr %235, align 4, !tbaa !81
  %237 = fsub float %234, %236
  %238 = fmul float %192, %227
  %239 = fmul float %192, %232
  %240 = fmul float %192, %237
  %241 = fadd float %226, %238
  %242 = fadd float %231, %239
  %243 = fadd float %236, %240
  %244 = getelementptr inbounds [3 x float], ptr %182, i64 %216
  store float %241, ptr %244, align 4, !tbaa !81
  %245 = getelementptr inbounds float, ptr %244, i64 1
  store float %242, ptr %245, align 4, !tbaa !81
  %246 = getelementptr inbounds float, ptr %244, i64 2
  store float %243, ptr %246, align 4, !tbaa !81
  br label %247

247:                                              ; preds = %217, %222, %215
  %248 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %216, i32 6
  %249 = getelementptr inbounds [3 x float], ptr %183, i64 %216
  %250 = load float, ptr %249, align 4, !tbaa !81
  store float %250, ptr %248, align 4, !tbaa !81
  %251 = getelementptr inbounds float, ptr %249, i64 1
  %252 = load float, ptr %251, align 4, !tbaa !81
  %253 = getelementptr inbounds float, ptr %248, i64 1
  store float %252, ptr %253, align 4, !tbaa !81
  %254 = getelementptr inbounds float, ptr %249, i64 2
  %255 = load float, ptr %254, align 4, !tbaa !81
  %256 = getelementptr inbounds float, ptr %248, i64 2
  store float %255, ptr %256, align 4, !tbaa !81
  %257 = add nuw nsw i64 %216, 1
  %258 = icmp eq i64 %257, %130
  br i1 %258, label %259, label %215, !llvm.loop !103

259:                                              ; preds = %247, %164, %185
  %260 = load ptr, ptr %122, align 8, !tbaa !104
  %261 = getelementptr inbounds %struct.ClothCollSettings, ptr %260, i64 0, i32 7
  %262 = load i32, ptr %261, align 8, !tbaa !105
  %263 = and i32 %262, 2
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %419, label %265

265:                                              ; preds = %259
  %266 = load ptr, ptr %9, align 8, !tbaa !42
  %267 = getelementptr inbounds %struct.Cloth, ptr %266, i64 0, i32 8
  %268 = load ptr, ptr %267, align 8, !tbaa !107
  %269 = icmp eq ptr %268, null
  br i1 %269, label %419, label %270

270:                                              ; preds = %265
  br i1 %123, label %299, label %271

271:                                              ; preds = %270, %271
  %272 = phi i64 [ %297, %271 ], [ 0, %270 ]
  %273 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %272, i32 5
  %274 = getelementptr inbounds [3 x float], ptr %182, i64 %272
  %275 = load float, ptr %274, align 4, !tbaa !81
  store float %275, ptr %273, align 4, !tbaa !81
  %276 = getelementptr inbounds float, ptr %274, i64 1
  %277 = load float, ptr %276, align 4, !tbaa !81
  %278 = getelementptr inbounds float, ptr %273, i64 1
  store float %277, ptr %278, align 4, !tbaa !81
  %279 = getelementptr inbounds float, ptr %274, i64 2
  %280 = load float, ptr %279, align 4, !tbaa !81
  %281 = getelementptr inbounds float, ptr %273, i64 2
  store float %280, ptr %281, align 4, !tbaa !81
  %282 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %272, i32 7
  %283 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %272, i32 6
  %284 = load float, ptr %283, align 4, !tbaa !81
  %285 = fsub float %275, %284
  store float %285, ptr %282, align 4, !tbaa !81
  %286 = getelementptr inbounds float, ptr %283, i64 1
  %287 = load float, ptr %286, align 4, !tbaa !81
  %288 = fsub float %277, %287
  %289 = getelementptr inbounds float, ptr %282, i64 1
  store float %288, ptr %289, align 4, !tbaa !81
  %290 = getelementptr inbounds float, ptr %283, i64 2
  %291 = load float, ptr %290, align 4, !tbaa !81
  %292 = fsub float %280, %291
  %293 = getelementptr inbounds float, ptr %282, i64 2
  store float %292, ptr %293, align 4, !tbaa !81
  %294 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %272, i32 1
  store float %285, ptr %294, align 4, !tbaa !81
  %295 = getelementptr inbounds float, ptr %294, i64 1
  store float %288, ptr %295, align 4, !tbaa !81
  %296 = getelementptr inbounds float, ptr %294, i64 2
  store float %292, ptr %296, align 4, !tbaa !81
  %297 = add nuw nsw i64 %272, 1
  %298 = icmp eq i64 %297, %131
  br i1 %298, label %299, label %271, !llvm.loop !108

299:                                              ; preds = %271, %270
  %300 = load i32, ptr %12, align 8, !tbaa !49
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %320, label %302

302:                                              ; preds = %299
  %303 = load ptr, ptr %10, align 8, !tbaa !45
  %304 = zext i32 %300 to i64
  br label %305

305:                                              ; preds = %302, %305
  %306 = phi i64 [ 0, %302 ], [ %317, %305 ]
  %307 = phi ptr [ %303, %302 ], [ %318, %305 ]
  %308 = getelementptr inbounds [3 x float], ptr %22, i64 %306
  %309 = getelementptr inbounds %struct.ClothVertex, ptr %307, i64 0, i32 5
  %310 = load float, ptr %309, align 4, !tbaa !81
  store float %310, ptr %308, align 4, !tbaa !81
  %311 = getelementptr inbounds %struct.ClothVertex, ptr %307, i64 0, i32 5, i64 1
  %312 = load float, ptr %311, align 4, !tbaa !81
  %313 = getelementptr inbounds float, ptr %308, i64 1
  store float %312, ptr %313, align 4, !tbaa !81
  %314 = getelementptr inbounds %struct.ClothVertex, ptr %307, i64 0, i32 5, i64 2
  %315 = load float, ptr %314, align 4, !tbaa !81
  %316 = getelementptr inbounds float, ptr %308, i64 2
  store float %315, ptr %316, align 4, !tbaa !81
  %317 = add nuw nsw i64 %306, 1
  %318 = getelementptr inbounds %struct.ClothVertex, ptr %307, i64 1
  %319 = icmp eq i64 %317, %304
  br i1 %319, label %320, label %305, !llvm.loop !109

320:                                              ; preds = %305, %299
  %321 = load ptr, ptr %5, align 8, !tbaa !93
  %322 = getelementptr inbounds %struct.ClothSimSettings, ptr %321, i64 0, i32 15
  %323 = load float, ptr %322, align 8, !tbaa !94
  %324 = fdiv float %146, %323
  %325 = fdiv float %17, %323
  %326 = tail call i32 @cloth_bvh_objcollision(ptr noundef %0, ptr noundef %2, float noundef %324, float noundef %325) #9
  br i1 %124, label %351, label %327

327:                                              ; preds = %320
  %328 = load ptr, ptr %24, align 8, !tbaa !64
  br label %329

329:                                              ; preds = %327, %329
  %330 = phi i64 [ 0, %327 ], [ %349, %329 ]
  %331 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %330, i32 7
  %332 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %330, i32 5
  %333 = getelementptr inbounds [3 x float], ptr %328, i64 %330
  %334 = load float, ptr %332, align 4, !tbaa !81
  %335 = load float, ptr %333, align 4, !tbaa !81
  %336 = fsub float %334, %335
  store float %336, ptr %331, align 4, !tbaa !81
  %337 = getelementptr inbounds float, ptr %332, i64 1
  %338 = load float, ptr %337, align 4, !tbaa !81
  %339 = getelementptr inbounds float, ptr %333, i64 1
  %340 = load float, ptr %339, align 4, !tbaa !81
  %341 = fsub float %338, %340
  %342 = getelementptr inbounds float, ptr %331, i64 1
  store float %341, ptr %342, align 4, !tbaa !81
  %343 = getelementptr inbounds float, ptr %332, i64 2
  %344 = load float, ptr %343, align 4, !tbaa !81
  %345 = getelementptr inbounds float, ptr %333, i64 2
  %346 = load float, ptr %345, align 4, !tbaa !81
  %347 = fsub float %344, %346
  %348 = getelementptr inbounds float, ptr %331, i64 2
  store float %347, ptr %348, align 4, !tbaa !81
  %349 = add nuw nsw i64 %330, 1
  %350 = icmp eq i64 %349, %132
  br i1 %350, label %351, label %329, !llvm.loop !110

351:                                              ; preds = %329, %320
  %352 = icmp eq i32 %326, 0
  br i1 %352, label %420, label %353

353:                                              ; preds = %351
  br i1 %125, label %394, label %354

354:                                              ; preds = %353
  %355 = load ptr, ptr %5, align 8, !tbaa !93
  %356 = getelementptr inbounds %struct.ClothSimSettings, ptr %355, i64 0, i32 29
  %357 = load i32, ptr %356, align 8, !tbaa !97
  %358 = and i32 %357, 8
  %359 = icmp eq i32 %358, 0
  br label %360

360:                                              ; preds = %354, %391
  %361 = phi i64 [ 0, %354 ], [ %392, %391 ]
  br i1 %359, label %367, label %362

362:                                              ; preds = %360
  %363 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %361
  %364 = load i32, ptr %363, align 8, !tbaa !73
  %365 = and i32 %364, 1
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %391

367:                                              ; preds = %362, %360
  %368 = load ptr, ptr %120, align 8, !tbaa !65
  %369 = getelementptr inbounds [3 x float], ptr %368, i64 %361
  %370 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %361, i32 5
  %371 = load float, ptr %370, align 4, !tbaa !81
  store float %371, ptr %369, align 4, !tbaa !81
  %372 = getelementptr inbounds float, ptr %370, i64 1
  %373 = load float, ptr %372, align 4, !tbaa !81
  %374 = getelementptr inbounds float, ptr %369, i64 1
  store float %373, ptr %374, align 4, !tbaa !81
  %375 = getelementptr inbounds float, ptr %370, i64 2
  %376 = load float, ptr %375, align 4, !tbaa !81
  %377 = getelementptr inbounds float, ptr %369, i64 2
  store float %376, ptr %377, align 4, !tbaa !81
  %378 = load ptr, ptr %113, align 8, !tbaa !67
  %379 = getelementptr inbounds [3 x float], ptr %378, i64 %361
  %380 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %361, i32 7
  %381 = load float, ptr %380, align 4, !tbaa !81
  store float %381, ptr %379, align 4, !tbaa !81
  %382 = getelementptr inbounds float, ptr %380, i64 1
  %383 = load float, ptr %382, align 4, !tbaa !81
  %384 = getelementptr inbounds float, ptr %379, i64 1
  store float %383, ptr %384, align 4, !tbaa !81
  %385 = getelementptr inbounds float, ptr %380, i64 2
  %386 = load float, ptr %385, align 4, !tbaa !81
  %387 = getelementptr inbounds float, ptr %379, i64 2
  store float %386, ptr %387, align 4, !tbaa !81
  %388 = fmul float %18, %381
  store float %388, ptr %379, align 4, !tbaa !81
  %389 = fmul float %18, %383
  store float %389, ptr %384, align 4, !tbaa !81
  %390 = fmul float %18, %386
  store float %390, ptr %387, align 4, !tbaa !81
  br label %391

391:                                              ; preds = %362, %367
  %392 = add nuw nsw i64 %361, 1
  %393 = icmp eq i64 %392, %133
  br i1 %393, label %394, label %360, !llvm.loop !111

394:                                              ; preds = %391, %353
  %395 = load ptr, ptr %24, align 8, !tbaa !64
  %396 = load ptr, ptr %120, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %395, ptr align 4 %396, i64 %21, i1 false)
  br i1 %352, label %423, label %397

397:                                              ; preds = %394
  %398 = load ptr, ptr %107, align 8, !tbaa !66
  %399 = load ptr, ptr %113, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %398, ptr align 4 %399, i64 %21, i1 false)
  %400 = load ptr, ptr %109, align 8, !tbaa !69
  %401 = load ptr, ptr %24, align 8, !tbaa !64
  %402 = load ptr, ptr %107, align 8, !tbaa !66
  %403 = load ptr, ptr %110, align 8, !tbaa !57
  %404 = load ptr, ptr %111, align 8, !tbaa !58
  %405 = fadd float %17, %146
  %406 = load ptr, ptr %112, align 8, !tbaa !63
  tail call fastcc void @cloth_calc_force(ptr noundef %2, ptr noundef %400, ptr noundef %401, ptr noundef %402, ptr noundef %403, ptr noundef %404, ptr noundef %3, float noundef %405, ptr noundef %406)
  %407 = load ptr, ptr %113, align 8, !tbaa !67
  %408 = load ptr, ptr %107, align 8, !tbaa !66
  %409 = load ptr, ptr %109, align 8, !tbaa !69
  %410 = load ptr, ptr %110, align 8, !tbaa !57
  %411 = load ptr, ptr %111, align 8, !tbaa !58
  %412 = load ptr, ptr %114, align 8, !tbaa !55
  %413 = load ptr, ptr %115, align 8, !tbaa !70
  %414 = load ptr, ptr %116, align 8, !tbaa !71
  %415 = load ptr, ptr %117, align 8, !tbaa !59
  %416 = load ptr, ptr %118, align 8, !tbaa !72
  %417 = load ptr, ptr %119, align 8, !tbaa !68
  %418 = load ptr, ptr %112, align 8, !tbaa !63
  tail call fastcc void @simulate_implicit_euler(ptr noundef %407, ptr noundef %408, ptr noundef %409, ptr noundef %410, ptr noundef %411, float noundef %126, ptr noundef %412, ptr noundef %413, ptr noundef %414, ptr noundef %415, ptr noundef %416, ptr noundef %417, ptr noundef %418)
  br label %423

419:                                              ; preds = %265, %259
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %183, ptr align 4 %182, i64 %21, i1 false)
  br label %423

420:                                              ; preds = %351
  %421 = load ptr, ptr %24, align 8, !tbaa !64
  %422 = load ptr, ptr %120, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %421, ptr align 4 %422, i64 %21, i1 false)
  br label %423

423:                                              ; preds = %420, %394, %397, %419
  %424 = load ptr, ptr %107, align 8, !tbaa !66
  %425 = load ptr, ptr %113, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %424, ptr align 4 %425, i64 %21, i1 false)
  %426 = fadd float %17, %146
  %427 = fcmp olt float %426, %8
  br i1 %427, label %145, label %134, !llvm.loop !112

428:                                              ; preds = %136, %463
  %429 = phi i64 [ 0, %136 ], [ %475, %463 ]
  br i1 %141, label %447, label %430

430:                                              ; preds = %428
  %431 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %429
  %432 = load i32, ptr %431, align 8, !tbaa !73
  %433 = and i32 %432, 1
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %447, label %435

435:                                              ; preds = %430
  %436 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %429, i32 6
  %437 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %429, i32 2
  %438 = load float, ptr %437, align 4, !tbaa !81
  store float %438, ptr %436, align 4, !tbaa !81
  %439 = getelementptr inbounds float, ptr %437, i64 1
  %440 = load float, ptr %439, align 4, !tbaa !81
  %441 = getelementptr inbounds float, ptr %436, i64 1
  store float %440, ptr %441, align 4, !tbaa !81
  %442 = getelementptr inbounds float, ptr %437, i64 2
  %443 = load float, ptr %442, align 4, !tbaa !81
  %444 = getelementptr inbounds float, ptr %436, i64 2
  store float %443, ptr %444, align 4, !tbaa !81
  %445 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %429, i32 3
  store float %438, ptr %445, align 4, !tbaa !81
  %446 = getelementptr inbounds float, ptr %445, i64 1
  store float %440, ptr %446, align 4, !tbaa !81
  br label %463

447:                                              ; preds = %430, %428
  %448 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %429, i32 6
  %449 = load ptr, ptr %24, align 8, !tbaa !64
  %450 = getelementptr inbounds [3 x float], ptr %449, i64 %429
  %451 = load float, ptr %450, align 4, !tbaa !81
  store float %451, ptr %448, align 4, !tbaa !81
  %452 = getelementptr inbounds float, ptr %450, i64 1
  %453 = load float, ptr %452, align 4, !tbaa !81
  %454 = getelementptr inbounds float, ptr %448, i64 1
  store float %453, ptr %454, align 4, !tbaa !81
  %455 = getelementptr inbounds float, ptr %450, i64 2
  %456 = load float, ptr %455, align 4, !tbaa !81
  %457 = getelementptr inbounds float, ptr %448, i64 2
  store float %456, ptr %457, align 4, !tbaa !81
  %458 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %429, i32 3
  %459 = load float, ptr %450, align 4, !tbaa !81
  store float %459, ptr %458, align 4, !tbaa !81
  %460 = load float, ptr %452, align 4, !tbaa !81
  %461 = getelementptr inbounds float, ptr %458, i64 1
  store float %460, ptr %461, align 4, !tbaa !81
  %462 = load float, ptr %455, align 4, !tbaa !81
  br label %463

463:                                              ; preds = %435, %447
  %464 = phi float [ %443, %435 ], [ %462, %447 ]
  %465 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %429, i32 3, i64 2
  store float %464, ptr %465, align 4, !tbaa !81
  %466 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %429, i32 1
  %467 = getelementptr inbounds [3 x float], ptr %144, i64 %429
  %468 = load float, ptr %467, align 4, !tbaa !81
  store float %468, ptr %466, align 4, !tbaa !81
  %469 = getelementptr inbounds float, ptr %467, i64 1
  %470 = load float, ptr %469, align 4, !tbaa !81
  %471 = getelementptr inbounds float, ptr %466, i64 1
  store float %470, ptr %471, align 4, !tbaa !81
  %472 = getelementptr inbounds float, ptr %467, i64 2
  %473 = load float, ptr %472, align 4, !tbaa !81
  %474 = getelementptr inbounds float, ptr %466, i64 2
  store float %473, ptr %474, align 4, !tbaa !81
  %475 = add nuw nsw i64 %429, 1
  %476 = icmp eq i64 %475, %142
  br i1 %476, label %477, label %428, !llvm.loop !113

477:                                              ; preds = %463, %134
  %478 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %478(ptr noundef %22) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cloth_calc_force(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, ptr nocapture noundef readonly %8) unnamed_addr #0 {
  %10 = alloca [10 x [10 x [10 x %struct.HairGridVert]]], align 16
  %11 = alloca [10 x [10 x [10 x %struct.HairGridVert]]], align 16
  %12 = alloca ptr, align 8
  %13 = alloca %struct.EffectedPoint, align 8
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = getelementptr inbounds %struct.ClothSimSettings, ptr %19, i64 0, i32 3
  %21 = load float, ptr %20, align 8, !tbaa !114
  %22 = fmul float %21, 0x3F847AE140000000
  %23 = getelementptr inbounds %struct.Cloth, ptr %17, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !115
  %25 = getelementptr inbounds %struct.Cloth, ptr %17, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #9
  %27 = fneg float %22
  %28 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !116
  %30 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 40, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !117
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 40
  %36 = load float, ptr %35, align 4, !tbaa !81
  %37 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 40, i32 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !81
  %39 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 40, i32 0, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !81
  %41 = getelementptr inbounds %struct.ClothSimSettings, ptr %19, i64 0, i32 41
  %42 = load ptr, ptr %41, align 8, !tbaa !138
  %43 = getelementptr inbounds %struct.EffectorWeights, ptr %42, i64 0, i32 2
  %44 = load float, ptr %43, align 8, !tbaa !139
  %45 = fmul float %44, 0x3F50624DE0000000
  %46 = fmul float %36, %45
  %47 = fmul float %38, %45
  %48 = fmul float %40, %45
  br label %49

49:                                               ; preds = %34, %9
  %50 = phi float [ 0.000000e+00, %9 ], [ %48, %34 ]
  %51 = phi float [ 0.000000e+00, %9 ], [ %47, %34 ]
  %52 = phi float [ 0.000000e+00, %9 ], [ %46, %34 ]
  %53 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 0, i32 6
  %54 = load i32, ptr %53, align 4, !tbaa !51
  %55 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 0, i32 7
  %56 = load i32, ptr %55, align 4, !tbaa !54
  %57 = add i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %49
  %60 = zext i32 %57 to i64
  br label %67

61:                                               ; preds = %67, %49
  %62 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 0, i32 6
  %63 = load i32, ptr %62, align 4, !tbaa !51
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %61
  %66 = zext i32 %63 to i64
  br label %88

67:                                               ; preds = %59, %67
  %68 = phi i64 [ 0, %59 ], [ %78, %67 ]
  %69 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 %68
  store float 0.000000e+00, ptr %69, align 4, !tbaa !81
  %70 = getelementptr inbounds float, ptr %69, i64 1
  store float 0.000000e+00, ptr %70, align 4, !tbaa !81
  %71 = getelementptr inbounds float, ptr %69, i64 2
  store float 0.000000e+00, ptr %71, align 4, !tbaa !81
  %72 = getelementptr inbounds [3 x float], ptr %69, i64 1
  store float 0.000000e+00, ptr %72, align 4, !tbaa !81
  %73 = getelementptr inbounds [3 x float], ptr %69, i64 1, i64 1
  store float 0.000000e+00, ptr %73, align 4, !tbaa !81
  %74 = getelementptr inbounds [3 x float], ptr %69, i64 1, i64 2
  store float 0.000000e+00, ptr %74, align 4, !tbaa !81
  %75 = getelementptr inbounds [3 x float], ptr %69, i64 2
  store float 0.000000e+00, ptr %75, align 4, !tbaa !81
  %76 = getelementptr inbounds [3 x float], ptr %69, i64 2, i64 1
  store float 0.000000e+00, ptr %76, align 4, !tbaa !81
  %77 = getelementptr inbounds [3 x float], ptr %69, i64 2, i64 2
  store float 0.000000e+00, ptr %77, align 4, !tbaa !81
  %78 = add nuw nsw i64 %68, 1
  %79 = icmp eq i64 %78, %60
  br i1 %79, label %61, label %67, !llvm.loop !141

80:                                               ; preds = %88, %61
  %81 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 0, i32 7
  %82 = load i32, ptr %81, align 4, !tbaa !54
  %83 = add i32 %82, %63
  %84 = icmp ult i32 %63, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = zext i32 %63 to i64
  %87 = zext i32 %83 to i64
  br label %105

88:                                               ; preds = %65, %88
  %89 = phi i64 [ 0, %65 ], [ %99, %88 ]
  %90 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %89
  store float %27, ptr %90, align 4, !tbaa !81
  %91 = getelementptr inbounds float, ptr %90, i64 1
  store float 0.000000e+00, ptr %91, align 4, !tbaa !81
  %92 = getelementptr inbounds float, ptr %90, i64 2
  store float 0.000000e+00, ptr %92, align 4, !tbaa !81
  %93 = getelementptr inbounds [3 x float], ptr %90, i64 1
  store float 0.000000e+00, ptr %93, align 4, !tbaa !81
  %94 = getelementptr inbounds [3 x float], ptr %90, i64 1, i64 1
  store float %27, ptr %94, align 4, !tbaa !81
  %95 = getelementptr inbounds [3 x float], ptr %90, i64 1, i64 2
  store float 0.000000e+00, ptr %95, align 4, !tbaa !81
  %96 = getelementptr inbounds [3 x float], ptr %90, i64 2
  store float 0.000000e+00, ptr %96, align 4, !tbaa !81
  %97 = getelementptr inbounds [3 x float], ptr %90, i64 2, i64 1
  store float 0.000000e+00, ptr %97, align 4, !tbaa !81
  %98 = getelementptr inbounds [3 x float], ptr %90, i64 2, i64 2
  store float %27, ptr %98, align 4, !tbaa !81
  %99 = add nuw nsw i64 %89, 1
  %100 = icmp eq i64 %99, %66
  br i1 %100, label %80, label %88, !llvm.loop !90

101:                                              ; preds = %105, %80
  %102 = icmp eq i32 %26, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %101
  %104 = zext i32 %26 to i64
  br label %110

105:                                              ; preds = %85, %105
  %106 = phi i64 [ %86, %85 ], [ %108, %105 ]
  %107 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %106
  %108 = add nuw nsw i64 %106, 1
  %109 = icmp eq i64 %108, %87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %107, i8 0, i64 36, i1 false)
  br i1 %109, label %101, label %105, !llvm.loop !91

110:                                              ; preds = %103, %110
  %111 = phi i64 [ 0, %103 ], [ %115, %110 ]
  %112 = getelementptr inbounds [3 x float], ptr %1, i64 %111
  store float %52, ptr %112, align 4, !tbaa !81
  %113 = getelementptr inbounds float, ptr %112, i64 1
  store float %51, ptr %113, align 4, !tbaa !81
  %114 = getelementptr inbounds float, ptr %112, i64 2
  store float %50, ptr %114, align 4, !tbaa !81
  %115 = add nuw nsw i64 %111, 1
  %116 = icmp eq i64 %115, %104
  br i1 %116, label %117, label %110, !llvm.loop !142

117:                                              ; preds = %110, %101
  %118 = getelementptr inbounds %struct.ClothSimSettings, ptr %19, i64 0, i32 23
  %119 = load float, ptr %118, align 8, !tbaa !143
  %120 = fcmp ogt float %119, 0.000000e+00
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.ClothSimSettings, ptr %19, i64 0, i32 24
  %123 = load float, ptr %122, align 4, !tbaa !144
  %124 = fcmp ogt float %123, 0.000000e+00
  br i1 %124, label %125, label %449

125:                                              ; preds = %121, %117
  call void @llvm.lifetime.start.p0(i64 16000, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 16000, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9
  %126 = tail call ptr @get_collider_cache(ptr noundef %29, ptr noundef null, ptr noundef null) #9
  store ptr %126, ptr %12, align 8, !tbaa !47
  %127 = load ptr, ptr %18, align 8, !tbaa !93
  %128 = getelementptr inbounds %struct.ClothSimSettings, ptr %127, i64 0, i32 23
  %129 = load float, ptr %128, align 8, !tbaa !143
  %130 = fmul float %129, 2.000000e+00
  %131 = getelementptr inbounds %struct.ClothSimSettings, ptr %127, i64 0, i32 24
  %132 = load float, ptr %131, align 4, !tbaa !144
  %133 = fmul float %132, 2.000000e+00
  %134 = icmp eq i32 %26, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %125
  %136 = zext i32 %26 to i64
  br label %147

137:                                              ; preds = %147, %125
  %138 = phi float [ 0x46293E5940000000, %125 ], [ %162, %147 ]
  %139 = phi float [ 0x46293E5940000000, %125 ], [ %158, %147 ]
  %140 = phi float [ 0xC6293E5940000000, %125 ], [ %172, %147 ]
  %141 = phi float [ 0xC6293E5940000000, %125 ], [ %170, %147 ]
  %142 = phi float [ 0xC6293E5940000000, %125 ], [ %168, %147 ]
  %143 = phi float [ 0x46293E5940000000, %125 ], [ %166, %147 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16000) %10, i8 0, i64 16000, i1 false), !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16000) %11, i8 0, i64 16000, i1 false), !tbaa !81
  %144 = fcmp ogt float %130, 0.000000e+00
  %145 = icmp ne i32 %26, 0
  %146 = select i1 %144, i1 %145, i1 false
  br i1 %146, label %175, label %236

147:                                              ; preds = %135, %147
  %148 = phi i64 [ 0, %135 ], [ %173, %147 ]
  %149 = phi float [ 0x46293E5940000000, %135 ], [ %166, %147 ]
  %150 = phi float [ 0xC6293E5940000000, %135 ], [ %168, %147 ]
  %151 = phi float [ 0xC6293E5940000000, %135 ], [ %170, %147 ]
  %152 = phi float [ 0xC6293E5940000000, %135 ], [ %172, %147 ]
  %153 = phi float [ 0x46293E5940000000, %135 ], [ %158, %147 ]
  %154 = phi float [ 0x46293E5940000000, %135 ], [ %162, %147 ]
  %155 = getelementptr inbounds [3 x float], ptr %2, i64 %148
  %156 = load float, ptr %155, align 4, !tbaa !81
  %157 = fcmp ogt float %153, %156
  %158 = select i1 %157, float %156, float %153
  %159 = getelementptr inbounds [3 x float], ptr %2, i64 %148, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !81
  %161 = fcmp ogt float %154, %160
  %162 = select i1 %161, float %160, float %154
  %163 = getelementptr inbounds [3 x float], ptr %2, i64 %148, i64 2
  %164 = load float, ptr %163, align 4, !tbaa !81
  %165 = fcmp ogt float %149, %164
  %166 = select i1 %165, float %164, float %149
  %167 = fcmp olt float %150, %156
  %168 = select i1 %167, float %156, float %150
  %169 = fcmp olt float %151, %160
  %170 = select i1 %169, float %160, float %151
  %171 = fcmp olt float %152, %164
  %172 = select i1 %171, float %164, float %152
  %173 = add nuw nsw i64 %148, 1
  %174 = icmp eq i64 %173, %136
  br i1 %174, label %137, label %147, !llvm.loop !145

175:                                              ; preds = %137
  %176 = fsub float %142, %139
  %177 = fsub float %141, %138
  %178 = fsub float %140, %143
  %179 = zext i32 %26 to i64
  br label %180

180:                                              ; preds = %175, %233
  %181 = phi i64 [ 0, %175 ], [ %234, %233 ]
  %182 = getelementptr inbounds [3 x float], ptr %2, i64 %181
  %183 = load float, ptr %182, align 4, !tbaa !81
  %184 = fsub float %183, %139
  %185 = fdiv float %184, %176
  %186 = fmul float %185, 0x4023FAE140000000
  %187 = fptosi float %186 to i32
  %188 = getelementptr inbounds [3 x float], ptr %2, i64 %181, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !81
  %190 = fsub float %189, %138
  %191 = fdiv float %190, %177
  %192 = fmul float %191, 0x4023FAE140000000
  %193 = fptosi float %192 to i32
  %194 = getelementptr inbounds [3 x float], ptr %2, i64 %181, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !81
  %196 = fsub float %195, %143
  %197 = fdiv float %196, %178
  %198 = fmul float %197, 0x4023FAE140000000
  %199 = fptosi float %198 to i32
  %200 = icmp slt i32 %187, 0
  %201 = icmp slt i32 %193, 0
  %202 = select i1 %200, i1 true, i1 %201
  %203 = icmp slt i32 %199, 0
  %204 = select i1 %202, i1 true, i1 %203
  %205 = icmp sgt i32 %187, 9
  %206 = or i1 %205, %204
  %207 = icmp sgt i32 %193, 9
  %208 = select i1 %206, i1 true, i1 %207
  %209 = icmp sgt i32 %199, 9
  %210 = select i1 %208, i1 true, i1 %209
  br i1 %210, label %233, label %211

211:                                              ; preds = %180
  %212 = getelementptr inbounds [3 x float], ptr %3, i64 %181
  %213 = load float, ptr %212, align 4, !tbaa !81
  %214 = zext nneg i32 %187 to i64
  %215 = zext nneg i32 %193 to i64
  %216 = zext nneg i32 %199 to i64
  %217 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %10, i64 0, i64 %214, i64 %215, i64 %216
  %218 = load float, ptr %217, align 16, !tbaa !81
  %219 = fadd float %213, %218
  store float %219, ptr %217, align 16, !tbaa !81
  %220 = getelementptr inbounds [3 x float], ptr %3, i64 %181, i64 1
  %221 = load float, ptr %220, align 4, !tbaa !81
  %222 = getelementptr inbounds [3 x float], ptr %217, i64 0, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !81
  %224 = fadd float %221, %223
  store float %224, ptr %222, align 4, !tbaa !81
  %225 = getelementptr inbounds [3 x float], ptr %3, i64 %181, i64 2
  %226 = load float, ptr %225, align 4, !tbaa !81
  %227 = getelementptr inbounds [3 x float], ptr %217, i64 0, i64 2
  %228 = load float, ptr %227, align 8, !tbaa !81
  %229 = fadd float %226, %228
  store float %229, ptr %227, align 8, !tbaa !81
  %230 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %10, i64 0, i64 %214, i64 %215, i64 %216, i32 1
  %231 = load float, ptr %230, align 4, !tbaa !146
  %232 = fadd float %231, 1.000000e+00
  store float %232, ptr %230, align 4, !tbaa !146
  br label %233

233:                                              ; preds = %211, %180
  %234 = add nuw nsw i64 %181, 1
  %235 = icmp eq i64 %234, %179
  br i1 %235, label %236, label %180, !llvm.loop !148

236:                                              ; preds = %233, %137
  %237 = icmp ne ptr %126, null
  %238 = fcmp ogt float %133, 0.000000e+00
  %239 = select i1 %237, i1 %238, i1 false
  br i1 %239, label %241, label %240

240:                                              ; preds = %248, %241, %236
  br label %318

241:                                              ; preds = %236
  %242 = load ptr, ptr %126, align 8, !tbaa !47
  %243 = icmp eq ptr %242, null
  br i1 %243, label %240, label %244

244:                                              ; preds = %241
  %245 = fsub float %142, %139
  %246 = fsub float %141, %138
  %247 = fsub float %140, %143
  br label %251

248:                                              ; preds = %313, %251
  %249 = load ptr, ptr %252, align 8, !tbaa !47
  %250 = icmp eq ptr %249, null
  br i1 %250, label %240, label %251, !llvm.loop !149

251:                                              ; preds = %244, %248
  %252 = phi ptr [ %242, %244 ], [ %249, %248 ]
  %253 = getelementptr inbounds %struct.ColliderCache, ptr %252, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !150
  %255 = getelementptr inbounds %struct.CollisionModifierData, ptr %254, i64 0, i32 8
  %256 = load i32, ptr %255, align 8, !tbaa !152
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %248, label %258

258:                                              ; preds = %251
  %259 = getelementptr inbounds %struct.CollisionModifierData, ptr %254, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !154
  %261 = getelementptr inbounds %struct.CollisionModifierData, ptr %254, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !155
  br label %263

263:                                              ; preds = %258, %313
  %264 = phi ptr [ %316, %313 ], [ %260, %258 ]
  %265 = phi ptr [ %315, %313 ], [ %262, %258 ]
  %266 = phi i32 [ %314, %313 ], [ 0, %258 ]
  %267 = load float, ptr %264, align 4, !tbaa !81
  %268 = fsub float %267, %139
  %269 = fdiv float %268, %245
  %270 = fmul float %269, 0x4023FAE140000000
  %271 = fptosi float %270 to i32
  %272 = icmp ult i32 %271, 10
  br i1 %272, label %273, label %313

273:                                              ; preds = %263
  %274 = getelementptr inbounds [3 x float], ptr %264, i64 0, i64 1
  %275 = load float, ptr %274, align 4, !tbaa !81
  %276 = fsub float %275, %138
  %277 = fdiv float %276, %246
  %278 = fmul float %277, 0x4023FAE140000000
  %279 = fptosi float %278 to i32
  %280 = icmp ult i32 %279, 10
  br i1 %280, label %281, label %313

281:                                              ; preds = %273
  %282 = getelementptr inbounds [3 x float], ptr %264, i64 0, i64 2
  %283 = load float, ptr %282, align 4, !tbaa !81
  %284 = fsub float %283, %143
  %285 = fdiv float %284, %247
  %286 = fmul float %285, 0x4023FAE140000000
  %287 = fptosi float %286 to i32
  %288 = icmp ult i32 %287, 10
  br i1 %288, label %289, label %313

289:                                              ; preds = %281
  %290 = load float, ptr %265, align 4, !tbaa !81
  %291 = fsub float %267, %290
  %292 = getelementptr inbounds float, ptr %265, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !81
  %294 = fsub float %275, %293
  %295 = getelementptr inbounds float, ptr %265, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !81
  %297 = fsub float %283, %296
  %298 = zext nneg i32 %271 to i64
  %299 = zext nneg i32 %279 to i64
  %300 = zext nneg i32 %287 to i64
  %301 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %11, i64 0, i64 %298, i64 %299, i64 %300
  %302 = load float, ptr %301, align 16, !tbaa !81
  %303 = fadd float %291, %302
  store float %303, ptr %301, align 16, !tbaa !81
  %304 = getelementptr inbounds [3 x float], ptr %301, i64 0, i64 1
  %305 = load float, ptr %304, align 4, !tbaa !81
  %306 = fadd float %294, %305
  store float %306, ptr %304, align 4, !tbaa !81
  %307 = getelementptr inbounds [3 x float], ptr %301, i64 0, i64 2
  %308 = load float, ptr %307, align 8, !tbaa !81
  %309 = fadd float %297, %308
  store float %309, ptr %307, align 8, !tbaa !81
  %310 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %11, i64 0, i64 %298, i64 %299, i64 %300, i32 1
  %311 = load float, ptr %310, align 4, !tbaa !146
  %312 = fadd float %311, 1.000000e+00
  store float %312, ptr %310, align 4, !tbaa !146
  br label %313

313:                                              ; preds = %289, %281, %273, %263
  %314 = add nuw i32 %266, 1
  %315 = getelementptr inbounds %struct.MVert, ptr %265, i64 1
  %316 = getelementptr inbounds %struct.MVert, ptr %264, i64 1
  %317 = icmp eq i32 %314, %256
  br i1 %317, label %248, label %263, !llvm.loop !156

318:                                              ; preds = %240, %364
  %319 = phi i64 [ %365, %364 ], [ 0, %240 ]
  br label %327

320:                                              ; preds = %364
  %321 = icmp eq i32 %26, 0
  br i1 %321, label %448, label %322

322:                                              ; preds = %320
  %323 = fsub float %142, %139
  %324 = fsub float %141, %138
  %325 = fsub float %140, %143
  %326 = zext i32 %26 to i64
  br label %367

327:                                              ; preds = %318, %361
  %328 = phi i64 [ 0, %318 ], [ %362, %361 ]
  br label %329

329:                                              ; preds = %327, %358
  %330 = phi i64 [ 0, %327 ], [ %359, %358 ]
  %331 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %10, i64 0, i64 %319, i64 %328, i64 %330, i32 1
  %332 = load float, ptr %331, align 4, !tbaa !146
  %333 = fcmp ogt float %332, 0.000000e+00
  br i1 %333, label %334, label %344

334:                                              ; preds = %329
  %335 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %10, i64 0, i64 %319, i64 %328, i64 %330
  %336 = load float, ptr %335, align 16, !tbaa !81
  %337 = fdiv float %336, %332
  store float %337, ptr %335, align 16, !tbaa !81
  %338 = getelementptr inbounds [3 x float], ptr %335, i64 0, i64 1
  %339 = load float, ptr %338, align 4, !tbaa !81
  %340 = fdiv float %339, %332
  store float %340, ptr %338, align 4, !tbaa !81
  %341 = getelementptr inbounds [3 x float], ptr %335, i64 0, i64 2
  %342 = load float, ptr %341, align 8, !tbaa !81
  %343 = fdiv float %342, %332
  store float %343, ptr %341, align 8, !tbaa !81
  br label %344

344:                                              ; preds = %334, %329
  %345 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %11, i64 0, i64 %319, i64 %328, i64 %330, i32 1
  %346 = load float, ptr %345, align 4, !tbaa !146
  %347 = fcmp ogt float %346, 0.000000e+00
  br i1 %347, label %348, label %358

348:                                              ; preds = %344
  %349 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %11, i64 0, i64 %319, i64 %328, i64 %330
  %350 = load float, ptr %349, align 16, !tbaa !81
  %351 = fdiv float %350, %346
  store float %351, ptr %349, align 16, !tbaa !81
  %352 = getelementptr inbounds [3 x float], ptr %349, i64 0, i64 1
  %353 = load float, ptr %352, align 4, !tbaa !81
  %354 = fdiv float %353, %346
  store float %354, ptr %352, align 4, !tbaa !81
  %355 = getelementptr inbounds [3 x float], ptr %349, i64 0, i64 2
  %356 = load float, ptr %355, align 8, !tbaa !81
  %357 = fdiv float %356, %346
  store float %357, ptr %355, align 8, !tbaa !81
  br label %358

358:                                              ; preds = %348, %344
  %359 = add nuw nsw i64 %330, 1
  %360 = icmp eq i64 %359, 10
  br i1 %360, label %361, label %329, !llvm.loop !157

361:                                              ; preds = %358
  %362 = add nuw nsw i64 %328, 1
  %363 = icmp eq i64 %362, 10
  br i1 %363, label %364, label %327, !llvm.loop !158

364:                                              ; preds = %361
  %365 = add nuw nsw i64 %319, 1
  %366 = icmp eq i64 %365, 10
  br i1 %366, label %320, label %318, !llvm.loop !159

367:                                              ; preds = %322, %445
  %368 = phi i64 [ 0, %322 ], [ %446, %445 ]
  %369 = getelementptr inbounds [3 x float], ptr %2, i64 %368
  %370 = load float, ptr %369, align 4, !tbaa !81
  %371 = fsub float %370, %139
  %372 = fdiv float %371, %323
  %373 = fmul float %372, 0x4023FAE140000000
  %374 = fptosi float %373 to i32
  %375 = getelementptr inbounds [3 x float], ptr %2, i64 %368, i64 1
  %376 = load float, ptr %375, align 4, !tbaa !81
  %377 = fsub float %376, %138
  %378 = fdiv float %377, %324
  %379 = fmul float %378, 0x4023FAE140000000
  %380 = fptosi float %379 to i32
  %381 = getelementptr inbounds [3 x float], ptr %2, i64 %368, i64 2
  %382 = load float, ptr %381, align 4, !tbaa !81
  %383 = fsub float %382, %143
  %384 = fdiv float %383, %325
  %385 = fmul float %384, 0x4023FAE140000000
  %386 = fptosi float %385 to i32
  %387 = icmp slt i32 %374, 0
  %388 = icmp slt i32 %380, 0
  %389 = select i1 %387, i1 true, i1 %388
  %390 = icmp slt i32 %386, 0
  %391 = select i1 %389, i1 true, i1 %390
  %392 = icmp sgt i32 %374, 9
  %393 = or i1 %392, %391
  %394 = icmp sgt i32 %380, 9
  %395 = select i1 %393, i1 true, i1 %394
  %396 = icmp sgt i32 %386, 9
  %397 = select i1 %395, i1 true, i1 %396
  br i1 %397, label %445, label %398

398:                                              ; preds = %367
  %399 = zext nneg i32 %374 to i64
  %400 = zext nneg i32 %380 to i64
  %401 = zext nneg i32 %386 to i64
  %402 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %10, i64 0, i64 %399, i64 %400, i64 %401
  %403 = load float, ptr %402, align 16, !tbaa !81
  %404 = getelementptr inbounds [3 x float], ptr %3, i64 %368
  %405 = load float, ptr %404, align 4, !tbaa !81
  %406 = fsub float %403, %405
  %407 = getelementptr inbounds [3 x float], ptr %1, i64 %368
  %408 = load float, ptr %407, align 4, !tbaa !81
  %409 = tail call float @llvm.fmuladd.f32(float %130, float %406, float %408)
  store float %409, ptr %407, align 4, !tbaa !81
  %410 = getelementptr inbounds [3 x float], ptr %402, i64 0, i64 1
  %411 = load float, ptr %410, align 4, !tbaa !81
  %412 = getelementptr inbounds [3 x float], ptr %3, i64 %368, i64 1
  %413 = load float, ptr %412, align 4, !tbaa !81
  %414 = fsub float %411, %413
  %415 = getelementptr inbounds [3 x float], ptr %1, i64 %368, i64 1
  %416 = load float, ptr %415, align 4, !tbaa !81
  %417 = tail call float @llvm.fmuladd.f32(float %130, float %414, float %416)
  store float %417, ptr %415, align 4, !tbaa !81
  %418 = getelementptr inbounds [3 x float], ptr %402, i64 0, i64 2
  %419 = load float, ptr %418, align 8, !tbaa !81
  %420 = getelementptr inbounds [3 x float], ptr %3, i64 %368, i64 2
  %421 = load float, ptr %420, align 4, !tbaa !81
  %422 = fsub float %419, %421
  %423 = getelementptr inbounds [3 x float], ptr %1, i64 %368, i64 2
  %424 = load float, ptr %423, align 4, !tbaa !81
  %425 = tail call float @llvm.fmuladd.f32(float %130, float %422, float %424)
  store float %425, ptr %423, align 4, !tbaa !81
  %426 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %11, i64 0, i64 %399, i64 %400, i64 %401, i32 1
  %427 = load float, ptr %426, align 4, !tbaa !146
  %428 = fcmp ogt float %427, 0.000000e+00
  br i1 %428, label %429, label %445

429:                                              ; preds = %398
  %430 = getelementptr inbounds [10 x [10 x [10 x %struct.HairGridVert]]], ptr %11, i64 0, i64 %399, i64 %400, i64 %401
  %431 = load float, ptr %430, align 16, !tbaa !81
  %432 = load float, ptr %404, align 4, !tbaa !81
  %433 = fsub float %431, %432
  %434 = tail call float @llvm.fmuladd.f32(float %133, float %433, float %409)
  store float %434, ptr %407, align 4, !tbaa !81
  %435 = getelementptr inbounds [3 x float], ptr %430, i64 0, i64 1
  %436 = load float, ptr %435, align 4, !tbaa !81
  %437 = load float, ptr %412, align 4, !tbaa !81
  %438 = fsub float %436, %437
  %439 = tail call float @llvm.fmuladd.f32(float %133, float %438, float %417)
  store float %439, ptr %415, align 4, !tbaa !81
  %440 = getelementptr inbounds [3 x float], ptr %430, i64 0, i64 2
  %441 = load float, ptr %440, align 8, !tbaa !81
  %442 = load float, ptr %420, align 4, !tbaa !81
  %443 = fsub float %441, %442
  %444 = tail call float @llvm.fmuladd.f32(float %133, float %443, float %425)
  store float %444, ptr %423, align 4, !tbaa !81
  br label %445

445:                                              ; preds = %429, %398, %367
  %446 = add nuw nsw i64 %368, 1
  %447 = icmp eq i64 %446, %326
  br i1 %447, label %448, label %367, !llvm.loop !160

448:                                              ; preds = %445, %320
  call void @free_collider_cache(ptr noundef nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 16000, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 16000, ptr nonnull %10) #9
  br label %449

449:                                              ; preds = %448, %121
  %450 = icmp eq i32 %26, 0
  br i1 %450, label %514, label %451

451:                                              ; preds = %449
  %452 = zext i32 %26 to i64
  br label %455

453:                                              ; preds = %455
  %454 = zext i32 %26 to i64
  br label %492

455:                                              ; preds = %451, %455
  %456 = phi i64 [ 0, %451 ], [ %490, %455 ]
  %457 = getelementptr inbounds [3 x float], ptr %1, i64 %456
  %458 = load float, ptr %457, align 4, !tbaa !81
  %459 = getelementptr inbounds float, ptr %457, i64 1
  %460 = load float, ptr %459, align 4, !tbaa !81
  %461 = getelementptr inbounds float, ptr %457, i64 2
  %462 = load float, ptr %461, align 4, !tbaa !81
  %463 = getelementptr inbounds %struct.fmatrix3x3, ptr %8, i64 %456
  %464 = load float, ptr %463, align 4, !tbaa !81
  %465 = getelementptr inbounds float, ptr %463, i64 1
  %466 = load float, ptr %465, align 4, !tbaa !81
  %467 = fmul float %460, %466
  %468 = call float @llvm.fmuladd.f32(float %464, float %458, float %467)
  %469 = getelementptr inbounds float, ptr %463, i64 2
  %470 = load float, ptr %469, align 4, !tbaa !81
  %471 = call float @llvm.fmuladd.f32(float %470, float %462, float %468)
  store float %471, ptr %457, align 4, !tbaa !81
  %472 = getelementptr inbounds [3 x float], ptr %463, i64 1
  %473 = load float, ptr %472, align 4, !tbaa !81
  %474 = getelementptr inbounds [3 x float], ptr %463, i64 1, i64 1
  %475 = load float, ptr %474, align 4, !tbaa !81
  %476 = fmul float %460, %475
  %477 = call float @llvm.fmuladd.f32(float %473, float %458, float %476)
  %478 = getelementptr inbounds [3 x float], ptr %463, i64 1, i64 2
  %479 = load float, ptr %478, align 4, !tbaa !81
  %480 = call float @llvm.fmuladd.f32(float %479, float %462, float %477)
  store float %480, ptr %459, align 4, !tbaa !81
  %481 = getelementptr inbounds [3 x float], ptr %463, i64 2
  %482 = load float, ptr %481, align 4, !tbaa !81
  %483 = getelementptr inbounds [3 x float], ptr %463, i64 2, i64 1
  %484 = load float, ptr %483, align 4, !tbaa !81
  %485 = fmul float %460, %484
  %486 = call float @llvm.fmuladd.f32(float %482, float %458, float %485)
  %487 = getelementptr inbounds [3 x float], ptr %463, i64 2, i64 2
  %488 = load float, ptr %487, align 4, !tbaa !81
  %489 = call float @llvm.fmuladd.f32(float %488, float %462, float %486)
  store float %489, ptr %461, align 4, !tbaa !81
  %490 = add nuw nsw i64 %456, 1
  %491 = icmp eq i64 %490, %452
  br i1 %491, label %453, label %455, !llvm.loop !161

492:                                              ; preds = %453, %492
  %493 = phi i64 [ 0, %453 ], [ %512, %492 ]
  %494 = getelementptr inbounds [3 x float], ptr %3, i64 %493
  %495 = load float, ptr %494, align 4, !tbaa !81
  %496 = getelementptr inbounds [3 x float], ptr %1, i64 %493
  %497 = load float, ptr %496, align 4, !tbaa !81
  %498 = fneg float %495
  %499 = call float @llvm.fmuladd.f32(float %498, float %22, float %497)
  store float %499, ptr %496, align 4, !tbaa !81
  %500 = getelementptr inbounds float, ptr %494, i64 1
  %501 = load float, ptr %500, align 4, !tbaa !81
  %502 = getelementptr inbounds float, ptr %496, i64 1
  %503 = load float, ptr %502, align 4, !tbaa !81
  %504 = fneg float %501
  %505 = call float @llvm.fmuladd.f32(float %504, float %22, float %503)
  store float %505, ptr %502, align 4, !tbaa !81
  %506 = getelementptr inbounds float, ptr %494, i64 2
  %507 = load float, ptr %506, align 4, !tbaa !81
  %508 = getelementptr inbounds float, ptr %496, i64 2
  %509 = load float, ptr %508, align 4, !tbaa !81
  %510 = fneg float %507
  %511 = call float @llvm.fmuladd.f32(float %510, float %22, float %509)
  store float %511, ptr %508, align 4, !tbaa !81
  %512 = add nuw nsw i64 %493, 1
  %513 = icmp eq i64 %512, %454
  br i1 %513, label %514, label %492, !llvm.loop !162

514:                                              ; preds = %492, %449
  %515 = icmp eq ptr %6, null
  br i1 %515, label %858, label %516

516:                                              ; preds = %514
  %517 = load i32, ptr %25, align 8, !tbaa !49
  %518 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %519 = zext i32 %517 to i64
  %520 = mul nuw nsw i64 %519, 12
  %521 = call ptr %518(i64 noundef %520, ptr noundef nonnull @.str.5) #9
  %522 = icmp eq ptr %521, null
  br i1 %522, label %523, label %525

523:                                              ; preds = %516
  %524 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  br label %525

525:                                              ; preds = %523, %516
  %526 = load i32, ptr %25, align 8, !tbaa !49
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %528, label %532

528:                                              ; preds = %532, %525
  %529 = getelementptr inbounds %struct.Cloth, ptr %17, i64 0, i32 4
  %530 = load i32, ptr %529, align 8, !tbaa !163
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %751, label %546

532:                                              ; preds = %525, %532
  %533 = phi i64 [ %542, %532 ], [ 0, %525 ]
  %534 = load ptr, ptr %28, align 8, !tbaa !116
  %535 = getelementptr inbounds [3 x float], ptr %2, i64 %533
  %536 = getelementptr inbounds [3 x float], ptr %3, i64 %533
  %537 = trunc i64 %533 to i32
  call void @pd_point_from_loc(ptr noundef %534, ptr noundef %535, ptr noundef %536, i32 noundef %537, ptr noundef nonnull %13) #9
  %538 = load ptr, ptr %18, align 8, !tbaa !93
  %539 = getelementptr inbounds %struct.ClothSimSettings, ptr %538, i64 0, i32 41
  %540 = load ptr, ptr %539, align 8, !tbaa !138
  %541 = getelementptr inbounds [3 x float], ptr %521, i64 %533
  call void @pdDoEffectors(ptr noundef nonnull %6, ptr noundef null, ptr noundef %540, ptr noundef nonnull %13, ptr noundef %541, ptr noundef null) #9
  %542 = add nuw nsw i64 %533, 1
  %543 = load i32, ptr %25, align 8, !tbaa !49
  %544 = zext i32 %543 to i64
  %545 = icmp ult i64 %542, %544
  br i1 %545, label %532, label %528, !llvm.loop !164

546:                                              ; preds = %528, %744
  %547 = phi i64 [ %745, %744 ], [ 0, %528 ]
  %548 = getelementptr inbounds %struct.MFace, ptr %24, i64 %547
  %549 = getelementptr inbounds %struct.MFace, ptr %24, i64 %547, i32 3
  %550 = load i32, ptr %549, align 4, !tbaa !165
  %551 = icmp eq i32 %550, 0
  %552 = select i1 %551, float 0x3F7B4E81C0000000, float 0x3F747AE140000000
  %553 = load i32, ptr %548, align 4, !tbaa !167
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds [3 x float], ptr %2, i64 %554
  %556 = getelementptr inbounds %struct.MFace, ptr %24, i64 %547, i32 1
  %557 = load i32, ptr %556, align 4, !tbaa !168
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds [3 x float], ptr %2, i64 %558
  %560 = getelementptr inbounds %struct.MFace, ptr %24, i64 %547, i32 2
  %561 = load i32, ptr %560, align 4, !tbaa !169
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds [3 x float], ptr %2, i64 %562
  %564 = load float, ptr %563, align 4, !tbaa !81
  %565 = getelementptr inbounds float, ptr %555, i64 1
  %566 = load float, ptr %565, align 4, !tbaa !81
  br i1 %551, label %602, label %567

567:                                              ; preds = %546
  %568 = zext i32 %550 to i64
  %569 = getelementptr inbounds [3 x float], ptr %2, i64 %568
  %570 = load float, ptr %555, align 4, !tbaa !81
  %571 = fsub float %570, %564
  %572 = getelementptr inbounds float, ptr %563, i64 1
  %573 = load float, ptr %572, align 4, !tbaa !81
  %574 = fsub float %566, %573
  %575 = getelementptr inbounds float, ptr %555, i64 2
  %576 = load float, ptr %575, align 4, !tbaa !81
  %577 = getelementptr inbounds float, ptr %563, i64 2
  %578 = load float, ptr %577, align 4, !tbaa !81
  %579 = fsub float %576, %578
  %580 = load float, ptr %559, align 4, !tbaa !81
  %581 = load float, ptr %569, align 4, !tbaa !81
  %582 = fsub float %580, %581
  %583 = getelementptr inbounds float, ptr %559, i64 1
  %584 = load float, ptr %583, align 4, !tbaa !81
  %585 = getelementptr inbounds float, ptr %569, i64 1
  %586 = load float, ptr %585, align 4, !tbaa !81
  %587 = fsub float %584, %586
  %588 = getelementptr inbounds float, ptr %559, i64 2
  %589 = load float, ptr %588, align 4, !tbaa !81
  %590 = getelementptr inbounds float, ptr %569, i64 2
  %591 = load float, ptr %590, align 4, !tbaa !81
  %592 = fsub float %589, %591
  %593 = fneg float %579
  %594 = fmul float %587, %593
  %595 = call float @llvm.fmuladd.f32(float %574, float %592, float %594)
  %596 = fneg float %571
  %597 = fmul float %592, %596
  %598 = call float @llvm.fmuladd.f32(float %579, float %582, float %597)
  %599 = fneg float %574
  %600 = fmul float %582, %599
  %601 = call float @llvm.fmuladd.f32(float %571, float %587, float %600)
  br label %630

602:                                              ; preds = %546
  %603 = load float, ptr %555, align 4, !tbaa !81
  %604 = load float, ptr %559, align 4, !tbaa !81
  %605 = fsub float %603, %604
  %606 = fsub float %604, %564
  %607 = getelementptr inbounds float, ptr %559, i64 1
  %608 = load float, ptr %607, align 4, !tbaa !81
  %609 = fsub float %566, %608
  %610 = getelementptr inbounds float, ptr %563, i64 1
  %611 = load float, ptr %610, align 4, !tbaa !81
  %612 = fsub float %608, %611
  %613 = getelementptr inbounds float, ptr %555, i64 2
  %614 = load float, ptr %613, align 4, !tbaa !81
  %615 = getelementptr inbounds float, ptr %559, i64 2
  %616 = load float, ptr %615, align 4, !tbaa !81
  %617 = fsub float %614, %616
  %618 = getelementptr inbounds float, ptr %563, i64 2
  %619 = load float, ptr %618, align 4, !tbaa !81
  %620 = fsub float %616, %619
  %621 = fneg float %617
  %622 = fmul float %612, %621
  %623 = call float @llvm.fmuladd.f32(float %609, float %620, float %622)
  %624 = fneg float %605
  %625 = fmul float %620, %624
  %626 = call float @llvm.fmuladd.f32(float %617, float %606, float %625)
  %627 = fneg float %609
  %628 = fmul float %606, %627
  %629 = call float @llvm.fmuladd.f32(float %605, float %612, float %628)
  br label %630

630:                                              ; preds = %602, %567
  %631 = phi float [ %623, %602 ], [ %595, %567 ]
  %632 = phi float [ %626, %602 ], [ %598, %567 ]
  %633 = phi float [ %629, %602 ], [ %601, %567 ]
  %634 = fmul float %632, %632
  %635 = call float @llvm.fmuladd.f32(float %631, float %631, float %634)
  %636 = call float @llvm.fmuladd.f32(float %633, float %633, float %635)
  %637 = fcmp ogt float %636, 0x38AA95A5C0000000
  br i1 %637, label %638, label %644

638:                                              ; preds = %630
  %639 = call float @sqrtf(float noundef %636) #9
  %640 = fdiv float 1.000000e+00, %639
  %641 = fmul float %631, %640
  %642 = fmul float %632, %640
  %643 = fmul float %633, %640
  br label %644

644:                                              ; preds = %630, %638
  %645 = phi float [ %641, %638 ], [ 0.000000e+00, %630 ]
  %646 = phi float [ %642, %638 ], [ 0.000000e+00, %630 ]
  %647 = phi float [ %643, %638 ], [ 0.000000e+00, %630 ]
  %648 = load i32, ptr %548, align 4, !tbaa !167
  %649 = zext i32 %648 to i64
  %650 = getelementptr inbounds [3 x float], ptr %521, i64 %649
  %651 = load float, ptr %650, align 4, !tbaa !81
  %652 = getelementptr inbounds float, ptr %650, i64 1
  %653 = load float, ptr %652, align 4, !tbaa !81
  %654 = fmul float %632, %653
  %655 = call float @llvm.fmuladd.f32(float %651, float %631, float %654)
  %656 = getelementptr inbounds float, ptr %650, i64 2
  %657 = load float, ptr %656, align 4, !tbaa !81
  %658 = call float @llvm.fmuladd.f32(float %657, float %633, float %655)
  %659 = fmul float %645, %658
  %660 = fmul float %646, %658
  %661 = fmul float %647, %658
  %662 = getelementptr inbounds [3 x float], ptr %1, i64 %649
  %663 = load float, ptr %662, align 4, !tbaa !81
  %664 = call float @llvm.fmuladd.f32(float %659, float %552, float %663)
  store float %664, ptr %662, align 4, !tbaa !81
  %665 = getelementptr inbounds [3 x float], ptr %1, i64 %649, i64 1
  %666 = load float, ptr %665, align 4, !tbaa !81
  %667 = call float @llvm.fmuladd.f32(float %660, float %552, float %666)
  store float %667, ptr %665, align 4, !tbaa !81
  %668 = getelementptr inbounds [3 x float], ptr %1, i64 %649, i64 2
  %669 = load float, ptr %668, align 4, !tbaa !81
  %670 = call float @llvm.fmuladd.f32(float %661, float %552, float %669)
  store float %670, ptr %668, align 4, !tbaa !81
  %671 = getelementptr inbounds %struct.MFace, ptr %24, i64 %547, i32 1
  %672 = load i32, ptr %671, align 4, !tbaa !168
  %673 = zext i32 %672 to i64
  %674 = getelementptr inbounds [3 x float], ptr %521, i64 %673
  %675 = load float, ptr %674, align 4, !tbaa !81
  %676 = getelementptr inbounds float, ptr %674, i64 1
  %677 = load float, ptr %676, align 4, !tbaa !81
  %678 = fmul float %632, %677
  %679 = call float @llvm.fmuladd.f32(float %675, float %631, float %678)
  %680 = getelementptr inbounds float, ptr %674, i64 2
  %681 = load float, ptr %680, align 4, !tbaa !81
  %682 = call float @llvm.fmuladd.f32(float %681, float %633, float %679)
  %683 = fmul float %645, %682
  %684 = fmul float %646, %682
  %685 = fmul float %647, %682
  %686 = getelementptr inbounds [3 x float], ptr %1, i64 %673
  %687 = load float, ptr %686, align 4, !tbaa !81
  %688 = call float @llvm.fmuladd.f32(float %683, float %552, float %687)
  store float %688, ptr %686, align 4, !tbaa !81
  %689 = getelementptr inbounds [3 x float], ptr %1, i64 %673, i64 1
  %690 = load float, ptr %689, align 4, !tbaa !81
  %691 = call float @llvm.fmuladd.f32(float %684, float %552, float %690)
  store float %691, ptr %689, align 4, !tbaa !81
  %692 = getelementptr inbounds [3 x float], ptr %1, i64 %673, i64 2
  %693 = load float, ptr %692, align 4, !tbaa !81
  %694 = call float @llvm.fmuladd.f32(float %685, float %552, float %693)
  store float %694, ptr %692, align 4, !tbaa !81
  %695 = getelementptr inbounds %struct.MFace, ptr %24, i64 %547, i32 2
  %696 = load i32, ptr %695, align 4, !tbaa !169
  %697 = zext i32 %696 to i64
  %698 = getelementptr inbounds [3 x float], ptr %521, i64 %697
  %699 = load float, ptr %698, align 4, !tbaa !81
  %700 = getelementptr inbounds float, ptr %698, i64 1
  %701 = load float, ptr %700, align 4, !tbaa !81
  %702 = fmul float %632, %701
  %703 = call float @llvm.fmuladd.f32(float %699, float %631, float %702)
  %704 = getelementptr inbounds float, ptr %698, i64 2
  %705 = load float, ptr %704, align 4, !tbaa !81
  %706 = call float @llvm.fmuladd.f32(float %705, float %633, float %703)
  %707 = fmul float %645, %706
  %708 = fmul float %646, %706
  %709 = fmul float %647, %706
  %710 = getelementptr inbounds [3 x float], ptr %1, i64 %697
  %711 = load float, ptr %710, align 4, !tbaa !81
  %712 = call float @llvm.fmuladd.f32(float %707, float %552, float %711)
  store float %712, ptr %710, align 4, !tbaa !81
  %713 = getelementptr inbounds [3 x float], ptr %1, i64 %697, i64 1
  %714 = load float, ptr %713, align 4, !tbaa !81
  %715 = call float @llvm.fmuladd.f32(float %708, float %552, float %714)
  store float %715, ptr %713, align 4, !tbaa !81
  %716 = getelementptr inbounds [3 x float], ptr %1, i64 %697, i64 2
  %717 = load float, ptr %716, align 4, !tbaa !81
  %718 = call float @llvm.fmuladd.f32(float %709, float %552, float %717)
  store float %718, ptr %716, align 4, !tbaa !81
  %719 = load i32, ptr %549, align 4, !tbaa !165
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %744, label %721

721:                                              ; preds = %644
  %722 = zext i32 %719 to i64
  %723 = getelementptr inbounds [3 x float], ptr %521, i64 %722
  %724 = load float, ptr %723, align 4, !tbaa !81
  %725 = getelementptr inbounds float, ptr %723, i64 1
  %726 = load float, ptr %725, align 4, !tbaa !81
  %727 = fmul float %632, %726
  %728 = call float @llvm.fmuladd.f32(float %724, float %631, float %727)
  %729 = getelementptr inbounds float, ptr %723, i64 2
  %730 = load float, ptr %729, align 4, !tbaa !81
  %731 = call float @llvm.fmuladd.f32(float %730, float %633, float %728)
  %732 = fmul float %645, %731
  %733 = fmul float %646, %731
  %734 = fmul float %647, %731
  %735 = getelementptr inbounds [3 x float], ptr %1, i64 %722
  %736 = load float, ptr %735, align 4, !tbaa !81
  %737 = call float @llvm.fmuladd.f32(float %732, float %552, float %736)
  store float %737, ptr %735, align 4, !tbaa !81
  %738 = getelementptr inbounds [3 x float], ptr %1, i64 %722, i64 1
  %739 = load float, ptr %738, align 4, !tbaa !81
  %740 = call float @llvm.fmuladd.f32(float %733, float %552, float %739)
  store float %740, ptr %738, align 4, !tbaa !81
  %741 = getelementptr inbounds [3 x float], ptr %1, i64 %722, i64 2
  %742 = load float, ptr %741, align 4, !tbaa !81
  %743 = call float @llvm.fmuladd.f32(float %734, float %552, float %742)
  store float %743, ptr %741, align 4, !tbaa !81
  br label %744

744:                                              ; preds = %721, %644
  %745 = add nuw nsw i64 %547, 1
  %746 = load i32, ptr %529, align 8, !tbaa !163
  %747 = zext i32 %746 to i64
  %748 = icmp ult i64 %745, %747
  br i1 %748, label %546, label %749, !llvm.loop !170

749:                                              ; preds = %744
  %750 = icmp eq i32 %746, 0
  br i1 %750, label %751, label %855

751:                                              ; preds = %528, %749
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, i8 0, i64 12, i1 false)
  %752 = getelementptr inbounds %struct.Cloth, ptr %17, i64 0, i32 1
  %753 = load ptr, ptr %752, align 8, !tbaa !47
  %754 = icmp eq ptr %753, null
  br i1 %754, label %854, label %755

755:                                              ; preds = %751
  %756 = getelementptr inbounds float, ptr %14, i64 1
  %757 = getelementptr inbounds float, ptr %14, i64 2
  %758 = getelementptr inbounds float, ptr %15, i64 1
  %759 = getelementptr inbounds float, ptr %15, i64 2
  br label %760

760:                                              ; preds = %755, %851
  %761 = phi ptr [ %753, %755 ], [ %852, %851 ]
  %762 = getelementptr inbounds %struct.LinkNode, ptr %761, i64 0, i32 1
  %763 = load ptr, ptr %762, align 8, !tbaa !83
  %764 = getelementptr inbounds %struct.ClothSpring, ptr %763, i64 0, i32 4
  %765 = load i32, ptr %764, align 4, !tbaa !171
  %766 = icmp eq i32 %765, 2
  br i1 %766, label %767, label %851

767:                                              ; preds = %760
  %768 = load i32, ptr %763, align 4, !tbaa !85
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds [3 x float], ptr %2, i64 %769
  %771 = getelementptr inbounds %struct.ClothSpring, ptr %763, i64 0, i32 1
  %772 = load i32, ptr %771, align 4, !tbaa !87
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds [3 x float], ptr %2, i64 %773
  %775 = load float, ptr %770, align 4, !tbaa !81
  %776 = load float, ptr %774, align 4, !tbaa !81
  %777 = fsub float %775, %776
  store float %777, ptr %14, align 4, !tbaa !81
  %778 = getelementptr inbounds float, ptr %770, i64 1
  %779 = load float, ptr %778, align 4, !tbaa !81
  %780 = getelementptr inbounds float, ptr %774, i64 1
  %781 = load float, ptr %780, align 4, !tbaa !81
  %782 = fsub float %779, %781
  store float %782, ptr %756, align 4, !tbaa !81
  %783 = getelementptr inbounds float, ptr %770, i64 2
  %784 = load float, ptr %783, align 4, !tbaa !81
  %785 = getelementptr inbounds float, ptr %774, i64 2
  %786 = load float, ptr %785, align 4, !tbaa !81
  %787 = fsub float %784, %786
  store float %787, ptr %757, align 4, !tbaa !81
  %788 = getelementptr inbounds [3 x float], ptr %521, i64 %769
  call void @project_v3_v3v3(ptr noundef nonnull %15, ptr noundef %788, ptr noundef nonnull %14) #9
  %789 = load i32, ptr %763, align 4, !tbaa !85
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds [3 x float], ptr %521, i64 %790
  %792 = load float, ptr %791, align 4, !tbaa !81
  %793 = load float, ptr %15, align 4, !tbaa !81
  %794 = fsub float %792, %793
  %795 = getelementptr inbounds float, ptr %791, i64 1
  %796 = load float, ptr %795, align 4, !tbaa !81
  %797 = load float, ptr %758, align 4, !tbaa !81
  %798 = fsub float %796, %797
  %799 = getelementptr inbounds float, ptr %791, i64 2
  %800 = load float, ptr %799, align 4, !tbaa !81
  %801 = load float, ptr %759, align 4, !tbaa !81
  %802 = fsub float %800, %801
  %803 = getelementptr inbounds [3 x float], ptr %1, i64 %790
  %804 = load float, ptr %803, align 4, !tbaa !81
  %805 = getelementptr inbounds %struct.ClothSpring, ptr %763, i64 0, i32 2
  %806 = load float, ptr %805, align 4, !tbaa !172
  %807 = fmul float %794, %806
  %808 = call float @llvm.fmuladd.f32(float %807, float 0x3F847AE140000000, float %804)
  store float %808, ptr %803, align 4, !tbaa !81
  %809 = getelementptr inbounds [3 x float], ptr %1, i64 %790, i64 1
  %810 = load float, ptr %809, align 4, !tbaa !81
  %811 = load float, ptr %805, align 4, !tbaa !172
  %812 = fmul float %798, %811
  %813 = call float @llvm.fmuladd.f32(float %812, float 0x3F847AE140000000, float %810)
  store float %813, ptr %809, align 4, !tbaa !81
  %814 = getelementptr inbounds [3 x float], ptr %1, i64 %790, i64 2
  %815 = load float, ptr %814, align 4, !tbaa !81
  %816 = load float, ptr %805, align 4, !tbaa !172
  %817 = fmul float %802, %816
  %818 = call float @llvm.fmuladd.f32(float %817, float 0x3F847AE140000000, float %815)
  store float %818, ptr %814, align 4, !tbaa !81
  %819 = load i32, ptr %771, align 4, !tbaa !87
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds [3 x float], ptr %521, i64 %820
  call void @project_v3_v3v3(ptr noundef nonnull %15, ptr noundef %821, ptr noundef nonnull %14) #9
  %822 = load i32, ptr %771, align 4, !tbaa !87
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds [3 x float], ptr %521, i64 %823
  %825 = load float, ptr %824, align 4, !tbaa !81
  %826 = load float, ptr %15, align 4, !tbaa !81
  %827 = fsub float %825, %826
  %828 = getelementptr inbounds float, ptr %824, i64 1
  %829 = load float, ptr %828, align 4, !tbaa !81
  %830 = load float, ptr %758, align 4, !tbaa !81
  %831 = fsub float %829, %830
  %832 = getelementptr inbounds float, ptr %824, i64 2
  %833 = load float, ptr %832, align 4, !tbaa !81
  %834 = load float, ptr %759, align 4, !tbaa !81
  %835 = fsub float %833, %834
  %836 = getelementptr inbounds [3 x float], ptr %1, i64 %823
  %837 = load float, ptr %836, align 4, !tbaa !81
  %838 = load float, ptr %805, align 4, !tbaa !172
  %839 = fmul float %827, %838
  %840 = call float @llvm.fmuladd.f32(float %839, float 0x3F847AE140000000, float %837)
  store float %840, ptr %836, align 4, !tbaa !81
  %841 = getelementptr inbounds [3 x float], ptr %1, i64 %823, i64 1
  %842 = load float, ptr %841, align 4, !tbaa !81
  %843 = load float, ptr %805, align 4, !tbaa !172
  %844 = fmul float %831, %843
  %845 = call float @llvm.fmuladd.f32(float %844, float 0x3F847AE140000000, float %842)
  store float %845, ptr %841, align 4, !tbaa !81
  %846 = getelementptr inbounds [3 x float], ptr %1, i64 %823, i64 2
  %847 = load float, ptr %846, align 4, !tbaa !81
  %848 = load float, ptr %805, align 4, !tbaa !172
  %849 = fmul float %835, %848
  %850 = call float @llvm.fmuladd.f32(float %849, float 0x3F847AE140000000, float %847)
  store float %850, ptr %846, align 4, !tbaa !81
  br label %851

851:                                              ; preds = %767, %760
  %852 = load ptr, ptr %761, align 8, !tbaa !47
  %853 = icmp eq ptr %852, null
  br i1 %853, label %854, label %760, !llvm.loop !173

854:                                              ; preds = %851, %751
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #9
  br label %855

855:                                              ; preds = %854, %749
  br i1 %522, label %858, label %856

856:                                              ; preds = %855
  %857 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %857(ptr noundef nonnull %521) #9
  br label %858

858:                                              ; preds = %856, %855, %514
  %859 = getelementptr inbounds %struct.Cloth, ptr %17, i64 0, i32 1
  %860 = load ptr, ptr %859, align 8, !tbaa !47
  %861 = icmp eq ptr %860, null
  br i1 %861, label %862, label %865

862:                                              ; preds = %1201, %858
  %863 = load ptr, ptr %859, align 8, !tbaa !47
  %864 = icmp eq ptr %863, null
  br i1 %864, label %1506, label %1204

865:                                              ; preds = %858, %1201
  %866 = phi ptr [ %1202, %1201 ], [ %860, %858 ]
  %867 = getelementptr inbounds %struct.LinkNode, ptr %866, i64 0, i32 1
  %868 = load ptr, ptr %867, align 8, !tbaa !83
  %869 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 5
  %870 = load i32, ptr %869, align 4, !tbaa !174
  %871 = and i32 %870, 2
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %873, label %1201

873:                                              ; preds = %865
  %874 = load ptr, ptr %16, align 8, !tbaa !42
  %875 = load ptr, ptr %874, align 8, !tbaa !45
  %876 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 2
  %877 = load float, ptr %876, align 4, !tbaa !172
  %878 = load ptr, ptr %18, align 8, !tbaa !93
  %879 = getelementptr inbounds %struct.ClothSimSettings, ptr %878, i64 0, i32 29
  %880 = load i32, ptr %879, align 8, !tbaa !97
  %881 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 8
  %882 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 8, i64 1
  %883 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 8, i64 2
  %884 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 6
  %885 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 6, i64 0, i64 1
  %886 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 6, i64 0, i64 2
  %887 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 6, i64 1
  %888 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 6, i64 1, i64 1
  %889 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 6, i64 1, i64 2
  %890 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 6, i64 2
  %891 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 6, i64 2, i64 1
  %892 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 6, i64 2, i64 2
  %893 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 7
  %894 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 7, i64 0, i64 1
  %895 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 7, i64 0, i64 2
  %896 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 7, i64 1
  %897 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 7, i64 1, i64 1
  %898 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 7, i64 1, i64 2
  %899 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 7, i64 2
  %900 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 7, i64 2, i64 1
  %901 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 7, i64 2, i64 2
  %902 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %884, i8 0, i64 84, i1 false)
  %903 = load i32, ptr %902, align 4, !tbaa !87
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds [3 x float], ptr %2, i64 %904
  %906 = load i32, ptr %868, align 4, !tbaa !85
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds [3 x float], ptr %2, i64 %907
  %909 = load float, ptr %905, align 4, !tbaa !81
  %910 = load float, ptr %908, align 4, !tbaa !81
  %911 = fsub float %909, %910
  %912 = getelementptr inbounds float, ptr %905, i64 1
  %913 = load float, ptr %912, align 4, !tbaa !81
  %914 = getelementptr inbounds float, ptr %908, i64 1
  %915 = load float, ptr %914, align 4, !tbaa !81
  %916 = fsub float %913, %915
  %917 = getelementptr inbounds float, ptr %905, i64 2
  %918 = load float, ptr %917, align 4, !tbaa !81
  %919 = getelementptr inbounds float, ptr %908, i64 2
  %920 = load float, ptr %919, align 4, !tbaa !81
  %921 = fsub float %918, %920
  %922 = getelementptr inbounds [3 x float], ptr %3, i64 %904
  %923 = getelementptr inbounds [3 x float], ptr %3, i64 %907
  %924 = load float, ptr %922, align 4, !tbaa !81
  %925 = load float, ptr %923, align 4, !tbaa !81
  %926 = fsub float %924, %925
  %927 = getelementptr inbounds float, ptr %922, i64 1
  %928 = load float, ptr %927, align 4, !tbaa !81
  %929 = getelementptr inbounds float, ptr %923, i64 1
  %930 = load float, ptr %929, align 4, !tbaa !81
  %931 = fsub float %928, %930
  %932 = getelementptr inbounds float, ptr %922, i64 2
  %933 = load float, ptr %932, align 4, !tbaa !81
  %934 = getelementptr inbounds float, ptr %923, i64 2
  %935 = load float, ptr %934, align 4, !tbaa !81
  %936 = fsub float %933, %935
  %937 = fmul float %916, %916
  %938 = call float @llvm.fmuladd.f32(float %911, float %911, float %937)
  %939 = call float @llvm.fmuladd.f32(float %921, float %921, float %938)
  %940 = call float @sqrtf(float noundef %939) #9
  %941 = load i32, ptr %869, align 4, !tbaa !174
  %942 = and i32 %941, -5
  store i32 %942, ptr %869, align 4, !tbaa !174
  %943 = fcmp ogt float %940, 0x3E80000000000000
  %944 = fdiv float 1.000000e+00, %940
  %945 = select i1 %943, float %944, float 0.000000e+00
  %946 = fmul float %911, %945
  %947 = fmul float %916, %945
  %948 = fmul float %921, %945
  %949 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 4
  %950 = load i32, ptr %949, align 4, !tbaa !171
  %951 = and i32 %950, 38
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %1051, label %953

953:                                              ; preds = %873
  %954 = and i32 %880, 8192
  %955 = fcmp ogt float %940, %877
  %956 = icmp ne i32 %954, 0
  %957 = select i1 %955, i1 true, i1 %956
  br i1 %957, label %958, label %1201

958:                                              ; preds = %953
  %959 = or i32 %941, 4
  store i32 %959, ptr %869, align 4, !tbaa !174
  %960 = load ptr, ptr %18, align 8, !tbaa !93
  %961 = getelementptr inbounds %struct.ClothSimSettings, ptr %960, i64 0, i32 7
  %962 = load float, ptr %961, align 8, !tbaa !175
  %963 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 9
  %964 = load float, ptr %963, align 4, !tbaa !176
  %965 = getelementptr inbounds %struct.ClothSimSettings, ptr %960, i64 0, i32 11
  %966 = load float, ptr %965, align 8, !tbaa !177
  %967 = fsub float %966, %962
  %968 = call float @llvm.fabs.f32(float %967)
  %969 = call float @llvm.fmuladd.f32(float %964, float %968, float %962)
  %970 = getelementptr inbounds %struct.ClothSimSettings, ptr %960, i64 0, i32 14
  %971 = load float, ptr %970, align 4, !tbaa !178
  %972 = fadd float %971, 0x3E80000000000000
  %973 = fdiv float %969, %972
  %974 = and i32 %950, 32
  %975 = icmp eq i32 %974, 0
  %976 = fsub float %940, %877
  %977 = fmul float %976, %973
  br i1 %975, label %983, label %978

978:                                              ; preds = %958
  %979 = getelementptr inbounds %struct.ClothSimSettings, ptr %960, i64 0, i32 13
  %980 = load float, ptr %979, align 8, !tbaa !179
  %981 = fcmp ogt float %977, %980
  %982 = select i1 %981, float %980, float %977
  br label %983

983:                                              ; preds = %958, %978
  %984 = phi float [ %982, %978 ], [ %977, %958 ]
  %985 = fmul float %946, %984
  %986 = fmul float %947, %984
  %987 = fmul float %948, %984
  %988 = load float, ptr %881, align 4, !tbaa !81
  %989 = fadd float %988, %985
  store float %989, ptr %881, align 4, !tbaa !81
  %990 = load float, ptr %882, align 4, !tbaa !81
  %991 = fadd float %986, %990
  store float %991, ptr %882, align 4, !tbaa !81
  %992 = load float, ptr %883, align 4, !tbaa !81
  %993 = fadd float %987, %992
  store float %993, ptr %883, align 4, !tbaa !81
  %994 = getelementptr inbounds %struct.ClothSimSettings, ptr %960, i64 0, i32 2
  %995 = load float, ptr %994, align 4, !tbaa !180
  %996 = fmul float %931, %947
  %997 = call float @llvm.fmuladd.f32(float %926, float %946, float %996)
  %998 = call float @llvm.fmuladd.f32(float %936, float %948, float %997)
  %999 = fmul float %998, %995
  %1000 = fmul float %946, %999
  %1001 = fmul float %947, %999
  %1002 = fmul float %948, %999
  %1003 = fadd float %989, %1000
  store float %1003, ptr %881, align 4, !tbaa !81
  %1004 = fadd float %991, %1001
  store float %1004, ptr %882, align 4, !tbaa !81
  %1005 = fadd float %993, %1002
  store float %1005, ptr %883, align 4, !tbaa !81
  %1006 = fmul float %946, %946
  store float %1006, ptr %884, align 4, !tbaa !81
  %1007 = fmul float %947, %946
  store float %1007, ptr %885, align 4, !tbaa !81
  %1008 = fmul float %948, %946
  store float %1008, ptr %886, align 4, !tbaa !81
  store float %1007, ptr %887, align 4, !tbaa !81
  %1009 = fmul float %947, %947
  store float %1009, ptr %888, align 4, !tbaa !81
  %1010 = fmul float %948, %947
  store float %1010, ptr %889, align 4, !tbaa !81
  store float %1008, ptr %890, align 4, !tbaa !81
  store float %1010, ptr %891, align 4, !tbaa !81
  %1011 = fmul float %948, %948
  store float %1011, ptr %892, align 4, !tbaa !81
  %1012 = fsub float 1.000000e+00, %1006
  store float %1012, ptr %884, align 4, !tbaa !81
  %1013 = fsub float 0.000000e+00, %1007
  store float %1013, ptr %885, align 4, !tbaa !81
  %1014 = fsub float 0.000000e+00, %1008
  store float %1014, ptr %886, align 4, !tbaa !81
  %1015 = fsub float 0.000000e+00, %1007
  store float %1015, ptr %887, align 4, !tbaa !81
  %1016 = fsub float 1.000000e+00, %1009
  store float %1016, ptr %888, align 4, !tbaa !81
  %1017 = fsub float 0.000000e+00, %1010
  store float %1017, ptr %889, align 4, !tbaa !81
  %1018 = fsub float 0.000000e+00, %1008
  store float %1018, ptr %890, align 4, !tbaa !81
  %1019 = fsub float 0.000000e+00, %1010
  store float %1019, ptr %891, align 4, !tbaa !81
  %1020 = fsub float 1.000000e+00, %1011
  store float %1020, ptr %892, align 4, !tbaa !81
  %1021 = fdiv float %877, %940
  %1022 = fmul float %1021, %1012
  store float %1022, ptr %884, align 4, !tbaa !81
  %1023 = fmul float %1021, %1013
  store float %1023, ptr %885, align 4, !tbaa !81
  %1024 = fmul float %1021, %1014
  store float %1024, ptr %886, align 4, !tbaa !81
  %1025 = fmul float %1021, %1015
  store float %1025, ptr %887, align 4, !tbaa !81
  %1026 = fmul float %1021, %1016
  store float %1026, ptr %888, align 4, !tbaa !81
  %1027 = fmul float %1021, %1017
  store float %1027, ptr %889, align 4, !tbaa !81
  %1028 = fmul float %1021, %1018
  store float %1028, ptr %890, align 4, !tbaa !81
  %1029 = fmul float %1021, %1019
  store float %1029, ptr %891, align 4, !tbaa !81
  %1030 = fmul float %1021, %1020
  store float %1030, ptr %892, align 4, !tbaa !81
  %1031 = fadd float %1022, -1.000000e+00
  store float %1031, ptr %884, align 4, !tbaa !81
  store float %1023, ptr %885, align 4, !tbaa !81
  store float %1024, ptr %886, align 4, !tbaa !81
  store float %1025, ptr %887, align 4, !tbaa !81
  %1032 = fadd float %1026, -1.000000e+00
  store float %1032, ptr %888, align 4, !tbaa !81
  store float %1027, ptr %889, align 4, !tbaa !81
  store float %1028, ptr %890, align 4, !tbaa !81
  store float %1029, ptr %891, align 4, !tbaa !81
  %1033 = fadd float %1030, -1.000000e+00
  store float %1033, ptr %892, align 4, !tbaa !81
  %1034 = fneg float %973
  %1035 = fmul float %1031, %1034
  store float %1035, ptr %884, align 4, !tbaa !81
  %1036 = fmul float %1023, %1034
  store float %1036, ptr %885, align 4, !tbaa !81
  %1037 = fmul float %1024, %1034
  store float %1037, ptr %886, align 4, !tbaa !81
  %1038 = fmul float %1025, %1034
  store float %1038, ptr %887, align 4, !tbaa !81
  %1039 = fmul float %1032, %1034
  store float %1039, ptr %888, align 4, !tbaa !81
  %1040 = fmul float %1027, %1034
  store float %1040, ptr %889, align 4, !tbaa !81
  %1041 = fmul float %1028, %1034
  store float %1041, ptr %890, align 4, !tbaa !81
  %1042 = fmul float %1029, %1034
  store float %1042, ptr %891, align 4, !tbaa !81
  %1043 = fmul float %1033, %1034
  store float %1043, ptr %892, align 4, !tbaa !81
  %1044 = load float, ptr %994, align 4, !tbaa !180
  store float %1006, ptr %893, align 4, !tbaa !81
  store float %1007, ptr %894, align 4, !tbaa !81
  store float %1008, ptr %895, align 4, !tbaa !81
  store float %1007, ptr %896, align 4, !tbaa !81
  store float %1009, ptr %897, align 4, !tbaa !81
  store float %1010, ptr %898, align 4, !tbaa !81
  store float %1008, ptr %899, align 4, !tbaa !81
  store float %1010, ptr %900, align 4, !tbaa !81
  store float %1011, ptr %901, align 4, !tbaa !81
  %1045 = fmul float %1006, %1044
  store float %1045, ptr %893, align 4, !tbaa !81
  %1046 = fmul float %1007, %1044
  store float %1046, ptr %894, align 4, !tbaa !81
  %1047 = fmul float %1008, %1044
  store float %1047, ptr %895, align 4, !tbaa !81
  store float %1046, ptr %896, align 4, !tbaa !81
  %1048 = fmul float %1009, %1044
  store float %1048, ptr %897, align 4, !tbaa !81
  %1049 = fmul float %1010, %1044
  store float %1049, ptr %898, align 4, !tbaa !81
  store float %1047, ptr %899, align 4, !tbaa !81
  store float %1049, ptr %900, align 4, !tbaa !81
  %1050 = fmul float %1011, %1044
  store float %1050, ptr %901, align 4, !tbaa !81
  br label %1201

1051:                                             ; preds = %873
  %1052 = and i32 %950, 16
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1129, label %1054

1054:                                             ; preds = %1051
  %1055 = or i32 %941, 4
  store i32 %1055, ptr %869, align 4, !tbaa !174
  %1056 = load i32, ptr %868, align 4, !tbaa !85
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds %struct.ClothVertex, ptr %875, i64 %1057, i32 2
  %1059 = getelementptr inbounds %struct.ClothVertex, ptr %875, i64 %1057, i32 4
  %1060 = load float, ptr %1058, align 4, !tbaa !81
  %1061 = load float, ptr %1059, align 4, !tbaa !81
  %1062 = fsub float %1060, %1061
  %1063 = getelementptr inbounds float, ptr %1058, i64 1
  %1064 = load float, ptr %1063, align 4, !tbaa !81
  %1065 = getelementptr inbounds float, ptr %1059, i64 1
  %1066 = load float, ptr %1065, align 4, !tbaa !81
  %1067 = fsub float %1064, %1066
  %1068 = getelementptr inbounds float, ptr %1058, i64 2
  %1069 = load float, ptr %1068, align 4, !tbaa !81
  %1070 = getelementptr inbounds float, ptr %1059, i64 2
  %1071 = load float, ptr %1070, align 4, !tbaa !81
  %1072 = fsub float %1069, %1071
  %1073 = fmul float %1062, %7
  %1074 = fmul float %1067, %7
  %1075 = fmul float %1072, %7
  %1076 = fadd float %1061, %1073
  %1077 = getelementptr inbounds %struct.ClothVertex, ptr %875, i64 %1057, i32 4, i64 1
  %1078 = load float, ptr %1077, align 4, !tbaa !81
  %1079 = fadd float %1074, %1078
  %1080 = getelementptr inbounds %struct.ClothVertex, ptr %875, i64 %1057, i32 4, i64 2
  %1081 = load float, ptr %1080, align 4, !tbaa !81
  %1082 = fadd float %1075, %1081
  %1083 = getelementptr inbounds [3 x float], ptr %2, i64 %1057
  %1084 = load float, ptr %1083, align 4, !tbaa !81
  %1085 = fsub float %1084, %1076
  %1086 = getelementptr inbounds float, ptr %1083, i64 1
  %1087 = load float, ptr %1086, align 4, !tbaa !81
  %1088 = fsub float %1087, %1079
  %1089 = getelementptr inbounds float, ptr %1083, i64 2
  %1090 = load float, ptr %1089, align 4, !tbaa !81
  %1091 = fsub float %1090, %1082
  %1092 = load ptr, ptr %18, align 8, !tbaa !93
  %1093 = getelementptr inbounds %struct.ClothSimSettings, ptr %1092, i64 0, i32 21
  %1094 = load float, ptr %1093, align 8, !tbaa !181
  %1095 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 9
  %1096 = load float, ptr %1095, align 4, !tbaa !176
  %1097 = getelementptr inbounds %struct.ClothSimSettings, ptr %1092, i64 0, i32 11
  %1098 = load float, ptr %1097, align 8, !tbaa !177
  %1099 = fsub float %1098, %1094
  %1100 = call float @llvm.fabs.f32(float %1099)
  %1101 = call float @llvm.fmuladd.f32(float %1096, float %1100, float %1094)
  %1102 = getelementptr inbounds %struct.ClothVertex, ptr %875, i64 %1057, i32 9
  %1103 = load float, ptr %1102, align 4, !tbaa !182
  %1104 = getelementptr inbounds %struct.ClothSimSettings, ptr %1092, i64 0, i32 14
  %1105 = load float, ptr %1104, align 4, !tbaa !178
  %1106 = fadd float %1105, 0x3E80000000000000
  %1107 = load float, ptr %881, align 4, !tbaa !81
  %1108 = fneg float %1103
  %1109 = fmul float %1101, %1108
  %1110 = fdiv float %1109, %1106
  %1111 = call float @llvm.fmuladd.f32(float %1085, float %1110, float %1107)
  store float %1111, ptr %881, align 4, !tbaa !81
  %1112 = load float, ptr %882, align 4, !tbaa !81
  %1113 = call float @llvm.fmuladd.f32(float %1088, float %1110, float %1112)
  store float %1113, ptr %882, align 4, !tbaa !81
  %1114 = load float, ptr %883, align 4, !tbaa !81
  %1115 = call float @llvm.fmuladd.f32(float %1091, float %1110, float %1114)
  store float %1115, ptr %883, align 4, !tbaa !81
  %1116 = getelementptr inbounds %struct.ClothSimSettings, ptr %1092, i64 0, i32 22
  %1117 = load float, ptr %1116, align 4, !tbaa !183
  %1118 = fmul float %1117, 0x3F847AE140000000
  %1119 = fmul float %931, %947
  %1120 = call float @llvm.fmuladd.f32(float %926, float %946, float %1119)
  %1121 = call float @llvm.fmuladd.f32(float %936, float %948, float %1120)
  %1122 = fmul float %1121, %1118
  %1123 = fmul float %946, %1122
  %1124 = fmul float %947, %1122
  %1125 = fmul float %948, %1122
  %1126 = fadd float %1111, %1123
  store float %1126, ptr %881, align 4, !tbaa !81
  %1127 = fadd float %1113, %1124
  store float %1127, ptr %882, align 4, !tbaa !81
  %1128 = fadd float %1115, %1125
  store float %1128, ptr %883, align 4, !tbaa !81
  br label %1201

1129:                                             ; preds = %1051
  %1130 = fcmp olt float %940, %877
  br i1 %1130, label %1131, label %1201

1131:                                             ; preds = %1129
  %1132 = or i32 %941, 4
  store i32 %1132, ptr %869, align 4, !tbaa !174
  %1133 = load ptr, ptr %18, align 8, !tbaa !93
  %1134 = getelementptr inbounds %struct.ClothSimSettings, ptr %1133, i64 0, i32 9
  %1135 = load float, ptr %1134, align 8, !tbaa !184
  %1136 = getelementptr inbounds %struct.ClothSpring, ptr %868, i64 0, i32 9
  %1137 = load float, ptr %1136, align 4, !tbaa !176
  %1138 = getelementptr inbounds %struct.ClothSimSettings, ptr %1133, i64 0, i32 10
  %1139 = load float, ptr %1138, align 4, !tbaa !185
  %1140 = fsub float %1139, %1135
  %1141 = call float @llvm.fabs.f32(float %1140)
  %1142 = call float @llvm.fmuladd.f32(float %1137, float %1141, float %1135)
  %1143 = getelementptr inbounds %struct.ClothSimSettings, ptr %1133, i64 0, i32 14
  %1144 = load float, ptr %1143, align 4, !tbaa !178
  %1145 = fadd float %1144, 0x3E80000000000000
  %1146 = fmul float %1145, 2.000000e+01
  %1147 = fdiv float %1142, %1146
  %1148 = fdiv float %940, %877
  %1149 = call float @powf(float noundef %1148, float noundef 4.000000e+00) #9
  %1150 = call float @powf(float noundef %1148, float noundef 3.000000e+00) #9
  %1151 = fmul float %1150, 0x404118B440000000
  %1152 = call float @llvm.fmuladd.f32(float %1149, float 0xC02714FE00000000, float %1151)
  %1153 = fmul float %1148, %1148
  %1154 = call float @llvm.fmuladd.f32(float %1153, float 0xC0438A9FC0000000, float %1152)
  %1155 = call float @llvm.fmuladd.f32(float %1148, float 0x40371DB220000000, float %1154)
  %1156 = fadd float %1155, 0xC0236D0E60000000
  %1157 = fmul float %1147, %1156
  %1158 = fsub float %940, %877
  %1159 = fmul float %1158, %1147
  %1160 = fcmp olt float %1157, %1159
  %1161 = select i1 %1160, float %1159, float %1157
  %1162 = fmul float %946, %1161
  %1163 = fmul float %947, %1161
  %1164 = fmul float %948, %1161
  %1165 = load float, ptr %881, align 4, !tbaa !81
  %1166 = fadd float %1165, %1162
  store float %1166, ptr %881, align 4, !tbaa !81
  %1167 = load float, ptr %882, align 4, !tbaa !81
  %1168 = fadd float %1167, %1163
  store float %1168, ptr %882, align 4, !tbaa !81
  %1169 = load float, ptr %883, align 4, !tbaa !81
  %1170 = fadd float %1169, %1164
  store float %1170, ptr %883, align 4, !tbaa !81
  %1171 = call float @powf(float noundef %1148, float noundef 4.000000e+00) #9
  %1172 = call float @powf(float noundef %1148, float noundef 3.000000e+00) #9
  %1173 = fmul float %1172, 0x404118B440000000
  %1174 = call float @llvm.fmuladd.f32(float %1171, float 0xC02714FE00000000, float %1173)
  %1175 = call float @llvm.fmuladd.f32(float %1153, float 0xC0438A9FC0000000, float %1174)
  %1176 = call float @llvm.fmuladd.f32(float %1148, float 0x40371DB220000000, float %1175)
  %1177 = fadd float %1176, 0xC0236D0E60000000
  %1178 = fmul float %1147, %1177
  %1179 = fcmp olt float %1178, %1159
  br i1 %1179, label %1187, label %1180

1180:                                             ; preds = %1131
  %1181 = call float @powf(float noundef %1148, float noundef 3.000000e+00) #9
  %1182 = fmul float %1153, 0x4059A50E60000000
  %1183 = call float @llvm.fmuladd.f32(float %1181, float 0xC04714FE00000000, float %1182)
  %1184 = call float @llvm.fmuladd.f32(float %1148, float 0xC0538A9FC0000000, float %1183)
  %1185 = fadd float %1184, 0x40371DB220000000
  %1186 = fmul float %1147, %1185
  br label %1187

1187:                                             ; preds = %1180, %1131
  %1188 = phi float [ %1186, %1180 ], [ %1147, %1131 ]
  %1189 = fmul float %946, %946
  store float %1189, ptr %884, align 4, !tbaa !81
  %1190 = fmul float %947, %946
  store float %1190, ptr %885, align 4, !tbaa !81
  %1191 = fmul float %948, %946
  store float %1191, ptr %886, align 4, !tbaa !81
  store float %1190, ptr %887, align 4, !tbaa !81
  %1192 = fmul float %947, %947
  store float %1192, ptr %888, align 4, !tbaa !81
  %1193 = fmul float %948, %947
  store float %1193, ptr %889, align 4, !tbaa !81
  store float %1191, ptr %890, align 4, !tbaa !81
  store float %1193, ptr %891, align 4, !tbaa !81
  %1194 = fmul float %948, %948
  store float %1194, ptr %892, align 4, !tbaa !81
  %1195 = fmul float %1189, %1188
  store float %1195, ptr %884, align 4, !tbaa !81
  %1196 = fmul float %1190, %1188
  store float %1196, ptr %885, align 4, !tbaa !81
  %1197 = fmul float %1191, %1188
  store float %1197, ptr %886, align 4, !tbaa !81
  store float %1196, ptr %887, align 4, !tbaa !81
  %1198 = fmul float %1192, %1188
  store float %1198, ptr %888, align 4, !tbaa !81
  %1199 = fmul float %1193, %1188
  store float %1199, ptr %889, align 4, !tbaa !81
  store float %1197, ptr %890, align 4, !tbaa !81
  store float %1199, ptr %891, align 4, !tbaa !81
  %1200 = fmul float %1194, %1188
  store float %1200, ptr %892, align 4, !tbaa !81
  br label %1201

1201:                                             ; preds = %1187, %1129, %1054, %983, %953, %865
  %1202 = load ptr, ptr %866, align 8, !tbaa !47
  %1203 = icmp eq ptr %1202, null
  br i1 %1203, label %862, label %865, !llvm.loop !186

1204:                                             ; preds = %862, %1503
  %1205 = phi ptr [ %1504, %1503 ], [ %863, %862 ]
  %1206 = getelementptr inbounds %struct.LinkNode, ptr %1205, i64 0, i32 1
  %1207 = load ptr, ptr %1206, align 8, !tbaa !83
  %1208 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 5
  %1209 = load i32, ptr %1208, align 4, !tbaa !174
  %1210 = and i32 %1209, 6
  %1211 = icmp eq i32 %1210, 4
  br i1 %1211, label %1212, label %1503

1212:                                             ; preds = %1204
  %1213 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 4
  %1214 = load i32, ptr %1213, align 4, !tbaa !171
  %1215 = and i32 %1214, 8
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1217, label %1343

1217:                                             ; preds = %1212
  %1218 = load i32, ptr %1207, align 4, !tbaa !85
  %1219 = sext i32 %1218 to i64
  %1220 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %1219
  %1221 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 7
  %1222 = load float, ptr %1220, align 4, !tbaa !81
  %1223 = load float, ptr %1221, align 4, !tbaa !81
  %1224 = fsub float %1222, %1223
  store float %1224, ptr %1220, align 4, !tbaa !81
  %1225 = getelementptr inbounds float, ptr %1220, i64 1
  %1226 = load float, ptr %1225, align 4, !tbaa !81
  %1227 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 7, i64 0, i64 1
  %1228 = load float, ptr %1227, align 4, !tbaa !81
  %1229 = fsub float %1226, %1228
  store float %1229, ptr %1225, align 4, !tbaa !81
  %1230 = getelementptr inbounds float, ptr %1220, i64 2
  %1231 = load float, ptr %1230, align 4, !tbaa !81
  %1232 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 7, i64 0, i64 2
  %1233 = load float, ptr %1232, align 4, !tbaa !81
  %1234 = fsub float %1231, %1233
  store float %1234, ptr %1230, align 4, !tbaa !81
  %1235 = getelementptr inbounds [3 x float], ptr %1220, i64 1
  %1236 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 7, i64 1
  %1237 = load float, ptr %1235, align 4, !tbaa !81
  %1238 = load float, ptr %1236, align 4, !tbaa !81
  %1239 = fsub float %1237, %1238
  store float %1239, ptr %1235, align 4, !tbaa !81
  %1240 = getelementptr inbounds [3 x float], ptr %1220, i64 1, i64 1
  %1241 = load float, ptr %1240, align 4, !tbaa !81
  %1242 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 7, i64 1, i64 1
  %1243 = load float, ptr %1242, align 4, !tbaa !81
  %1244 = fsub float %1241, %1243
  store float %1244, ptr %1240, align 4, !tbaa !81
  %1245 = getelementptr inbounds [3 x float], ptr %1220, i64 1, i64 2
  %1246 = load float, ptr %1245, align 4, !tbaa !81
  %1247 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 7, i64 1, i64 2
  %1248 = load float, ptr %1247, align 4, !tbaa !81
  %1249 = fsub float %1246, %1248
  store float %1249, ptr %1245, align 4, !tbaa !81
  %1250 = getelementptr inbounds [3 x float], ptr %1220, i64 2
  %1251 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 7, i64 2
  %1252 = load float, ptr %1250, align 4, !tbaa !81
  %1253 = load float, ptr %1251, align 4, !tbaa !81
  %1254 = fsub float %1252, %1253
  store float %1254, ptr %1250, align 4, !tbaa !81
  %1255 = getelementptr inbounds [3 x float], ptr %1220, i64 2, i64 1
  %1256 = load float, ptr %1255, align 4, !tbaa !81
  %1257 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 7, i64 2, i64 1
  %1258 = load float, ptr %1257, align 4, !tbaa !81
  %1259 = fsub float %1256, %1258
  store float %1259, ptr %1255, align 4, !tbaa !81
  %1260 = getelementptr inbounds [3 x float], ptr %1220, i64 2, i64 2
  %1261 = load float, ptr %1260, align 4, !tbaa !81
  %1262 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 7, i64 2, i64 2
  %1263 = load float, ptr %1262, align 4, !tbaa !81
  %1264 = fsub float %1261, %1263
  store float %1264, ptr %1260, align 4, !tbaa !81
  %1265 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 1
  %1266 = load i32, ptr %1265, align 4, !tbaa !87
  %1267 = sext i32 %1266 to i64
  %1268 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %1267
  %1269 = load float, ptr %1268, align 4, !tbaa !81
  %1270 = load float, ptr %1221, align 4, !tbaa !81
  %1271 = fsub float %1269, %1270
  store float %1271, ptr %1268, align 4, !tbaa !81
  %1272 = getelementptr inbounds float, ptr %1268, i64 1
  %1273 = load float, ptr %1272, align 4, !tbaa !81
  %1274 = load float, ptr %1227, align 4, !tbaa !81
  %1275 = fsub float %1273, %1274
  store float %1275, ptr %1272, align 4, !tbaa !81
  %1276 = getelementptr inbounds float, ptr %1268, i64 2
  %1277 = load float, ptr %1276, align 4, !tbaa !81
  %1278 = load float, ptr %1232, align 4, !tbaa !81
  %1279 = fsub float %1277, %1278
  store float %1279, ptr %1276, align 4, !tbaa !81
  %1280 = getelementptr inbounds [3 x float], ptr %1268, i64 1
  %1281 = load float, ptr %1280, align 4, !tbaa !81
  %1282 = load float, ptr %1236, align 4, !tbaa !81
  %1283 = fsub float %1281, %1282
  store float %1283, ptr %1280, align 4, !tbaa !81
  %1284 = getelementptr inbounds [3 x float], ptr %1268, i64 1, i64 1
  %1285 = load float, ptr %1284, align 4, !tbaa !81
  %1286 = load float, ptr %1242, align 4, !tbaa !81
  %1287 = fsub float %1285, %1286
  store float %1287, ptr %1284, align 4, !tbaa !81
  %1288 = getelementptr inbounds [3 x float], ptr %1268, i64 1, i64 2
  %1289 = load float, ptr %1288, align 4, !tbaa !81
  %1290 = load float, ptr %1247, align 4, !tbaa !81
  %1291 = fsub float %1289, %1290
  store float %1291, ptr %1288, align 4, !tbaa !81
  %1292 = getelementptr inbounds [3 x float], ptr %1268, i64 2
  %1293 = load float, ptr %1292, align 4, !tbaa !81
  %1294 = load float, ptr %1251, align 4, !tbaa !81
  %1295 = fsub float %1293, %1294
  store float %1295, ptr %1292, align 4, !tbaa !81
  %1296 = getelementptr inbounds [3 x float], ptr %1268, i64 2, i64 1
  %1297 = load float, ptr %1296, align 4, !tbaa !81
  %1298 = load float, ptr %1257, align 4, !tbaa !81
  %1299 = fsub float %1297, %1298
  store float %1299, ptr %1296, align 4, !tbaa !81
  %1300 = getelementptr inbounds [3 x float], ptr %1268, i64 2, i64 2
  %1301 = load float, ptr %1300, align 4, !tbaa !81
  %1302 = load float, ptr %1262, align 4, !tbaa !81
  %1303 = fsub float %1301, %1302
  store float %1303, ptr %1300, align 4, !tbaa !81
  %1304 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 3
  %1305 = load i32, ptr %1304, align 4, !tbaa !88
  %1306 = sext i32 %1305 to i64
  %1307 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %1306
  %1308 = load float, ptr %1307, align 4, !tbaa !81
  %1309 = load float, ptr %1221, align 4, !tbaa !81
  %1310 = fadd float %1308, %1309
  store float %1310, ptr %1307, align 4, !tbaa !81
  %1311 = getelementptr inbounds float, ptr %1307, i64 1
  %1312 = load float, ptr %1311, align 4, !tbaa !81
  %1313 = load float, ptr %1227, align 4, !tbaa !81
  %1314 = fadd float %1312, %1313
  store float %1314, ptr %1311, align 4, !tbaa !81
  %1315 = getelementptr inbounds float, ptr %1307, i64 2
  %1316 = load float, ptr %1315, align 4, !tbaa !81
  %1317 = load float, ptr %1232, align 4, !tbaa !81
  %1318 = fadd float %1316, %1317
  store float %1318, ptr %1315, align 4, !tbaa !81
  %1319 = getelementptr inbounds [3 x float], ptr %1307, i64 1
  %1320 = load float, ptr %1319, align 4, !tbaa !81
  %1321 = load float, ptr %1236, align 4, !tbaa !81
  %1322 = fadd float %1320, %1321
  store float %1322, ptr %1319, align 4, !tbaa !81
  %1323 = getelementptr inbounds [3 x float], ptr %1307, i64 1, i64 1
  %1324 = load float, ptr %1323, align 4, !tbaa !81
  %1325 = load float, ptr %1242, align 4, !tbaa !81
  %1326 = fadd float %1324, %1325
  store float %1326, ptr %1323, align 4, !tbaa !81
  %1327 = getelementptr inbounds [3 x float], ptr %1307, i64 1, i64 2
  %1328 = load float, ptr %1327, align 4, !tbaa !81
  %1329 = load float, ptr %1247, align 4, !tbaa !81
  %1330 = fadd float %1328, %1329
  store float %1330, ptr %1327, align 4, !tbaa !81
  %1331 = getelementptr inbounds [3 x float], ptr %1307, i64 2
  %1332 = load float, ptr %1331, align 4, !tbaa !81
  %1333 = load float, ptr %1251, align 4, !tbaa !81
  %1334 = fadd float %1332, %1333
  store float %1334, ptr %1331, align 4, !tbaa !81
  %1335 = getelementptr inbounds [3 x float], ptr %1307, i64 2, i64 1
  %1336 = load float, ptr %1335, align 4, !tbaa !81
  %1337 = load float, ptr %1257, align 4, !tbaa !81
  %1338 = fadd float %1336, %1337
  store float %1338, ptr %1335, align 4, !tbaa !81
  %1339 = getelementptr inbounds [3 x float], ptr %1307, i64 2, i64 2
  %1340 = load float, ptr %1339, align 4, !tbaa !81
  %1341 = load float, ptr %1262, align 4, !tbaa !81
  %1342 = fadd float %1340, %1341
  store float %1342, ptr %1339, align 4, !tbaa !81
  br label %1343

1343:                                             ; preds = %1217, %1212
  %1344 = load i32, ptr %1207, align 4, !tbaa !85
  %1345 = sext i32 %1344 to i64
  %1346 = getelementptr inbounds [3 x float], ptr %1, i64 %1345
  %1347 = load float, ptr %1346, align 4, !tbaa !81
  %1348 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 8
  %1349 = load float, ptr %1348, align 4, !tbaa !81
  %1350 = fadd float %1347, %1349
  store float %1350, ptr %1346, align 4, !tbaa !81
  %1351 = getelementptr inbounds [3 x float], ptr %1, i64 %1345, i64 1
  %1352 = load float, ptr %1351, align 4, !tbaa !81
  %1353 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 8, i64 1
  %1354 = load float, ptr %1353, align 4, !tbaa !81
  %1355 = fadd float %1352, %1354
  store float %1355, ptr %1351, align 4, !tbaa !81
  %1356 = getelementptr inbounds [3 x float], ptr %1, i64 %1345, i64 2
  %1357 = load float, ptr %1356, align 4, !tbaa !81
  %1358 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 8, i64 2
  %1359 = load float, ptr %1358, align 4, !tbaa !81
  %1360 = fadd float %1357, %1359
  store float %1360, ptr %1356, align 4, !tbaa !81
  %1361 = and i32 %1214, 16
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1363, label %1379

1363:                                             ; preds = %1343
  %1364 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 1
  %1365 = load i32, ptr %1364, align 4, !tbaa !87
  %1366 = sext i32 %1365 to i64
  %1367 = getelementptr inbounds [3 x float], ptr %1, i64 %1366
  %1368 = load float, ptr %1367, align 4, !tbaa !81
  %1369 = load float, ptr %1348, align 4, !tbaa !81
  %1370 = fsub float %1368, %1369
  store float %1370, ptr %1367, align 4, !tbaa !81
  %1371 = getelementptr inbounds float, ptr %1367, i64 1
  %1372 = load float, ptr %1371, align 4, !tbaa !81
  %1373 = load float, ptr %1353, align 4, !tbaa !81
  %1374 = fsub float %1372, %1373
  store float %1374, ptr %1371, align 4, !tbaa !81
  %1375 = getelementptr inbounds float, ptr %1367, i64 2
  %1376 = load float, ptr %1375, align 4, !tbaa !81
  %1377 = load float, ptr %1358, align 4, !tbaa !81
  %1378 = fsub float %1376, %1377
  store float %1378, ptr %1375, align 4, !tbaa !81
  br label %1379

1379:                                             ; preds = %1363, %1343
  %1380 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 1
  %1381 = load i32, ptr %1380, align 4, !tbaa !87
  %1382 = sext i32 %1381 to i64
  %1383 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 %1382
  %1384 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 6
  %1385 = load float, ptr %1383, align 4, !tbaa !81
  %1386 = load float, ptr %1384, align 4, !tbaa !81
  %1387 = fsub float %1385, %1386
  store float %1387, ptr %1383, align 4, !tbaa !81
  %1388 = getelementptr inbounds float, ptr %1383, i64 1
  %1389 = load float, ptr %1388, align 4, !tbaa !81
  %1390 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 6, i64 0, i64 1
  %1391 = load float, ptr %1390, align 4, !tbaa !81
  %1392 = fsub float %1389, %1391
  store float %1392, ptr %1388, align 4, !tbaa !81
  %1393 = getelementptr inbounds float, ptr %1383, i64 2
  %1394 = load float, ptr %1393, align 4, !tbaa !81
  %1395 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 6, i64 0, i64 2
  %1396 = load float, ptr %1395, align 4, !tbaa !81
  %1397 = fsub float %1394, %1396
  store float %1397, ptr %1393, align 4, !tbaa !81
  %1398 = getelementptr inbounds [3 x float], ptr %1383, i64 1
  %1399 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 6, i64 1
  %1400 = load float, ptr %1398, align 4, !tbaa !81
  %1401 = load float, ptr %1399, align 4, !tbaa !81
  %1402 = fsub float %1400, %1401
  store float %1402, ptr %1398, align 4, !tbaa !81
  %1403 = getelementptr inbounds [3 x float], ptr %1383, i64 1, i64 1
  %1404 = load float, ptr %1403, align 4, !tbaa !81
  %1405 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 6, i64 1, i64 1
  %1406 = load float, ptr %1405, align 4, !tbaa !81
  %1407 = fsub float %1404, %1406
  store float %1407, ptr %1403, align 4, !tbaa !81
  %1408 = getelementptr inbounds [3 x float], ptr %1383, i64 1, i64 2
  %1409 = load float, ptr %1408, align 4, !tbaa !81
  %1410 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 6, i64 1, i64 2
  %1411 = load float, ptr %1410, align 4, !tbaa !81
  %1412 = fsub float %1409, %1411
  store float %1412, ptr %1408, align 4, !tbaa !81
  %1413 = getelementptr inbounds [3 x float], ptr %1383, i64 2
  %1414 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 6, i64 2
  %1415 = load float, ptr %1413, align 4, !tbaa !81
  %1416 = load float, ptr %1414, align 4, !tbaa !81
  %1417 = fsub float %1415, %1416
  store float %1417, ptr %1413, align 4, !tbaa !81
  %1418 = getelementptr inbounds [3 x float], ptr %1383, i64 2, i64 1
  %1419 = load float, ptr %1418, align 4, !tbaa !81
  %1420 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 6, i64 2, i64 1
  %1421 = load float, ptr %1420, align 4, !tbaa !81
  %1422 = fsub float %1419, %1421
  store float %1422, ptr %1418, align 4, !tbaa !81
  %1423 = getelementptr inbounds [3 x float], ptr %1383, i64 2, i64 2
  %1424 = load float, ptr %1423, align 4, !tbaa !81
  %1425 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 6, i64 2, i64 2
  %1426 = load float, ptr %1425, align 4, !tbaa !81
  %1427 = fsub float %1424, %1426
  store float %1427, ptr %1423, align 4, !tbaa !81
  %1428 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 %1345
  %1429 = load float, ptr %1428, align 4, !tbaa !81
  %1430 = load float, ptr %1384, align 4, !tbaa !81
  %1431 = fsub float %1429, %1430
  store float %1431, ptr %1428, align 4, !tbaa !81
  %1432 = getelementptr inbounds float, ptr %1428, i64 1
  %1433 = load float, ptr %1432, align 4, !tbaa !81
  %1434 = load float, ptr %1390, align 4, !tbaa !81
  %1435 = fsub float %1433, %1434
  store float %1435, ptr %1432, align 4, !tbaa !81
  %1436 = getelementptr inbounds float, ptr %1428, i64 2
  %1437 = load float, ptr %1436, align 4, !tbaa !81
  %1438 = load float, ptr %1395, align 4, !tbaa !81
  %1439 = fsub float %1437, %1438
  store float %1439, ptr %1436, align 4, !tbaa !81
  %1440 = getelementptr inbounds [3 x float], ptr %1428, i64 1
  %1441 = load float, ptr %1440, align 4, !tbaa !81
  %1442 = load float, ptr %1399, align 4, !tbaa !81
  %1443 = fsub float %1441, %1442
  store float %1443, ptr %1440, align 4, !tbaa !81
  %1444 = getelementptr inbounds [3 x float], ptr %1428, i64 1, i64 1
  %1445 = load float, ptr %1444, align 4, !tbaa !81
  %1446 = load float, ptr %1405, align 4, !tbaa !81
  %1447 = fsub float %1445, %1446
  store float %1447, ptr %1444, align 4, !tbaa !81
  %1448 = getelementptr inbounds [3 x float], ptr %1428, i64 1, i64 2
  %1449 = load float, ptr %1448, align 4, !tbaa !81
  %1450 = load float, ptr %1410, align 4, !tbaa !81
  %1451 = fsub float %1449, %1450
  store float %1451, ptr %1448, align 4, !tbaa !81
  %1452 = getelementptr inbounds [3 x float], ptr %1428, i64 2
  %1453 = load float, ptr %1452, align 4, !tbaa !81
  %1454 = load float, ptr %1414, align 4, !tbaa !81
  %1455 = fsub float %1453, %1454
  store float %1455, ptr %1452, align 4, !tbaa !81
  %1456 = getelementptr inbounds [3 x float], ptr %1428, i64 2, i64 1
  %1457 = load float, ptr %1456, align 4, !tbaa !81
  %1458 = load float, ptr %1420, align 4, !tbaa !81
  %1459 = fsub float %1457, %1458
  store float %1459, ptr %1456, align 4, !tbaa !81
  %1460 = getelementptr inbounds [3 x float], ptr %1428, i64 2, i64 2
  %1461 = load float, ptr %1460, align 4, !tbaa !81
  %1462 = load float, ptr %1425, align 4, !tbaa !81
  %1463 = fsub float %1461, %1462
  store float %1463, ptr %1460, align 4, !tbaa !81
  %1464 = getelementptr inbounds %struct.ClothSpring, ptr %1207, i64 0, i32 3
  %1465 = load i32, ptr %1464, align 4, !tbaa !88
  %1466 = sext i32 %1465 to i64
  %1467 = getelementptr inbounds %struct.fmatrix3x3, ptr %5, i64 %1466
  %1468 = load float, ptr %1467, align 4, !tbaa !81
  %1469 = load float, ptr %1384, align 4, !tbaa !81
  %1470 = fadd float %1468, %1469
  store float %1470, ptr %1467, align 4, !tbaa !81
  %1471 = getelementptr inbounds float, ptr %1467, i64 1
  %1472 = load float, ptr %1471, align 4, !tbaa !81
  %1473 = load float, ptr %1390, align 4, !tbaa !81
  %1474 = fadd float %1472, %1473
  store float %1474, ptr %1471, align 4, !tbaa !81
  %1475 = getelementptr inbounds float, ptr %1467, i64 2
  %1476 = load float, ptr %1475, align 4, !tbaa !81
  %1477 = load float, ptr %1395, align 4, !tbaa !81
  %1478 = fadd float %1476, %1477
  store float %1478, ptr %1475, align 4, !tbaa !81
  %1479 = getelementptr inbounds [3 x float], ptr %1467, i64 1
  %1480 = load float, ptr %1479, align 4, !tbaa !81
  %1481 = load float, ptr %1399, align 4, !tbaa !81
  %1482 = fadd float %1480, %1481
  store float %1482, ptr %1479, align 4, !tbaa !81
  %1483 = getelementptr inbounds [3 x float], ptr %1467, i64 1, i64 1
  %1484 = load float, ptr %1483, align 4, !tbaa !81
  %1485 = load float, ptr %1405, align 4, !tbaa !81
  %1486 = fadd float %1484, %1485
  store float %1486, ptr %1483, align 4, !tbaa !81
  %1487 = getelementptr inbounds [3 x float], ptr %1467, i64 1, i64 2
  %1488 = load float, ptr %1487, align 4, !tbaa !81
  %1489 = load float, ptr %1410, align 4, !tbaa !81
  %1490 = fadd float %1488, %1489
  store float %1490, ptr %1487, align 4, !tbaa !81
  %1491 = getelementptr inbounds [3 x float], ptr %1467, i64 2
  %1492 = load float, ptr %1491, align 4, !tbaa !81
  %1493 = load float, ptr %1414, align 4, !tbaa !81
  %1494 = fadd float %1492, %1493
  store float %1494, ptr %1491, align 4, !tbaa !81
  %1495 = getelementptr inbounds [3 x float], ptr %1467, i64 2, i64 1
  %1496 = load float, ptr %1495, align 4, !tbaa !81
  %1497 = load float, ptr %1420, align 4, !tbaa !81
  %1498 = fadd float %1496, %1497
  store float %1498, ptr %1495, align 4, !tbaa !81
  %1499 = getelementptr inbounds [3 x float], ptr %1467, i64 2, i64 2
  %1500 = load float, ptr %1499, align 4, !tbaa !81
  %1501 = load float, ptr %1425, align 4, !tbaa !81
  %1502 = fadd float %1500, %1501
  store float %1502, ptr %1499, align 4, !tbaa !81
  br label %1503

1503:                                             ; preds = %1379, %1204
  %1504 = load ptr, ptr %1205, align 8, !tbaa !47
  %1505 = icmp eq ptr %1504, null
  br i1 %1505, label %1506, label %1204, !llvm.loop !187

1506:                                             ; preds = %1503, %862
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @simulate_implicit_euler(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, float noundef %5, ptr noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8, ptr nocapture noundef readonly %9, ptr nocapture noundef readonly %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef readonly %12) unnamed_addr #0 {
  %14 = getelementptr inbounds %struct.fmatrix3x3, ptr %3, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !51
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %17 = zext i32 %15 to i64
  %18 = mul nuw nsw i64 %17, 12
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @.str.5) #9
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
  %41 = load float, ptr %39, align 4, !tbaa !81
  %42 = load float, ptr %40, align 4, !tbaa !81
  %43 = fmul float %27, %42
  %44 = tail call float @llvm.fmuladd.f32(float %41, float %5, float %43)
  %45 = load float, ptr %38, align 4, !tbaa !81
  %46 = fsub float %45, %44
  store float %46, ptr %38, align 4, !tbaa !81
  %47 = getelementptr inbounds float, ptr %39, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !81
  %49 = getelementptr inbounds float, ptr %40, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !81
  %51 = fmul float %27, %50
  %52 = tail call float @llvm.fmuladd.f32(float %48, float %5, float %51)
  %53 = getelementptr inbounds float, ptr %38, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !81
  %55 = fsub float %54, %52
  store float %55, ptr %53, align 4, !tbaa !81
  %56 = getelementptr inbounds float, ptr %39, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !81
  %58 = getelementptr inbounds float, ptr %40, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !81
  %60 = fmul float %27, %59
  %61 = tail call float @llvm.fmuladd.f32(float %57, float %5, float %60)
  %62 = getelementptr inbounds float, ptr %38, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !81
  %64 = fsub float %63, %61
  store float %64, ptr %62, align 4, !tbaa !81
  %65 = getelementptr inbounds [3 x float], ptr %39, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !81
  %67 = getelementptr inbounds [3 x float], ptr %40, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !81
  %69 = fmul float %27, %68
  %70 = tail call float @llvm.fmuladd.f32(float %66, float %5, float %69)
  %71 = getelementptr inbounds [3 x float], ptr %38, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !81
  %73 = fsub float %72, %70
  store float %73, ptr %71, align 4, !tbaa !81
  %74 = getelementptr inbounds [3 x float], ptr %39, i64 1, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !81
  %76 = getelementptr inbounds [3 x float], ptr %40, i64 1, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !81
  %78 = fmul float %27, %77
  %79 = tail call float @llvm.fmuladd.f32(float %75, float %5, float %78)
  %80 = getelementptr inbounds [3 x float], ptr %38, i64 1, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !81
  %82 = fsub float %81, %79
  store float %82, ptr %80, align 4, !tbaa !81
  %83 = getelementptr inbounds [3 x float], ptr %39, i64 1, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !81
  %85 = getelementptr inbounds [3 x float], ptr %40, i64 1, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !81
  %87 = fmul float %27, %86
  %88 = tail call float @llvm.fmuladd.f32(float %84, float %5, float %87)
  %89 = getelementptr inbounds [3 x float], ptr %38, i64 1, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !81
  %91 = fsub float %90, %88
  store float %91, ptr %89, align 4, !tbaa !81
  %92 = getelementptr inbounds [3 x float], ptr %39, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !81
  %94 = getelementptr inbounds [3 x float], ptr %40, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !81
  %96 = fmul float %27, %95
  %97 = tail call float @llvm.fmuladd.f32(float %93, float %5, float %96)
  %98 = getelementptr inbounds [3 x float], ptr %38, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !81
  %100 = fsub float %99, %97
  store float %100, ptr %98, align 4, !tbaa !81
  %101 = getelementptr inbounds [3 x float], ptr %39, i64 2, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !81
  %103 = getelementptr inbounds [3 x float], ptr %40, i64 2, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !81
  %105 = fmul float %27, %104
  %106 = tail call float @llvm.fmuladd.f32(float %102, float %5, float %105)
  %107 = getelementptr inbounds [3 x float], ptr %38, i64 2, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !81
  %109 = fsub float %108, %106
  store float %109, ptr %107, align 4, !tbaa !81
  %110 = getelementptr inbounds [3 x float], ptr %39, i64 2, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !81
  %112 = getelementptr inbounds [3 x float], ptr %40, i64 2, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !81
  %114 = fmul float %27, %113
  %115 = tail call float @llvm.fmuladd.f32(float %111, float %5, float %114)
  %116 = getelementptr inbounds [3 x float], ptr %38, i64 2, i64 2
  %117 = load float, ptr %116, align 4, !tbaa !81
  %118 = fsub float %117, %115
  store float %118, ptr %116, align 4, !tbaa !81
  %119 = add nuw nsw i64 %37, 1
  %120 = icmp eq i64 %119, %35
  br i1 %120, label %121, label %36, !llvm.loop !188

121:                                              ; preds = %36, %13
  %122 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 0, i32 6
  %123 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 0, i32 7
  %124 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %125 = zext i32 %29 to i64
  %126 = mul nuw nsw i64 %125, 12
  %127 = tail call ptr %124(i64 noundef %126, ptr noundef nonnull @.str.5) #9
  tail call void @llvm.memset.p0.i64(ptr align 4 %19, i8 0, i64 %126, i1 false)
  %128 = load i32, ptr %122, align 4, !tbaa !51
  %129 = load i32, ptr %123, align 4, !tbaa !54
  %130 = add i32 %129, %128
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %121
  %133 = zext i32 %128 to i64
  %134 = zext i32 %130 to i64
  br label %139

135:                                              ; preds = %139, %121
  %136 = icmp eq i32 %130, 0
  br i1 %136, label %197, label %137

137:                                              ; preds = %135
  %138 = zext i32 %130 to i64
  br label %201

139:                                              ; preds = %132, %139
  %140 = phi i64 [ %133, %132 ], [ %195, %139 ]
  %141 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %140
  %142 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %140, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !76
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [3 x float], ptr %19, i64 %144
  %146 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %140, i32 2
  %147 = load i32, ptr %146, align 4, !tbaa !75
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [3 x float], ptr %1, i64 %148
  %150 = load float, ptr %141, align 4, !tbaa !81
  %151 = load float, ptr %149, align 4, !tbaa !81
  %152 = getelementptr inbounds float, ptr %141, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !81
  %154 = getelementptr inbounds float, ptr %149, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !81
  %156 = fmul float %153, %155
  %157 = tail call float @llvm.fmuladd.f32(float %150, float %151, float %156)
  %158 = getelementptr inbounds float, ptr %141, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !81
  %160 = getelementptr inbounds float, ptr %149, i64 2
  %161 = load float, ptr %160, align 4, !tbaa !81
  %162 = tail call float @llvm.fmuladd.f32(float %159, float %161, float %157)
  %163 = load float, ptr %145, align 4, !tbaa !81
  %164 = fadd float %163, %162
  store float %164, ptr %145, align 4, !tbaa !81
  %165 = getelementptr inbounds [3 x float], ptr %141, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !81
  %167 = load float, ptr %149, align 4, !tbaa !81
  %168 = getelementptr inbounds [3 x float], ptr %141, i64 1, i64 1
  %169 = load float, ptr %168, align 4, !tbaa !81
  %170 = load float, ptr %154, align 4, !tbaa !81
  %171 = fmul float %169, %170
  %172 = tail call float @llvm.fmuladd.f32(float %166, float %167, float %171)
  %173 = getelementptr inbounds [3 x float], ptr %141, i64 1, i64 2
  %174 = load float, ptr %173, align 4, !tbaa !81
  %175 = load float, ptr %160, align 4, !tbaa !81
  %176 = tail call float @llvm.fmuladd.f32(float %174, float %175, float %172)
  %177 = getelementptr inbounds float, ptr %145, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !81
  %179 = fadd float %178, %176
  store float %179, ptr %177, align 4, !tbaa !81
  %180 = getelementptr inbounds [3 x float], ptr %141, i64 2
  %181 = load float, ptr %180, align 4, !tbaa !81
  %182 = load float, ptr %149, align 4, !tbaa !81
  %183 = getelementptr inbounds [3 x float], ptr %141, i64 2, i64 1
  %184 = load float, ptr %183, align 4, !tbaa !81
  %185 = load float, ptr %154, align 4, !tbaa !81
  %186 = fmul float %184, %185
  %187 = tail call float @llvm.fmuladd.f32(float %181, float %182, float %186)
  %188 = getelementptr inbounds [3 x float], ptr %141, i64 2, i64 2
  %189 = load float, ptr %188, align 4, !tbaa !81
  %190 = load float, ptr %160, align 4, !tbaa !81
  %191 = tail call float @llvm.fmuladd.f32(float %189, float %190, float %187)
  %192 = getelementptr inbounds float, ptr %145, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !81
  %194 = fadd float %193, %191
  store float %194, ptr %192, align 4, !tbaa !81
  %195 = add nuw nsw i64 %140, 1
  %196 = icmp eq i64 %195, %134
  br i1 %196, label %135, label %139, !llvm.loop !189

197:                                              ; preds = %201, %135
  %198 = icmp eq i32 %128, 0
  br i1 %198, label %278, label %199

199:                                              ; preds = %197
  %200 = zext i32 %128 to i64
  br label %259

201:                                              ; preds = %137, %201
  %202 = phi i64 [ 0, %137 ], [ %257, %201 ]
  %203 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %202
  %204 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %202, i32 2
  %205 = load i32, ptr %204, align 4, !tbaa !75
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [3 x float], ptr %127, i64 %206
  %208 = getelementptr inbounds %struct.fmatrix3x3, ptr %4, i64 %202, i32 1
  %209 = load i32, ptr %208, align 4, !tbaa !76
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [3 x float], ptr %1, i64 %210
  %212 = load float, ptr %203, align 4, !tbaa !81
  %213 = load float, ptr %211, align 4, !tbaa !81
  %214 = getelementptr inbounds float, ptr %203, i64 1
  %215 = load float, ptr %214, align 4, !tbaa !81
  %216 = getelementptr inbounds float, ptr %211, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !81
  %218 = fmul float %215, %217
  %219 = tail call float @llvm.fmuladd.f32(float %212, float %213, float %218)
  %220 = getelementptr inbounds float, ptr %203, i64 2
  %221 = load float, ptr %220, align 4, !tbaa !81
  %222 = getelementptr inbounds float, ptr %211, i64 2
  %223 = load float, ptr %222, align 4, !tbaa !81
  %224 = tail call float @llvm.fmuladd.f32(float %221, float %223, float %219)
  %225 = load float, ptr %207, align 4, !tbaa !81
  %226 = fadd float %225, %224
  store float %226, ptr %207, align 4, !tbaa !81
  %227 = getelementptr inbounds [3 x float], ptr %203, i64 1
  %228 = load float, ptr %227, align 4, !tbaa !81
  %229 = load float, ptr %211, align 4, !tbaa !81
  %230 = getelementptr inbounds [3 x float], ptr %203, i64 1, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !81
  %232 = load float, ptr %216, align 4, !tbaa !81
  %233 = fmul float %231, %232
  %234 = tail call float @llvm.fmuladd.f32(float %228, float %229, float %233)
  %235 = getelementptr inbounds [3 x float], ptr %203, i64 1, i64 2
  %236 = load float, ptr %235, align 4, !tbaa !81
  %237 = load float, ptr %222, align 4, !tbaa !81
  %238 = tail call float @llvm.fmuladd.f32(float %236, float %237, float %234)
  %239 = getelementptr inbounds float, ptr %207, i64 1
  %240 = load float, ptr %239, align 4, !tbaa !81
  %241 = fadd float %240, %238
  store float %241, ptr %239, align 4, !tbaa !81
  %242 = getelementptr inbounds [3 x float], ptr %203, i64 2
  %243 = load float, ptr %242, align 4, !tbaa !81
  %244 = load float, ptr %211, align 4, !tbaa !81
  %245 = getelementptr inbounds [3 x float], ptr %203, i64 2, i64 1
  %246 = load float, ptr %245, align 4, !tbaa !81
  %247 = load float, ptr %216, align 4, !tbaa !81
  %248 = fmul float %246, %247
  %249 = tail call float @llvm.fmuladd.f32(float %243, float %244, float %248)
  %250 = getelementptr inbounds [3 x float], ptr %203, i64 2, i64 2
  %251 = load float, ptr %250, align 4, !tbaa !81
  %252 = load float, ptr %222, align 4, !tbaa !81
  %253 = tail call float @llvm.fmuladd.f32(float %251, float %252, float %249)
  %254 = getelementptr inbounds float, ptr %207, i64 2
  %255 = load float, ptr %254, align 4, !tbaa !81
  %256 = fadd float %255, %253
  store float %256, ptr %254, align 4, !tbaa !81
  %257 = add nuw nsw i64 %202, 1
  %258 = icmp eq i64 %257, %138
  br i1 %258, label %197, label %201, !llvm.loop !190

259:                                              ; preds = %199, %259
  %260 = phi i64 [ 0, %199 ], [ %276, %259 ]
  %261 = getelementptr inbounds [3 x float], ptr %19, i64 %260
  %262 = load float, ptr %261, align 4, !tbaa !81
  %263 = getelementptr inbounds [3 x float], ptr %127, i64 %260
  %264 = load float, ptr %263, align 4, !tbaa !81
  %265 = fadd float %262, %264
  store float %265, ptr %261, align 4, !tbaa !81
  %266 = getelementptr inbounds float, ptr %261, i64 1
  %267 = load float, ptr %266, align 4, !tbaa !81
  %268 = getelementptr inbounds float, ptr %263, i64 1
  %269 = load float, ptr %268, align 4, !tbaa !81
  %270 = fadd float %267, %269
  store float %270, ptr %266, align 4, !tbaa !81
  %271 = getelementptr inbounds float, ptr %261, i64 2
  %272 = load float, ptr %271, align 4, !tbaa !81
  %273 = getelementptr inbounds float, ptr %263, i64 2
  %274 = load float, ptr %273, align 4, !tbaa !81
  %275 = fadd float %272, %274
  store float %275, ptr %271, align 4, !tbaa !81
  %276 = add nuw nsw i64 %260, 1
  %277 = icmp eq i64 %276, %200
  br i1 %277, label %278, label %259, !llvm.loop !191

278:                                              ; preds = %259, %197
  %279 = icmp eq ptr %127, null
  br i1 %279, label %282, label %280

280:                                              ; preds = %278
  %281 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %281(ptr noundef nonnull %127) #9
  br label %282

282:                                              ; preds = %278, %280
  %283 = icmp eq i32 %15, 0
  br i1 %283, label %311, label %284

284:                                              ; preds = %282
  %285 = zext i32 %15 to i64
  br label %286

286:                                              ; preds = %284, %286
  %287 = phi i64 [ 0, %284 ], [ %309, %286 ]
  %288 = getelementptr inbounds [3 x float], ptr %2, i64 %287
  %289 = load float, ptr %288, align 4, !tbaa !81
  %290 = getelementptr inbounds [3 x float], ptr %19, i64 %287
  %291 = load float, ptr %290, align 4, !tbaa !81
  %292 = fmul float %27, %291
  %293 = tail call float @llvm.fmuladd.f32(float %289, float %5, float %292)
  %294 = getelementptr inbounds [3 x float], ptr %7, i64 %287
  store float %293, ptr %294, align 4, !tbaa !81
  %295 = getelementptr inbounds float, ptr %288, i64 1
  %296 = load float, ptr %295, align 4, !tbaa !81
  %297 = getelementptr inbounds float, ptr %290, i64 1
  %298 = load float, ptr %297, align 4, !tbaa !81
  %299 = fmul float %27, %298
  %300 = tail call float @llvm.fmuladd.f32(float %296, float %5, float %299)
  %301 = getelementptr inbounds float, ptr %294, i64 1
  store float %300, ptr %301, align 4, !tbaa !81
  %302 = getelementptr inbounds float, ptr %288, i64 2
  %303 = load float, ptr %302, align 4, !tbaa !81
  %304 = getelementptr inbounds float, ptr %290, i64 2
  %305 = load float, ptr %304, align 4, !tbaa !81
  %306 = fmul float %27, %305
  %307 = tail call float @llvm.fmuladd.f32(float %303, float %5, float %306)
  %308 = getelementptr inbounds float, ptr %294, i64 2
  store float %307, ptr %308, align 4, !tbaa !81
  %309 = add nuw nsw i64 %287, 1
  %310 = icmp eq i64 %309, %285
  br i1 %310, label %311, label %286, !llvm.loop !192

311:                                              ; preds = %286, %282
  %312 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 0, i32 6
  %313 = load i32, ptr %312, align 4, !tbaa !51
  %314 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %315 = zext i32 %313 to i64
  %316 = mul nuw nsw i64 %315, 12
  %317 = tail call ptr %314(i64 noundef %316, ptr noundef nonnull @.str.5) #9
  %318 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %319 = tail call ptr %318(i64 noundef %316, ptr noundef nonnull @.str.5) #9
  %320 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %321 = tail call ptr %320(i64 noundef %316, ptr noundef nonnull @.str.5) #9
  %322 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %323 = tail call ptr %322(i64 noundef %316, ptr noundef nonnull @.str.5) #9
  %324 = getelementptr inbounds %struct.fmatrix3x3, ptr %9, i64 0, i32 6
  %325 = load i32, ptr %324, align 4, !tbaa !51
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %329, label %327

327:                                              ; preds = %311
  %328 = zext i32 %325 to i64
  br label %334

329:                                              ; preds = %334, %311
  %330 = getelementptr inbounds %struct.fmatrix3x3, ptr %9, i64 0, i32 6
  %331 = icmp eq i32 %313, 0
  br i1 %331, label %393, label %332

332:                                              ; preds = %329
  %333 = zext i32 %313 to i64
  br label %374

334:                                              ; preds = %327, %334
  %335 = phi i64 [ 0, %327 ], [ %372, %334 ]
  %336 = getelementptr inbounds %struct.fmatrix3x3, ptr %9, i64 %335
  %337 = getelementptr inbounds %struct.fmatrix3x3, ptr %9, i64 %335, i32 2
  %338 = load i32, ptr %337, align 4, !tbaa !75
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds [3 x float], ptr %8, i64 %339
  %341 = load float, ptr %336, align 4, !tbaa !81
  %342 = load float, ptr %340, align 4, !tbaa !81
  %343 = getelementptr inbounds [3 x float], ptr %336, i64 1
  %344 = load float, ptr %343, align 4, !tbaa !81
  %345 = getelementptr inbounds float, ptr %340, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !81
  %347 = fmul float %344, %346
  %348 = tail call float @llvm.fmuladd.f32(float %341, float %342, float %347)
  %349 = getelementptr inbounds [3 x float], ptr %336, i64 2
  %350 = load float, ptr %349, align 4, !tbaa !81
  %351 = getelementptr inbounds float, ptr %340, i64 2
  %352 = load float, ptr %351, align 4, !tbaa !81
  %353 = tail call float @llvm.fmuladd.f32(float %350, float %352, float %348)
  store float %353, ptr %340, align 4, !tbaa !81
  %354 = getelementptr inbounds [3 x float], ptr %336, i64 0, i64 1
  %355 = load float, ptr %354, align 4, !tbaa !81
  %356 = getelementptr inbounds [3 x float], ptr %336, i64 1, i64 1
  %357 = load float, ptr %356, align 4, !tbaa !81
  %358 = fmul float %346, %357
  %359 = tail call float @llvm.fmuladd.f32(float %355, float %353, float %358)
  %360 = getelementptr inbounds [3 x float], ptr %336, i64 2, i64 1
  %361 = load float, ptr %360, align 4, !tbaa !81
  %362 = tail call float @llvm.fmuladd.f32(float %361, float %352, float %359)
  store float %362, ptr %345, align 4, !tbaa !81
  %363 = getelementptr inbounds [3 x float], ptr %336, i64 0, i64 2
  %364 = load float, ptr %363, align 4, !tbaa !81
  %365 = getelementptr inbounds [3 x float], ptr %336, i64 1, i64 2
  %366 = load float, ptr %365, align 4, !tbaa !81
  %367 = fmul float %362, %366
  %368 = tail call float @llvm.fmuladd.f32(float %364, float %353, float %367)
  %369 = getelementptr inbounds [3 x float], ptr %336, i64 2, i64 2
  %370 = load float, ptr %369, align 4, !tbaa !81
  %371 = tail call float @llvm.fmuladd.f32(float %370, float %352, float %368)
  store float %371, ptr %351, align 4, !tbaa !81
  %372 = add nuw nsw i64 %335, 1
  %373 = icmp eq i64 %372, %328
  br i1 %373, label %329, label %334, !llvm.loop !193

374:                                              ; preds = %332, %374
  %375 = phi i64 [ 0, %332 ], [ %391, %374 ]
  %376 = getelementptr inbounds [3 x float], ptr %8, i64 %375
  %377 = load float, ptr %376, align 4, !tbaa !81
  %378 = getelementptr inbounds [3 x float], ptr %10, i64 %375
  %379 = load float, ptr %378, align 4, !tbaa !81
  %380 = fadd float %377, %379
  store float %380, ptr %376, align 4, !tbaa !81
  %381 = getelementptr inbounds float, ptr %376, i64 1
  %382 = load float, ptr %381, align 4, !tbaa !81
  %383 = getelementptr inbounds float, ptr %378, i64 1
  %384 = load float, ptr %383, align 4, !tbaa !81
  %385 = fadd float %382, %384
  store float %385, ptr %381, align 4, !tbaa !81
  %386 = getelementptr inbounds float, ptr %376, i64 2
  %387 = load float, ptr %386, align 4, !tbaa !81
  %388 = getelementptr inbounds float, ptr %378, i64 2
  %389 = load float, ptr %388, align 4, !tbaa !81
  %390 = fadd float %387, %389
  store float %390, ptr %386, align 4, !tbaa !81
  %391 = add nuw nsw i64 %375, 1
  %392 = icmp eq i64 %391, %333
  br i1 %392, label %393, label %374, !llvm.loop !191

393:                                              ; preds = %374, %329
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %323, ptr align 4 %7, i64 %316, i1 false)
  %394 = load i32, ptr %312, align 4, !tbaa !51
  %395 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %396 = zext i32 %394 to i64
  %397 = mul nuw nsw i64 %396, 12
  %398 = tail call ptr %395(i64 noundef %397, ptr noundef nonnull @.str.5) #9
  tail call void @llvm.memset.p0.i64(ptr align 4 %321, i8 0, i64 %397, i1 false)
  %399 = load i32, ptr %312, align 4, !tbaa !51
  %400 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 0, i32 7
  %401 = load i32, ptr %400, align 4, !tbaa !54
  %402 = add i32 %401, %399
  %403 = icmp ult i32 %399, %402
  br i1 %403, label %404, label %407

404:                                              ; preds = %393
  %405 = zext i32 %399 to i64
  %406 = zext i32 %402 to i64
  br label %412

407:                                              ; preds = %412, %393
  %408 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 0, i32 7
  %409 = icmp eq i32 %402, 0
  br i1 %409, label %470, label %410

410:                                              ; preds = %407
  %411 = zext i32 %402 to i64
  br label %474

412:                                              ; preds = %404, %412
  %413 = phi i64 [ %405, %404 ], [ %468, %412 ]
  %414 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %413
  %415 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %413, i32 1
  %416 = load i32, ptr %415, align 4, !tbaa !76
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds [3 x float], ptr %321, i64 %417
  %419 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %413, i32 2
  %420 = load i32, ptr %419, align 4, !tbaa !75
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds [3 x float], ptr %8, i64 %421
  %423 = load float, ptr %414, align 4, !tbaa !81
  %424 = load float, ptr %422, align 4, !tbaa !81
  %425 = getelementptr inbounds float, ptr %414, i64 1
  %426 = load float, ptr %425, align 4, !tbaa !81
  %427 = getelementptr inbounds float, ptr %422, i64 1
  %428 = load float, ptr %427, align 4, !tbaa !81
  %429 = fmul float %426, %428
  %430 = tail call float @llvm.fmuladd.f32(float %423, float %424, float %429)
  %431 = getelementptr inbounds float, ptr %414, i64 2
  %432 = load float, ptr %431, align 4, !tbaa !81
  %433 = getelementptr inbounds float, ptr %422, i64 2
  %434 = load float, ptr %433, align 4, !tbaa !81
  %435 = tail call float @llvm.fmuladd.f32(float %432, float %434, float %430)
  %436 = load float, ptr %418, align 4, !tbaa !81
  %437 = fadd float %436, %435
  store float %437, ptr %418, align 4, !tbaa !81
  %438 = getelementptr inbounds [3 x float], ptr %414, i64 1
  %439 = load float, ptr %438, align 4, !tbaa !81
  %440 = load float, ptr %422, align 4, !tbaa !81
  %441 = getelementptr inbounds [3 x float], ptr %414, i64 1, i64 1
  %442 = load float, ptr %441, align 4, !tbaa !81
  %443 = load float, ptr %427, align 4, !tbaa !81
  %444 = fmul float %442, %443
  %445 = tail call float @llvm.fmuladd.f32(float %439, float %440, float %444)
  %446 = getelementptr inbounds [3 x float], ptr %414, i64 1, i64 2
  %447 = load float, ptr %446, align 4, !tbaa !81
  %448 = load float, ptr %433, align 4, !tbaa !81
  %449 = tail call float @llvm.fmuladd.f32(float %447, float %448, float %445)
  %450 = getelementptr inbounds float, ptr %418, i64 1
  %451 = load float, ptr %450, align 4, !tbaa !81
  %452 = fadd float %451, %449
  store float %452, ptr %450, align 4, !tbaa !81
  %453 = getelementptr inbounds [3 x float], ptr %414, i64 2
  %454 = load float, ptr %453, align 4, !tbaa !81
  %455 = load float, ptr %422, align 4, !tbaa !81
  %456 = getelementptr inbounds [3 x float], ptr %414, i64 2, i64 1
  %457 = load float, ptr %456, align 4, !tbaa !81
  %458 = load float, ptr %427, align 4, !tbaa !81
  %459 = fmul float %457, %458
  %460 = tail call float @llvm.fmuladd.f32(float %454, float %455, float %459)
  %461 = getelementptr inbounds [3 x float], ptr %414, i64 2, i64 2
  %462 = load float, ptr %461, align 4, !tbaa !81
  %463 = load float, ptr %433, align 4, !tbaa !81
  %464 = tail call float @llvm.fmuladd.f32(float %462, float %463, float %460)
  %465 = getelementptr inbounds float, ptr %418, i64 2
  %466 = load float, ptr %465, align 4, !tbaa !81
  %467 = fadd float %466, %464
  store float %467, ptr %465, align 4, !tbaa !81
  %468 = add nuw nsw i64 %413, 1
  %469 = icmp eq i64 %468, %406
  br i1 %469, label %407, label %412, !llvm.loop !189

470:                                              ; preds = %474, %407
  %471 = icmp eq i32 %399, 0
  br i1 %471, label %551, label %472

472:                                              ; preds = %470
  %473 = zext i32 %399 to i64
  br label %532

474:                                              ; preds = %410, %474
  %475 = phi i64 [ 0, %410 ], [ %530, %474 ]
  %476 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %475
  %477 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %475, i32 2
  %478 = load i32, ptr %477, align 4, !tbaa !75
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds [3 x float], ptr %398, i64 %479
  %481 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %475, i32 1
  %482 = load i32, ptr %481, align 4, !tbaa !76
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds [3 x float], ptr %8, i64 %483
  %485 = load float, ptr %476, align 4, !tbaa !81
  %486 = load float, ptr %484, align 4, !tbaa !81
  %487 = getelementptr inbounds float, ptr %476, i64 1
  %488 = load float, ptr %487, align 4, !tbaa !81
  %489 = getelementptr inbounds float, ptr %484, i64 1
  %490 = load float, ptr %489, align 4, !tbaa !81
  %491 = fmul float %488, %490
  %492 = tail call float @llvm.fmuladd.f32(float %485, float %486, float %491)
  %493 = getelementptr inbounds float, ptr %476, i64 2
  %494 = load float, ptr %493, align 4, !tbaa !81
  %495 = getelementptr inbounds float, ptr %484, i64 2
  %496 = load float, ptr %495, align 4, !tbaa !81
  %497 = tail call float @llvm.fmuladd.f32(float %494, float %496, float %492)
  %498 = load float, ptr %480, align 4, !tbaa !81
  %499 = fadd float %498, %497
  store float %499, ptr %480, align 4, !tbaa !81
  %500 = getelementptr inbounds [3 x float], ptr %476, i64 1
  %501 = load float, ptr %500, align 4, !tbaa !81
  %502 = load float, ptr %484, align 4, !tbaa !81
  %503 = getelementptr inbounds [3 x float], ptr %476, i64 1, i64 1
  %504 = load float, ptr %503, align 4, !tbaa !81
  %505 = load float, ptr %489, align 4, !tbaa !81
  %506 = fmul float %504, %505
  %507 = tail call float @llvm.fmuladd.f32(float %501, float %502, float %506)
  %508 = getelementptr inbounds [3 x float], ptr %476, i64 1, i64 2
  %509 = load float, ptr %508, align 4, !tbaa !81
  %510 = load float, ptr %495, align 4, !tbaa !81
  %511 = tail call float @llvm.fmuladd.f32(float %509, float %510, float %507)
  %512 = getelementptr inbounds float, ptr %480, i64 1
  %513 = load float, ptr %512, align 4, !tbaa !81
  %514 = fadd float %513, %511
  store float %514, ptr %512, align 4, !tbaa !81
  %515 = getelementptr inbounds [3 x float], ptr %476, i64 2
  %516 = load float, ptr %515, align 4, !tbaa !81
  %517 = load float, ptr %484, align 4, !tbaa !81
  %518 = getelementptr inbounds [3 x float], ptr %476, i64 2, i64 1
  %519 = load float, ptr %518, align 4, !tbaa !81
  %520 = load float, ptr %489, align 4, !tbaa !81
  %521 = fmul float %519, %520
  %522 = tail call float @llvm.fmuladd.f32(float %516, float %517, float %521)
  %523 = getelementptr inbounds [3 x float], ptr %476, i64 2, i64 2
  %524 = load float, ptr %523, align 4, !tbaa !81
  %525 = load float, ptr %495, align 4, !tbaa !81
  %526 = tail call float @llvm.fmuladd.f32(float %524, float %525, float %522)
  %527 = getelementptr inbounds float, ptr %480, i64 2
  %528 = load float, ptr %527, align 4, !tbaa !81
  %529 = fadd float %528, %526
  store float %529, ptr %527, align 4, !tbaa !81
  %530 = add nuw nsw i64 %475, 1
  %531 = icmp eq i64 %530, %411
  br i1 %531, label %470, label %474, !llvm.loop !190

532:                                              ; preds = %472, %532
  %533 = phi i64 [ 0, %472 ], [ %549, %532 ]
  %534 = getelementptr inbounds [3 x float], ptr %321, i64 %533
  %535 = load float, ptr %534, align 4, !tbaa !81
  %536 = getelementptr inbounds [3 x float], ptr %398, i64 %533
  %537 = load float, ptr %536, align 4, !tbaa !81
  %538 = fadd float %535, %537
  store float %538, ptr %534, align 4, !tbaa !81
  %539 = getelementptr inbounds float, ptr %534, i64 1
  %540 = load float, ptr %539, align 4, !tbaa !81
  %541 = getelementptr inbounds float, ptr %536, i64 1
  %542 = load float, ptr %541, align 4, !tbaa !81
  %543 = fadd float %540, %542
  store float %543, ptr %539, align 4, !tbaa !81
  %544 = getelementptr inbounds float, ptr %534, i64 2
  %545 = load float, ptr %544, align 4, !tbaa !81
  %546 = getelementptr inbounds float, ptr %536, i64 2
  %547 = load float, ptr %546, align 4, !tbaa !81
  %548 = fadd float %545, %547
  store float %548, ptr %544, align 4, !tbaa !81
  %549 = add nuw nsw i64 %533, 1
  %550 = icmp eq i64 %549, %473
  br i1 %550, label %551, label %532, !llvm.loop !191

551:                                              ; preds = %532, %470
  %552 = icmp eq ptr %398, null
  br i1 %552, label %555, label %553

553:                                              ; preds = %551
  %554 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %554(ptr noundef nonnull %398) #9
  br label %555

555:                                              ; preds = %553, %551
  %556 = icmp eq i32 %313, 0
  br i1 %556, label %559, label %557

557:                                              ; preds = %555
  %558 = zext i32 %313 to i64
  br label %564

559:                                              ; preds = %564, %555
  %560 = load i32, ptr %330, align 4, !tbaa !51
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %623, label %562

562:                                              ; preds = %559
  %563 = zext i32 %560 to i64
  br label %583

564:                                              ; preds = %557, %564
  %565 = phi i64 [ 0, %557 ], [ %581, %564 ]
  %566 = getelementptr inbounds [3 x float], ptr %323, i64 %565
  %567 = getelementptr inbounds [3 x float], ptr %321, i64 %565
  %568 = load float, ptr %566, align 4, !tbaa !81
  %569 = load float, ptr %567, align 4, !tbaa !81
  %570 = fsub float %568, %569
  store float %570, ptr %566, align 4, !tbaa !81
  %571 = getelementptr inbounds float, ptr %566, i64 1
  %572 = load float, ptr %571, align 4, !tbaa !81
  %573 = getelementptr inbounds float, ptr %567, i64 1
  %574 = load float, ptr %573, align 4, !tbaa !81
  %575 = fsub float %572, %574
  store float %575, ptr %571, align 4, !tbaa !81
  %576 = getelementptr inbounds float, ptr %566, i64 2
  %577 = load float, ptr %576, align 4, !tbaa !81
  %578 = getelementptr inbounds float, ptr %567, i64 2
  %579 = load float, ptr %578, align 4, !tbaa !81
  %580 = fsub float %577, %579
  store float %580, ptr %576, align 4, !tbaa !81
  %581 = add nuw nsw i64 %565, 1
  %582 = icmp eq i64 %581, %558
  br i1 %582, label %559, label %564, !llvm.loop !194

583:                                              ; preds = %562, %583
  %584 = phi i64 [ 0, %562 ], [ %621, %583 ]
  %585 = getelementptr inbounds %struct.fmatrix3x3, ptr %9, i64 %584
  %586 = getelementptr inbounds %struct.fmatrix3x3, ptr %9, i64 %584, i32 2
  %587 = load i32, ptr %586, align 4, !tbaa !75
  %588 = zext i32 %587 to i64
  %589 = getelementptr inbounds [3 x float], ptr %323, i64 %588
  %590 = load float, ptr %585, align 4, !tbaa !81
  %591 = load float, ptr %589, align 4, !tbaa !81
  %592 = getelementptr inbounds [3 x float], ptr %585, i64 1
  %593 = load float, ptr %592, align 4, !tbaa !81
  %594 = getelementptr inbounds float, ptr %589, i64 1
  %595 = load float, ptr %594, align 4, !tbaa !81
  %596 = fmul float %593, %595
  %597 = tail call float @llvm.fmuladd.f32(float %590, float %591, float %596)
  %598 = getelementptr inbounds [3 x float], ptr %585, i64 2
  %599 = load float, ptr %598, align 4, !tbaa !81
  %600 = getelementptr inbounds float, ptr %589, i64 2
  %601 = load float, ptr %600, align 4, !tbaa !81
  %602 = tail call float @llvm.fmuladd.f32(float %599, float %601, float %597)
  store float %602, ptr %589, align 4, !tbaa !81
  %603 = getelementptr inbounds [3 x float], ptr %585, i64 0, i64 1
  %604 = load float, ptr %603, align 4, !tbaa !81
  %605 = getelementptr inbounds [3 x float], ptr %585, i64 1, i64 1
  %606 = load float, ptr %605, align 4, !tbaa !81
  %607 = fmul float %595, %606
  %608 = tail call float @llvm.fmuladd.f32(float %604, float %602, float %607)
  %609 = getelementptr inbounds [3 x float], ptr %585, i64 2, i64 1
  %610 = load float, ptr %609, align 4, !tbaa !81
  %611 = tail call float @llvm.fmuladd.f32(float %610, float %601, float %608)
  store float %611, ptr %594, align 4, !tbaa !81
  %612 = getelementptr inbounds [3 x float], ptr %585, i64 0, i64 2
  %613 = load float, ptr %612, align 4, !tbaa !81
  %614 = getelementptr inbounds [3 x float], ptr %585, i64 1, i64 2
  %615 = load float, ptr %614, align 4, !tbaa !81
  %616 = fmul float %611, %615
  %617 = tail call float @llvm.fmuladd.f32(float %613, float %602, float %616)
  %618 = getelementptr inbounds [3 x float], ptr %585, i64 2, i64 2
  %619 = load float, ptr %618, align 4, !tbaa !81
  %620 = tail call float @llvm.fmuladd.f32(float %619, float %601, float %617)
  store float %620, ptr %600, align 4, !tbaa !81
  %621 = add nuw nsw i64 %584, 1
  %622 = icmp eq i64 %621, %563
  br i1 %622, label %623, label %583, !llvm.loop !193

623:                                              ; preds = %583, %559
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %319, ptr align 4 %323, i64 %316, i1 false)
  %624 = icmp eq i32 %313, 0
  br i1 %624, label %640, label %625

625:                                              ; preds = %623, %625
  %626 = phi float [ %637, %625 ], [ 0.000000e+00, %623 ]
  %627 = phi i64 [ %638, %625 ], [ 0, %623 ]
  %628 = getelementptr inbounds [3 x float], ptr %323, i64 %627
  %629 = load float, ptr %628, align 4, !tbaa !81
  %630 = getelementptr inbounds float, ptr %628, i64 1
  %631 = load float, ptr %630, align 4, !tbaa !81
  %632 = fmul float %631, %631
  %633 = tail call float @llvm.fmuladd.f32(float %629, float %629, float %632)
  %634 = getelementptr inbounds float, ptr %628, i64 2
  %635 = load float, ptr %634, align 4, !tbaa !81
  %636 = tail call float @llvm.fmuladd.f32(float %635, float %635, float %633)
  %637 = fadd float %626, %636
  %638 = add nuw nsw i64 %627, 1
  %639 = icmp eq i64 %638, %315
  br i1 %639, label %640, label %625, !llvm.loop !195

640:                                              ; preds = %625, %623
  %641 = phi float [ 0.000000e+00, %623 ], [ %637, %625 ]
  %642 = fmul float %641, 0x3F847AE140000000
  %643 = fcmp ogt float %641, %642
  br i1 %643, label %644, label %1012

644:                                              ; preds = %640
  %645 = icmp eq i32 %313, 0
  %646 = icmp eq i32 %313, 0
  %647 = icmp eq i32 %313, 0
  %648 = icmp eq i32 %313, 0
  %649 = zext i32 %313 to i64
  %650 = zext i32 %313 to i64
  %651 = zext i32 %313 to i64
  br label %652

652:                                              ; preds = %644, %1007
  %653 = phi i32 [ 0, %644 ], [ %1008, %1007 ]
  %654 = phi float [ %641, %644 ], [ %942, %1007 ]
  %655 = load i32, ptr %312, align 4, !tbaa !51
  %656 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %657 = zext i32 %655 to i64
  %658 = mul nuw nsw i64 %657, 12
  %659 = tail call ptr %656(i64 noundef %658, ptr noundef nonnull @.str.5) #9
  tail call void @llvm.memset.p0.i64(ptr align 4 %317, i8 0, i64 %658, i1 false)
  %660 = load i32, ptr %312, align 4, !tbaa !51
  %661 = load i32, ptr %408, align 4, !tbaa !54
  %662 = add i32 %661, %660
  %663 = icmp ult i32 %660, %662
  br i1 %663, label %664, label %667

664:                                              ; preds = %652
  %665 = zext i32 %660 to i64
  %666 = zext i32 %662 to i64
  br label %671

667:                                              ; preds = %671, %652
  %668 = icmp eq i32 %662, 0
  br i1 %668, label %729, label %669

669:                                              ; preds = %667
  %670 = zext i32 %662 to i64
  br label %733

671:                                              ; preds = %664, %671
  %672 = phi i64 [ %665, %664 ], [ %727, %671 ]
  %673 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %672
  %674 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %672, i32 1
  %675 = load i32, ptr %674, align 4, !tbaa !76
  %676 = zext i32 %675 to i64
  %677 = getelementptr inbounds [3 x float], ptr %317, i64 %676
  %678 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %672, i32 2
  %679 = load i32, ptr %678, align 4, !tbaa !75
  %680 = zext i32 %679 to i64
  %681 = getelementptr inbounds [3 x float], ptr %319, i64 %680
  %682 = load float, ptr %673, align 4, !tbaa !81
  %683 = load float, ptr %681, align 4, !tbaa !81
  %684 = getelementptr inbounds float, ptr %673, i64 1
  %685 = load float, ptr %684, align 4, !tbaa !81
  %686 = getelementptr inbounds float, ptr %681, i64 1
  %687 = load float, ptr %686, align 4, !tbaa !81
  %688 = fmul float %685, %687
  %689 = tail call float @llvm.fmuladd.f32(float %682, float %683, float %688)
  %690 = getelementptr inbounds float, ptr %673, i64 2
  %691 = load float, ptr %690, align 4, !tbaa !81
  %692 = getelementptr inbounds float, ptr %681, i64 2
  %693 = load float, ptr %692, align 4, !tbaa !81
  %694 = tail call float @llvm.fmuladd.f32(float %691, float %693, float %689)
  %695 = load float, ptr %677, align 4, !tbaa !81
  %696 = fadd float %695, %694
  store float %696, ptr %677, align 4, !tbaa !81
  %697 = getelementptr inbounds [3 x float], ptr %673, i64 1
  %698 = load float, ptr %697, align 4, !tbaa !81
  %699 = load float, ptr %681, align 4, !tbaa !81
  %700 = getelementptr inbounds [3 x float], ptr %673, i64 1, i64 1
  %701 = load float, ptr %700, align 4, !tbaa !81
  %702 = load float, ptr %686, align 4, !tbaa !81
  %703 = fmul float %701, %702
  %704 = tail call float @llvm.fmuladd.f32(float %698, float %699, float %703)
  %705 = getelementptr inbounds [3 x float], ptr %673, i64 1, i64 2
  %706 = load float, ptr %705, align 4, !tbaa !81
  %707 = load float, ptr %692, align 4, !tbaa !81
  %708 = tail call float @llvm.fmuladd.f32(float %706, float %707, float %704)
  %709 = getelementptr inbounds float, ptr %677, i64 1
  %710 = load float, ptr %709, align 4, !tbaa !81
  %711 = fadd float %710, %708
  store float %711, ptr %709, align 4, !tbaa !81
  %712 = getelementptr inbounds [3 x float], ptr %673, i64 2
  %713 = load float, ptr %712, align 4, !tbaa !81
  %714 = load float, ptr %681, align 4, !tbaa !81
  %715 = getelementptr inbounds [3 x float], ptr %673, i64 2, i64 1
  %716 = load float, ptr %715, align 4, !tbaa !81
  %717 = load float, ptr %686, align 4, !tbaa !81
  %718 = fmul float %716, %717
  %719 = tail call float @llvm.fmuladd.f32(float %713, float %714, float %718)
  %720 = getelementptr inbounds [3 x float], ptr %673, i64 2, i64 2
  %721 = load float, ptr %720, align 4, !tbaa !81
  %722 = load float, ptr %692, align 4, !tbaa !81
  %723 = tail call float @llvm.fmuladd.f32(float %721, float %722, float %719)
  %724 = getelementptr inbounds float, ptr %677, i64 2
  %725 = load float, ptr %724, align 4, !tbaa !81
  %726 = fadd float %725, %723
  store float %726, ptr %724, align 4, !tbaa !81
  %727 = add nuw nsw i64 %672, 1
  %728 = icmp eq i64 %727, %666
  br i1 %728, label %667, label %671, !llvm.loop !189

729:                                              ; preds = %733, %667
  %730 = icmp eq i32 %660, 0
  br i1 %730, label %810, label %731

731:                                              ; preds = %729
  %732 = zext i32 %660 to i64
  br label %791

733:                                              ; preds = %669, %733
  %734 = phi i64 [ 0, %669 ], [ %789, %733 ]
  %735 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %734
  %736 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %734, i32 2
  %737 = load i32, ptr %736, align 4, !tbaa !75
  %738 = zext i32 %737 to i64
  %739 = getelementptr inbounds [3 x float], ptr %659, i64 %738
  %740 = getelementptr inbounds %struct.fmatrix3x3, ptr %6, i64 %734, i32 1
  %741 = load i32, ptr %740, align 4, !tbaa !76
  %742 = zext i32 %741 to i64
  %743 = getelementptr inbounds [3 x float], ptr %319, i64 %742
  %744 = load float, ptr %735, align 4, !tbaa !81
  %745 = load float, ptr %743, align 4, !tbaa !81
  %746 = getelementptr inbounds float, ptr %735, i64 1
  %747 = load float, ptr %746, align 4, !tbaa !81
  %748 = getelementptr inbounds float, ptr %743, i64 1
  %749 = load float, ptr %748, align 4, !tbaa !81
  %750 = fmul float %747, %749
  %751 = tail call float @llvm.fmuladd.f32(float %744, float %745, float %750)
  %752 = getelementptr inbounds float, ptr %735, i64 2
  %753 = load float, ptr %752, align 4, !tbaa !81
  %754 = getelementptr inbounds float, ptr %743, i64 2
  %755 = load float, ptr %754, align 4, !tbaa !81
  %756 = tail call float @llvm.fmuladd.f32(float %753, float %755, float %751)
  %757 = load float, ptr %739, align 4, !tbaa !81
  %758 = fadd float %757, %756
  store float %758, ptr %739, align 4, !tbaa !81
  %759 = getelementptr inbounds [3 x float], ptr %735, i64 1
  %760 = load float, ptr %759, align 4, !tbaa !81
  %761 = load float, ptr %743, align 4, !tbaa !81
  %762 = getelementptr inbounds [3 x float], ptr %735, i64 1, i64 1
  %763 = load float, ptr %762, align 4, !tbaa !81
  %764 = load float, ptr %748, align 4, !tbaa !81
  %765 = fmul float %763, %764
  %766 = tail call float @llvm.fmuladd.f32(float %760, float %761, float %765)
  %767 = getelementptr inbounds [3 x float], ptr %735, i64 1, i64 2
  %768 = load float, ptr %767, align 4, !tbaa !81
  %769 = load float, ptr %754, align 4, !tbaa !81
  %770 = tail call float @llvm.fmuladd.f32(float %768, float %769, float %766)
  %771 = getelementptr inbounds float, ptr %739, i64 1
  %772 = load float, ptr %771, align 4, !tbaa !81
  %773 = fadd float %772, %770
  store float %773, ptr %771, align 4, !tbaa !81
  %774 = getelementptr inbounds [3 x float], ptr %735, i64 2
  %775 = load float, ptr %774, align 4, !tbaa !81
  %776 = load float, ptr %743, align 4, !tbaa !81
  %777 = getelementptr inbounds [3 x float], ptr %735, i64 2, i64 1
  %778 = load float, ptr %777, align 4, !tbaa !81
  %779 = load float, ptr %748, align 4, !tbaa !81
  %780 = fmul float %778, %779
  %781 = tail call float @llvm.fmuladd.f32(float %775, float %776, float %780)
  %782 = getelementptr inbounds [3 x float], ptr %735, i64 2, i64 2
  %783 = load float, ptr %782, align 4, !tbaa !81
  %784 = load float, ptr %754, align 4, !tbaa !81
  %785 = tail call float @llvm.fmuladd.f32(float %783, float %784, float %781)
  %786 = getelementptr inbounds float, ptr %739, i64 2
  %787 = load float, ptr %786, align 4, !tbaa !81
  %788 = fadd float %787, %785
  store float %788, ptr %786, align 4, !tbaa !81
  %789 = add nuw nsw i64 %734, 1
  %790 = icmp eq i64 %789, %670
  br i1 %790, label %729, label %733, !llvm.loop !190

791:                                              ; preds = %731, %791
  %792 = phi i64 [ 0, %731 ], [ %808, %791 ]
  %793 = getelementptr inbounds [3 x float], ptr %317, i64 %792
  %794 = load float, ptr %793, align 4, !tbaa !81
  %795 = getelementptr inbounds [3 x float], ptr %659, i64 %792
  %796 = load float, ptr %795, align 4, !tbaa !81
  %797 = fadd float %794, %796
  store float %797, ptr %793, align 4, !tbaa !81
  %798 = getelementptr inbounds float, ptr %793, i64 1
  %799 = load float, ptr %798, align 4, !tbaa !81
  %800 = getelementptr inbounds float, ptr %795, i64 1
  %801 = load float, ptr %800, align 4, !tbaa !81
  %802 = fadd float %799, %801
  store float %802, ptr %798, align 4, !tbaa !81
  %803 = getelementptr inbounds float, ptr %793, i64 2
  %804 = load float, ptr %803, align 4, !tbaa !81
  %805 = getelementptr inbounds float, ptr %795, i64 2
  %806 = load float, ptr %805, align 4, !tbaa !81
  %807 = fadd float %804, %806
  store float %807, ptr %803, align 4, !tbaa !81
  %808 = add nuw nsw i64 %792, 1
  %809 = icmp eq i64 %808, %732
  br i1 %809, label %810, label %791, !llvm.loop !191

810:                                              ; preds = %791, %729
  %811 = icmp eq ptr %659, null
  br i1 %811, label %814, label %812

812:                                              ; preds = %810
  %813 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %813(ptr noundef nonnull %659) #9
  br label %814

814:                                              ; preds = %812, %810
  %815 = load i32, ptr %330, align 4, !tbaa !51
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %819, label %817

817:                                              ; preds = %814
  %818 = zext i32 %815 to i64
  br label %820

819:                                              ; preds = %820, %814
  br i1 %645, label %881, label %860

820:                                              ; preds = %817, %820
  %821 = phi i64 [ 0, %817 ], [ %858, %820 ]
  %822 = getelementptr inbounds %struct.fmatrix3x3, ptr %9, i64 %821
  %823 = getelementptr inbounds %struct.fmatrix3x3, ptr %9, i64 %821, i32 2
  %824 = load i32, ptr %823, align 4, !tbaa !75
  %825 = zext i32 %824 to i64
  %826 = getelementptr inbounds [3 x float], ptr %317, i64 %825
  %827 = load float, ptr %822, align 4, !tbaa !81
  %828 = load float, ptr %826, align 4, !tbaa !81
  %829 = getelementptr inbounds [3 x float], ptr %822, i64 1
  %830 = load float, ptr %829, align 4, !tbaa !81
  %831 = getelementptr inbounds float, ptr %826, i64 1
  %832 = load float, ptr %831, align 4, !tbaa !81
  %833 = fmul float %830, %832
  %834 = tail call float @llvm.fmuladd.f32(float %827, float %828, float %833)
  %835 = getelementptr inbounds [3 x float], ptr %822, i64 2
  %836 = load float, ptr %835, align 4, !tbaa !81
  %837 = getelementptr inbounds float, ptr %826, i64 2
  %838 = load float, ptr %837, align 4, !tbaa !81
  %839 = tail call float @llvm.fmuladd.f32(float %836, float %838, float %834)
  store float %839, ptr %826, align 4, !tbaa !81
  %840 = getelementptr inbounds [3 x float], ptr %822, i64 0, i64 1
  %841 = load float, ptr %840, align 4, !tbaa !81
  %842 = getelementptr inbounds [3 x float], ptr %822, i64 1, i64 1
  %843 = load float, ptr %842, align 4, !tbaa !81
  %844 = fmul float %832, %843
  %845 = tail call float @llvm.fmuladd.f32(float %841, float %839, float %844)
  %846 = getelementptr inbounds [3 x float], ptr %822, i64 2, i64 1
  %847 = load float, ptr %846, align 4, !tbaa !81
  %848 = tail call float @llvm.fmuladd.f32(float %847, float %838, float %845)
  store float %848, ptr %831, align 4, !tbaa !81
  %849 = getelementptr inbounds [3 x float], ptr %822, i64 0, i64 2
  %850 = load float, ptr %849, align 4, !tbaa !81
  %851 = getelementptr inbounds [3 x float], ptr %822, i64 1, i64 2
  %852 = load float, ptr %851, align 4, !tbaa !81
  %853 = fmul float %848, %852
  %854 = tail call float @llvm.fmuladd.f32(float %850, float %839, float %853)
  %855 = getelementptr inbounds [3 x float], ptr %822, i64 2, i64 2
  %856 = load float, ptr %855, align 4, !tbaa !81
  %857 = tail call float @llvm.fmuladd.f32(float %856, float %838, float %854)
  store float %857, ptr %837, align 4, !tbaa !81
  %858 = add nuw nsw i64 %821, 1
  %859 = icmp eq i64 %858, %818
  br i1 %859, label %819, label %820, !llvm.loop !193

860:                                              ; preds = %819, %860
  %861 = phi float [ %878, %860 ], [ 0.000000e+00, %819 ]
  %862 = phi i64 [ %879, %860 ], [ 0, %819 ]
  %863 = getelementptr inbounds [3 x float], ptr %319, i64 %862
  %864 = getelementptr inbounds [3 x float], ptr %317, i64 %862
  %865 = load float, ptr %863, align 4, !tbaa !81
  %866 = load float, ptr %864, align 4, !tbaa !81
  %867 = getelementptr inbounds float, ptr %863, i64 1
  %868 = load float, ptr %867, align 4, !tbaa !81
  %869 = getelementptr inbounds float, ptr %864, i64 1
  %870 = load float, ptr %869, align 4, !tbaa !81
  %871 = fmul float %868, %870
  %872 = tail call float @llvm.fmuladd.f32(float %865, float %866, float %871)
  %873 = getelementptr inbounds float, ptr %863, i64 2
  %874 = load float, ptr %873, align 4, !tbaa !81
  %875 = getelementptr inbounds float, ptr %864, i64 2
  %876 = load float, ptr %875, align 4, !tbaa !81
  %877 = tail call float @llvm.fmuladd.f32(float %874, float %876, float %872)
  %878 = fadd float %861, %877
  %879 = add nuw nsw i64 %862, 1
  %880 = icmp eq i64 %879, %315
  br i1 %880, label %881, label %860, !llvm.loop !195

881:                                              ; preds = %860, %819
  %882 = phi float [ 0.000000e+00, %819 ], [ %878, %860 ]
  %883 = fdiv float %654, %882
  br i1 %648, label %941, label %884

884:                                              ; preds = %881, %884
  %885 = phi i64 [ %901, %884 ], [ 0, %881 ]
  %886 = getelementptr inbounds [3 x float], ptr %8, i64 %885
  %887 = load float, ptr %886, align 4, !tbaa !81
  %888 = getelementptr inbounds [3 x float], ptr %319, i64 %885
  %889 = load float, ptr %888, align 4, !tbaa !81
  %890 = tail call float @llvm.fmuladd.f32(float %889, float %883, float %887)
  store float %890, ptr %886, align 4, !tbaa !81
  %891 = getelementptr inbounds float, ptr %886, i64 1
  %892 = load float, ptr %891, align 4, !tbaa !81
  %893 = getelementptr inbounds float, ptr %888, i64 1
  %894 = load float, ptr %893, align 4, !tbaa !81
  %895 = tail call float @llvm.fmuladd.f32(float %894, float %883, float %892)
  store float %895, ptr %891, align 4, !tbaa !81
  %896 = getelementptr inbounds float, ptr %886, i64 2
  %897 = load float, ptr %896, align 4, !tbaa !81
  %898 = getelementptr inbounds float, ptr %888, i64 2
  %899 = load float, ptr %898, align 4, !tbaa !81
  %900 = tail call float @llvm.fmuladd.f32(float %899, float %883, float %897)
  store float %900, ptr %896, align 4, !tbaa !81
  %901 = add nuw nsw i64 %885, 1
  %902 = icmp eq i64 %901, %649
  br i1 %902, label %904, label %884, !llvm.loop !102

903:                                              ; preds = %904
  br i1 %646, label %941, label %926

904:                                              ; preds = %884, %904
  %905 = phi i64 [ %924, %904 ], [ 0, %884 ]
  %906 = getelementptr inbounds [3 x float], ptr %323, i64 %905
  %907 = load float, ptr %906, align 4, !tbaa !81
  %908 = getelementptr inbounds [3 x float], ptr %317, i64 %905
  %909 = load float, ptr %908, align 4, !tbaa !81
  %910 = fneg float %909
  %911 = tail call float @llvm.fmuladd.f32(float %910, float %883, float %907)
  store float %911, ptr %906, align 4, !tbaa !81
  %912 = getelementptr inbounds float, ptr %906, i64 1
  %913 = load float, ptr %912, align 4, !tbaa !81
  %914 = getelementptr inbounds float, ptr %908, i64 1
  %915 = load float, ptr %914, align 4, !tbaa !81
  %916 = fneg float %915
  %917 = tail call float @llvm.fmuladd.f32(float %916, float %883, float %913)
  store float %917, ptr %912, align 4, !tbaa !81
  %918 = getelementptr inbounds float, ptr %906, i64 2
  %919 = load float, ptr %918, align 4, !tbaa !81
  %920 = getelementptr inbounds float, ptr %908, i64 2
  %921 = load float, ptr %920, align 4, !tbaa !81
  %922 = fneg float %921
  %923 = tail call float @llvm.fmuladd.f32(float %922, float %883, float %919)
  store float %923, ptr %918, align 4, !tbaa !81
  %924 = add nuw nsw i64 %905, 1
  %925 = icmp eq i64 %924, %650
  br i1 %925, label %903, label %904, !llvm.loop !196

926:                                              ; preds = %903, %926
  %927 = phi float [ %938, %926 ], [ 0.000000e+00, %903 ]
  %928 = phi i64 [ %939, %926 ], [ 0, %903 ]
  %929 = getelementptr inbounds [3 x float], ptr %323, i64 %928
  %930 = load float, ptr %929, align 4, !tbaa !81
  %931 = getelementptr inbounds float, ptr %929, i64 1
  %932 = load float, ptr %931, align 4, !tbaa !81
  %933 = fmul float %932, %932
  %934 = tail call float @llvm.fmuladd.f32(float %930, float %930, float %933)
  %935 = getelementptr inbounds float, ptr %929, i64 2
  %936 = load float, ptr %935, align 4, !tbaa !81
  %937 = tail call float @llvm.fmuladd.f32(float %936, float %936, float %934)
  %938 = fadd float %927, %937
  %939 = add nuw nsw i64 %928, 1
  %940 = icmp eq i64 %939, %315
  br i1 %940, label %941, label %926, !llvm.loop !195

941:                                              ; preds = %926, %881, %903
  %942 = phi float [ 0.000000e+00, %903 ], [ 0.000000e+00, %881 ], [ %938, %926 ]
  %943 = fdiv float %942, %654
  br i1 %647, label %944, label %948

944:                                              ; preds = %948, %941
  %945 = icmp eq i32 %815, 0
  br i1 %945, label %1007, label %946

946:                                              ; preds = %944
  %947 = zext i32 %815 to i64
  br label %967

948:                                              ; preds = %941, %948
  %949 = phi i64 [ %965, %948 ], [ 0, %941 ]
  %950 = getelementptr inbounds [3 x float], ptr %323, i64 %949
  %951 = load float, ptr %950, align 4, !tbaa !81
  %952 = getelementptr inbounds [3 x float], ptr %319, i64 %949
  %953 = load float, ptr %952, align 4, !tbaa !81
  %954 = tail call float @llvm.fmuladd.f32(float %953, float %943, float %951)
  store float %954, ptr %952, align 4, !tbaa !81
  %955 = getelementptr inbounds float, ptr %950, i64 1
  %956 = load float, ptr %955, align 4, !tbaa !81
  %957 = getelementptr inbounds float, ptr %952, i64 1
  %958 = load float, ptr %957, align 4, !tbaa !81
  %959 = tail call float @llvm.fmuladd.f32(float %958, float %943, float %956)
  store float %959, ptr %957, align 4, !tbaa !81
  %960 = getelementptr inbounds float, ptr %950, i64 2
  %961 = load float, ptr %960, align 4, !tbaa !81
  %962 = getelementptr inbounds float, ptr %952, i64 2
  %963 = load float, ptr %962, align 4, !tbaa !81
  %964 = tail call float @llvm.fmuladd.f32(float %963, float %943, float %961)
  store float %964, ptr %962, align 4, !tbaa !81
  %965 = add nuw nsw i64 %949, 1
  %966 = icmp eq i64 %965, %651
  br i1 %966, label %944, label %948, !llvm.loop !102

967:                                              ; preds = %946, %967
  %968 = phi i64 [ 0, %946 ], [ %1005, %967 ]
  %969 = getelementptr inbounds %struct.fmatrix3x3, ptr %9, i64 %968
  %970 = getelementptr inbounds %struct.fmatrix3x3, ptr %9, i64 %968, i32 2
  %971 = load i32, ptr %970, align 4, !tbaa !75
  %972 = zext i32 %971 to i64
  %973 = getelementptr inbounds [3 x float], ptr %319, i64 %972
  %974 = load float, ptr %969, align 4, !tbaa !81
  %975 = load float, ptr %973, align 4, !tbaa !81
  %976 = getelementptr inbounds [3 x float], ptr %969, i64 1
  %977 = load float, ptr %976, align 4, !tbaa !81
  %978 = getelementptr inbounds float, ptr %973, i64 1
  %979 = load float, ptr %978, align 4, !tbaa !81
  %980 = fmul float %977, %979
  %981 = tail call float @llvm.fmuladd.f32(float %974, float %975, float %980)
  %982 = getelementptr inbounds [3 x float], ptr %969, i64 2
  %983 = load float, ptr %982, align 4, !tbaa !81
  %984 = getelementptr inbounds float, ptr %973, i64 2
  %985 = load float, ptr %984, align 4, !tbaa !81
  %986 = tail call float @llvm.fmuladd.f32(float %983, float %985, float %981)
  store float %986, ptr %973, align 4, !tbaa !81
  %987 = getelementptr inbounds [3 x float], ptr %969, i64 0, i64 1
  %988 = load float, ptr %987, align 4, !tbaa !81
  %989 = getelementptr inbounds [3 x float], ptr %969, i64 1, i64 1
  %990 = load float, ptr %989, align 4, !tbaa !81
  %991 = fmul float %979, %990
  %992 = tail call float @llvm.fmuladd.f32(float %988, float %986, float %991)
  %993 = getelementptr inbounds [3 x float], ptr %969, i64 2, i64 1
  %994 = load float, ptr %993, align 4, !tbaa !81
  %995 = tail call float @llvm.fmuladd.f32(float %994, float %985, float %992)
  store float %995, ptr %978, align 4, !tbaa !81
  %996 = getelementptr inbounds [3 x float], ptr %969, i64 0, i64 2
  %997 = load float, ptr %996, align 4, !tbaa !81
  %998 = getelementptr inbounds [3 x float], ptr %969, i64 1, i64 2
  %999 = load float, ptr %998, align 4, !tbaa !81
  %1000 = fmul float %995, %999
  %1001 = tail call float @llvm.fmuladd.f32(float %997, float %986, float %1000)
  %1002 = getelementptr inbounds [3 x float], ptr %969, i64 2, i64 2
  %1003 = load float, ptr %1002, align 4, !tbaa !81
  %1004 = tail call float @llvm.fmuladd.f32(float %1003, float %985, float %1001)
  store float %1004, ptr %984, align 4, !tbaa !81
  %1005 = add nuw nsw i64 %968, 1
  %1006 = icmp eq i64 %1005, %947
  br i1 %1006, label %1007, label %967, !llvm.loop !193

1007:                                             ; preds = %967, %944
  %1008 = add nuw nsw i32 %653, 1
  %1009 = fcmp ogt float %942, %642
  %1010 = icmp ult i32 %653, 99
  %1011 = select i1 %1009, i1 %1010, i1 false
  br i1 %1011, label %652, label %1012, !llvm.loop !197

1012:                                             ; preds = %1007, %640
  %1013 = icmp eq ptr %317, null
  br i1 %1013, label %1016, label %1014

1014:                                             ; preds = %1012
  %1015 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %1015(ptr noundef nonnull %317) #9
  br label %1016

1016:                                             ; preds = %1014, %1012
  %1017 = icmp eq ptr %319, null
  br i1 %1017, label %1020, label %1018

1018:                                             ; preds = %1016
  %1019 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %1019(ptr noundef nonnull %319) #9
  br label %1020

1020:                                             ; preds = %1018, %1016
  %1021 = icmp eq ptr %321, null
  br i1 %1021, label %1024, label %1022

1022:                                             ; preds = %1020
  %1023 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %1023(ptr noundef nonnull %321) #9
  br label %1024

1024:                                             ; preds = %1022, %1020
  %1025 = icmp eq ptr %323, null
  br i1 %1025, label %1028, label %1026

1026:                                             ; preds = %1024
  %1027 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %1027(ptr noundef nonnull %323) #9
  br label %1028

1028:                                             ; preds = %1024, %1026
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %8, i64 %18, i1 false)
  %1029 = icmp eq i32 %15, 0
  br i1 %1029, label %1054, label %1030

1030:                                             ; preds = %1028
  %1031 = zext i32 %15 to i64
  br label %1032

1032:                                             ; preds = %1030, %1032
  %1033 = phi i64 [ 0, %1030 ], [ %1052, %1032 ]
  %1034 = getelementptr inbounds [3 x float], ptr %1, i64 %1033
  %1035 = load float, ptr %1034, align 4, !tbaa !81
  %1036 = getelementptr inbounds [3 x float], ptr %8, i64 %1033
  %1037 = load float, ptr %1036, align 4, !tbaa !81
  %1038 = fadd float %1035, %1037
  %1039 = getelementptr inbounds [3 x float], ptr %0, i64 %1033
  store float %1038, ptr %1039, align 4, !tbaa !81
  %1040 = getelementptr inbounds float, ptr %1034, i64 1
  %1041 = load float, ptr %1040, align 4, !tbaa !81
  %1042 = getelementptr inbounds float, ptr %1036, i64 1
  %1043 = load float, ptr %1042, align 4, !tbaa !81
  %1044 = fadd float %1041, %1043
  %1045 = getelementptr inbounds float, ptr %1039, i64 1
  store float %1044, ptr %1045, align 4, !tbaa !81
  %1046 = getelementptr inbounds float, ptr %1034, i64 2
  %1047 = load float, ptr %1046, align 4, !tbaa !81
  %1048 = getelementptr inbounds float, ptr %1036, i64 2
  %1049 = load float, ptr %1048, align 4, !tbaa !81
  %1050 = fadd float %1047, %1049
  %1051 = getelementptr inbounds float, ptr %1039, i64 2
  store float %1050, ptr %1051, align 4, !tbaa !81
  %1052 = add nuw nsw i64 %1033, 1
  %1053 = icmp eq i64 %1052, %1031
  br i1 %1053, label %1054, label %1032, !llvm.loop !191

1054:                                             ; preds = %1032, %1028
  %1055 = icmp eq ptr %19, null
  br i1 %1055, label %1058, label %1056

1056:                                             ; preds = %1054
  %1057 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %1057(ptr noundef nonnull %19) #9
  br label %1058

1058:                                             ; preds = %1054, %1056
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @cloth_bvh_objcollision(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @implicit_set_positions(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.Cloth, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !49
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Cloth, ptr %3, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.Implicit_Data, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = zext i32 %6 to i64
  br label %15

15:                                               ; preds = %8, %15
  %16 = phi i64 [ 0, %8 ], [ %35, %15 ]
  %17 = getelementptr inbounds [3 x float], ptr %11, i64 %16
  %18 = getelementptr inbounds %struct.ClothVertex, ptr %4, i64 %16, i32 3
  %19 = load float, ptr %18, align 4, !tbaa !81
  store float %19, ptr %17, align 4, !tbaa !81
  %20 = getelementptr inbounds float, ptr %18, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !81
  %22 = getelementptr inbounds float, ptr %17, i64 1
  store float %21, ptr %22, align 4, !tbaa !81
  %23 = getelementptr inbounds float, ptr %18, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !81
  %25 = getelementptr inbounds float, ptr %17, i64 2
  store float %24, ptr %25, align 4, !tbaa !81
  %26 = getelementptr inbounds [3 x float], ptr %13, i64 %16
  %27 = getelementptr inbounds %struct.ClothVertex, ptr %4, i64 %16, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !81
  store float %28, ptr %26, align 4, !tbaa !81
  %29 = getelementptr inbounds float, ptr %27, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !81
  %31 = getelementptr inbounds float, ptr %26, i64 1
  store float %30, ptr %31, align 4, !tbaa !81
  %32 = getelementptr inbounds float, ptr %27, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !81
  %34 = getelementptr inbounds float, ptr %26, i64 2
  store float %33, ptr %34, align 4, !tbaa !81
  %35 = add nuw nsw i64 %16, 1
  %36 = icmp eq i64 %35, %14
  br i1 %36, label %37, label %15, !llvm.loop !198

37:                                               ; preds = %15, %1
  %38 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !34
  %39 = icmp sgt i16 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %42

42:                                               ; preds = %40, %37
  ret void
}

declare void @pd_point_from_loc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_collider_cache(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_collider_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

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
!73 = !{!74, !41, i64 0}
!74 = !{!"ClothVertex", !41, i64 0, !37, i64 4, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 64, !37, i64 76, !53, i64 88, !53, i64 92, !37, i64 96, !36, i64 112, !41, i64 120, !53, i64 124, !53, i64 128, !53, i64 132, !53, i64 136, !41, i64 140, !53, i64 144}
!75 = !{!52, !41, i64 40}
!76 = !{!52, !41, i64 36}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!74, !53, i64 88}
!81 = !{!53, !53, i64 0}
!82 = distinct !{!82, !78, !79}
!83 = !{!84, !36, i64 8}
!84 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!85 = !{!86, !41, i64 0}
!86 = !{!"ClothSpring", !41, i64 0, !41, i64 4, !53, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 60, !37, i64 96, !53, i64 108, !53, i64 112}
!87 = !{!86, !41, i64 4}
!88 = !{!86, !41, i64 12}
!89 = distinct !{!89, !78, !79}
!90 = distinct !{!90, !78, !79}
!91 = distinct !{!91, !78, !79}
!92 = distinct !{!92, !78, !79}
!93 = !{!43, !36, i64 128}
!94 = !{!95, !53, i64 72}
!95 = !{!"ClothSimSettings", !36, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !37, i64 20, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !53, i64 64, !53, i64 68, !53, i64 72, !53, i64 76, !53, i64 80, !53, i64 84, !53, i64 88, !53, i64 92, !53, i64 96, !53, i64 100, !53, i64 104, !53, i64 108, !53, i64 112, !53, i64 116, !53, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !37, i64 156, !36, i64 160}
!96 = !{!95, !41, i64 124}
!97 = !{!95, !41, i64 128}
!98 = distinct !{!98, !78, !79}
!99 = distinct !{!99, !78, !79}
!100 = !{!95, !53, i64 112}
!101 = distinct !{!101, !78, !79}
!102 = distinct !{!102, !78, !79}
!103 = distinct !{!103, !78, !79}
!104 = !{!43, !36, i64 136}
!105 = !{!106, !41, i64 32}
!106 = !{!"ClothCollSettings", !36, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !41, i64 32, !40, i64 36, !40, i64 38, !36, i64 40, !40, i64 48, !40, i64 50, !41, i64 52}
!107 = !{!46, !36, i64 32}
!108 = distinct !{!108, !78, !79}
!109 = distinct !{!109, !78, !79}
!110 = distinct !{!110, !78, !79}
!111 = distinct !{!111, !78, !79}
!112 = distinct !{!112, !78, !79}
!113 = distinct !{!113, !78, !79}
!114 = !{!95, !53, i64 16}
!115 = !{!46, !36, i64 48}
!116 = !{!43, !36, i64 112}
!117 = !{!118, !41, i64 4628}
!118 = !{!"Scene", !119, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !120, i64 280, !129, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !39, i64 4384, !130, i64 4400, !131, i64 4416, !134, i64 4600, !36, i64 4608, !135, i64 4616, !36, i64 4640, !136, i64 4648, !136, i64 4656, !122, i64 4664, !123, i64 4824, !137, i64 4888, !36, i64 4952}
!119 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!120 = !{!"RenderData", !121, i64 0, !36, i64 248, !36, i64 256, !124, i64 264, !125, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !53, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !126, i64 544, !126, i64 560, !127, i64 576, !39, i64 592, !40, i64 608, !40, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !41, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !53, i64 660, !53, i64 664, !40, i64 668, !40, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !53, i64 2528, !53, i64 2532, !40, i64 2536, !40, i64 2538, !53, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !41, i64 2576, !53, i64 2580, !37, i64 2584, !128, i64 2616, !41, i64 3976, !41, i64 3980}
!121 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !122, i64 24, !123, i64 184}
!122 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!123 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!124 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!125 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !53, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!126 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!127 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!128 = !{!"BakeData", !121, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!129 = !{!"AudioData", !41, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !53, i64 24, !53, i64 28}
!130 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!131 = !{!"GameData", !130, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !132, i64 40, !40, i64 64, !40, i64 66, !53, i64 68, !133, i64 72, !53, i64 128, !53, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!132 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!133 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !41, i64 40, !53, i64 44, !53, i64 48, !40, i64 52, !40, i64 54}
!134 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!135 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!136 = !{!"long", !37, i64 0}
!137 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!138 = !{!95, !36, i64 160}
!139 = !{!140, !53, i64 64}
!140 = !{!"EffectorWeights", !36, i64 0, !37, i64 8, !53, i64 64, !40, i64 68, !37, i64 70, !41, i64 76}
!141 = distinct !{!141, !78, !79}
!142 = distinct !{!142, !78, !79}
!143 = !{!95, !53, i64 104}
!144 = !{!95, !53, i64 108}
!145 = distinct !{!145, !78, !79}
!146 = !{!147, !53, i64 12}
!147 = !{!"HairGridVert", !37, i64 0, !53, i64 12}
!148 = distinct !{!148, !78, !79}
!149 = distinct !{!149, !78, !79}
!150 = !{!151, !36, i64 24}
!151 = !{!"ColliderCache", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!152 = !{!153, !41, i64 168}
!153 = !{!"CollisionModifierData", !44, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !41, i64 172, !53, i64 176, !53, i64 180, !36, i64 184}
!154 = !{!153, !36, i64 120}
!155 = !{!153, !36, i64 112}
!156 = distinct !{!156, !78, !79}
!157 = distinct !{!157, !78, !79}
!158 = distinct !{!158, !78, !79}
!159 = distinct !{!159, !78, !79}
!160 = distinct !{!160, !78, !79}
!161 = distinct !{!161, !78, !79}
!162 = distinct !{!162, !78, !79}
!163 = !{!46, !41, i64 24}
!164 = distinct !{!164, !78, !79}
!165 = !{!166, !41, i64 12}
!166 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !37, i64 18, !37, i64 19}
!167 = !{!166, !41, i64 0}
!168 = !{!166, !41, i64 4}
!169 = !{!166, !41, i64 8}
!170 = distinct !{!170, !78, !79}
!171 = !{!86, !41, i64 16}
!172 = !{!86, !53, i64 8}
!173 = distinct !{!173, !78, !79}
!174 = !{!86, !41, i64 20}
!175 = !{!95, !53, i64 40}
!176 = !{!86, !53, i64 108}
!177 = !{!95, !53, i64 56}
!178 = !{!95, !53, i64 68}
!179 = !{!95, !53, i64 64}
!180 = !{!95, !53, i64 12}
!181 = !{!95, !53, i64 96}
!182 = !{!74, !53, i64 92}
!183 = !{!95, !53, i64 100}
!184 = !{!95, !53, i64 48}
!185 = !{!95, !53, i64 52}
!186 = distinct !{!186, !78, !79}
!187 = distinct !{!187, !78, !79}
!188 = distinct !{!188, !78, !79}
!189 = distinct !{!189, !78, !79}
!190 = distinct !{!190, !78, !79}
!191 = distinct !{!191, !78, !79}
!192 = distinct !{!192, !78, !79}
!193 = distinct !{!193, !78, !79}
!194 = distinct !{!194, !78, !79}
!195 = distinct !{!195, !78, !79}
!196 = distinct !{!196, !78, !79}
!197 = distinct !{!197, !78, !79}
!198 = distinct !{!198, !78, !79}
