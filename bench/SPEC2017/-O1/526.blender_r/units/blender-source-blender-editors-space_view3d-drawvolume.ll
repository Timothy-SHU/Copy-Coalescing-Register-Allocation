; ModuleID = 'blender/source/blender/editors/space_view3d/drawvolume.c'
source_filename = "blender/source/blender/editors/space_view3d/drawvolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }

@__const.draw_smoke_volume.cv = private unnamed_addr constant [8 x [3 x float]] [[3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float -1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00]], align 16
@__const.draw_smoke_volume.edges = private unnamed_addr constant [12 x [2 x [3 x float]]] [[2 x [3 x float]] [[3 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 2.000000e+00]], [2 x [3 x float]] [[3 x float] [float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 2.000000e+00]], [2 x [3 x float]] [[3 x float] [float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 2.000000e+00]], [2 x [3 x float]] [[3 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 0.000000e+00, float 2.000000e+00]], [2 x [3 x float]] [[3 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float 2.000000e+00, float 0.000000e+00]], [2 x [3 x float]] [[3 x float] [float -1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float 2.000000e+00, float 0.000000e+00]], [2 x [3 x float]] [[3 x float] [float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 2.000000e+00, float 0.000000e+00]], [2 x [3 x float]] [[3 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 0.000000e+00, float 2.000000e+00, float 0.000000e+00]], [2 x [3 x float]] [[3 x float] [float -1.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 2.000000e+00, float 0.000000e+00, float 0.000000e+00]], [2 x [3 x float]] [[3 x float] [float -1.000000e+00, float -1.000000e+00, float 1.000000e+00], [3 x float] [float 2.000000e+00, float 0.000000e+00, float 0.000000e+00]], [2 x [3 x float]] [[3 x float] [float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], [3 x float] [float 2.000000e+00, float 0.000000e+00, float 0.000000e+00]], [2 x [3 x float]] [[3 x float] [float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [3 x float] [float 2.000000e+00, float 0.000000e+00, float 0.000000e+00]]], align 16
@.str = private unnamed_addr constant [750 x i8] c"!!ARBfp1.0\0APARAM dx = program.local[0];\0APARAM darkness = program.local[1];\0APARAM render = program.local[2];\0APARAM f = {1.442695041, 1.442695041, 1.442695041, 0.01};\0ATEMP temp, shadow, flame, spec, value;\0ATEX temp, fragment.texcoord[0], texture[0], 3D;\0ATEX shadow, fragment.texcoord[0], texture[1], 3D;\0ATEX flame, fragment.texcoord[0], texture[2], 3D;\0ATEX spec, flame.r, texture[3], 1D;\0AMUL value.r, temp.a, darkness.a;\0AMUL value.r, value.r, dx.r;\0AMUL value.r, value.r, f.r;\0AEX2 temp, -value.r;\0ASUB temp.a, 1.0, temp.r;\0AMUL temp.r, temp.r, shadow.r;\0AMUL temp.g, temp.g, shadow.r;\0AMUL temp.b, temp.b, shadow.r;\0AMUL temp.r, temp.r, darkness.r;\0AMUL temp.g, temp.g, darkness.g;\0AMUL temp.b, temp.b, darkness.b;\0ACMP result.color, render.r, temp, spec;\0AEND\0A\00", align 1
@.str.1 = private unnamed_addr constant [860 x i8] c"!!ARBfp1.0\0APARAM dx = program.local[0];\0APARAM darkness = program.local[1];\0APARAM render = program.local[2];\0APARAM f = {1.442695041, 1.442695041, 1.442695041, 1.442695041};\0ATEMP temp, shadow, flame, spec, value;\0ATEX temp, fragment.texcoord[0], texture[0], 3D;\0ATEX shadow, fragment.texcoord[0], texture[1], 3D;\0ATEX flame, fragment.texcoord[0], texture[2], 3D;\0ATEX spec, flame.r, texture[3], 1D;\0ARCP value.r, temp.a;\0AMUL temp.r, temp.r, value.r;\0AMUL temp.g, temp.g, value.r;\0AMUL temp.b, temp.b, value.r;\0AMUL value.r, temp.a, darkness.a;\0AMUL value.r, value.r, dx.r;\0AMUL value.r, value.r, f.r;\0AEX2 value.r, -value.r;\0ASUB temp.a, 1.0, value.r;\0AMUL temp.r, temp.r, shadow.r;\0AMUL temp.g, temp.g, shadow.r;\0AMUL temp.b, temp.b, shadow.r;\0AMUL temp.r, temp.r, value.r;\0AMUL temp.g, temp.g, value.r;\0AMUL temp.b, temp.b, value.r;\0ACMP result.color, render.r, temp, spec;\0AEND\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"GL_ARB_fragment_program\00", align 1
@__glewGenProgramsARB = external local_unnamed_addr global ptr, align 8
@__glewBindProgramARB = external local_unnamed_addr global ptr, align 8
@__glewProgramStringARB = external local_unnamed_addr global ptr, align 8
@__glewProgramLocalParameter4fARB = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"smoke_points_preview\00", align 1
@__GLEW_VERSION_1_4 = external local_unnamed_addr global i8, align 1
@__glewBlendFuncSeparate = external local_unnamed_addr global ptr, align 8
@__GLEW_ARB_fragment_program = external local_unnamed_addr global i8, align 1
@__glewDeleteProgramsARB = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [57 x i8] c"Could not allocate 3D texture for 3D View smoke drawing.\00", align 1
@str.7 = private unnamed_addr constant [54 x i8] c"Your gfx card does not support 3D View smoke drawing.\00", align 1
@str.8 = private unnamed_addr constant [17 x i8] c"No volume shadow\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @draw_smoke_volume(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, float noundef %6, float noundef %7, ptr nocapture noundef readonly %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x [3 x float]], align 16
  %15 = alloca [12 x [2 x [3 x float]]], align 16
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = tail call float @llvm.fabs.f32(float %18)
  %20 = fdiv float 1.000000e+00, %19
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fdiv float 1.000000e+00, %23
  %25 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = fdiv float 1.000000e+00, %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 0, ptr %12, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  store i32 0, ptr %13, align 4, !tbaa !38
  %29 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 53
  %30 = load i32, ptr %29, align 4, !tbaa !40
  %31 = and i32 %30, 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %14) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %14, ptr noundef nonnull align 16 dereferenceable(96) @__const.draw_smoke_volume.cv, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %15) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %15, ptr noundef nonnull align 16 dereferenceable(288) @__const.draw_smoke_volume.edges, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #9
  %32 = icmp eq ptr %2, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %11
  %34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %586

35:                                               ; preds = %11
  %36 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #10
  tail call void @flame_get_spectrum(ptr noundef %36, i32 noundef 256, float noundef 1.500000e+03, float noundef 3.000000e+03) #9
  %37 = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #10
  br label %38

38:                                               ; preds = %35, %95
  %39 = phi i64 [ 0, %35 ], [ %96, %95 ]
  %40 = shl nuw nsw i64 %39, 8
  br label %41

41:                                               ; preds = %38, %92
  %42 = phi i64 [ 0, %38 ], [ %93, %92 ]
  %43 = shl nuw nsw i64 %42, 12
  %44 = add nuw nsw i64 %43, %40
  br label %45

45:                                               ; preds = %41, %86
  %46 = phi i64 [ 0, %41 ], [ %90, %86 ]
  %47 = add nuw nsw i64 %46, %44
  %48 = shl nuw nsw i64 %47, 2
  %49 = icmp ugt i64 %46, 6
  br i1 %49, label %50, label %79

50:                                               ; preds = %45
  %51 = shl nuw nsw i64 %46, 2
  %52 = getelementptr inbounds i8, ptr %36, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !44
  %54 = uitofp i8 %53 to float
  %55 = fdiv float %54, 2.550000e+02
  %56 = getelementptr inbounds float, ptr %37, i64 %48
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = or disjoint i64 %51, 1
  %58 = getelementptr inbounds i8, ptr %36, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !44
  %60 = uitofp i8 %59 to float
  %61 = fdiv float %60, 2.550000e+02
  %62 = or disjoint i64 %48, 1
  %63 = getelementptr inbounds float, ptr %37, i64 %62
  store float %61, ptr %63, align 4, !tbaa !34
  %64 = or disjoint i64 %51, 2
  %65 = getelementptr inbounds i8, ptr %36, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !44
  %67 = uitofp i8 %66 to float
  %68 = fdiv float %67, 2.550000e+02
  %69 = or disjoint i64 %48, 2
  %70 = getelementptr inbounds float, ptr %37, i64 %69
  store float %68, ptr %70, align 4, !tbaa !34
  %71 = icmp ugt i64 %46, 100
  %72 = trunc i64 %46 to i32
  %73 = add i32 %72, -7
  %74 = sitofp i32 %73 to float
  %75 = fdiv float %74, 9.300000e+01
  %76 = fmul float %75, 0x3FAEB851E0000000
  %77 = select i1 %71, float 0x3FAEB851E0000000, float %76
  %78 = or disjoint i64 %48, 3
  br label %86

79:                                               ; preds = %45
  %80 = or disjoint i64 %48, 3
  %81 = getelementptr inbounds float, ptr %37, i64 %80
  store float 0.000000e+00, ptr %81, align 4, !tbaa !34
  %82 = or disjoint i64 %48, 2
  %83 = getelementptr inbounds float, ptr %37, i64 %82
  store float 0.000000e+00, ptr %83, align 4, !tbaa !34
  %84 = or disjoint i64 %48, 1
  %85 = getelementptr inbounds float, ptr %37, i64 %84
  store float 0.000000e+00, ptr %85, align 4, !tbaa !34
  br label %86

86:                                               ; preds = %79, %50
  %87 = phi i64 [ %48, %79 ], [ %78, %50 ]
  %88 = phi float [ 0.000000e+00, %79 ], [ %77, %50 ]
  %89 = getelementptr inbounds float, ptr %37, i64 %87
  store float %88, ptr %89, align 4, !tbaa !34
  %90 = add nuw nsw i64 %46, 1
  %91 = icmp eq i64 %90, 256
  br i1 %91, label %92, label %45, !llvm.loop !45

92:                                               ; preds = %86
  %93 = add nuw nsw i64 %42, 1
  %94 = icmp eq i64 %93, 16
  br i1 %94, label %95, label %41, !llvm.loop !48

95:                                               ; preds = %92
  %96 = add nuw nsw i64 %39, 1
  %97 = icmp eq i64 %96, 16
  br i1 %97, label %98, label %38, !llvm.loop !49

98:                                               ; preds = %95
  %99 = tail call ptr @GPU_texture_create_1D(i32 noundef 256, ptr noundef %37, ptr noundef null) #9
  %100 = load float, ptr %4, align 4, !tbaa !34
  %101 = load float, ptr %3, align 4, !tbaa !34
  %102 = fsub float %100, %101
  %103 = getelementptr inbounds float, ptr %4, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !34
  %105 = getelementptr inbounds float, ptr %3, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !34
  %107 = fsub float %104, %106
  %108 = getelementptr inbounds float, ptr %4, i64 2
  %109 = load float, ptr %108, align 4, !tbaa !34
  %110 = getelementptr inbounds float, ptr %3, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = fsub float %109, %111
  store float %100, ptr %14, align 16, !tbaa !34
  %113 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  store float %104, ptr %113, align 4, !tbaa !34
  %114 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  store float %109, ptr %114, align 8, !tbaa !34
  %115 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 1
  store float %101, ptr %115, align 4, !tbaa !34
  %116 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 1, i64 1
  store float %104, ptr %116, align 16, !tbaa !34
  %117 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 1, i64 2
  store float %109, ptr %117, align 4, !tbaa !34
  %118 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 2
  store float %101, ptr %118, align 8, !tbaa !34
  %119 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 2, i64 1
  store float %106, ptr %119, align 4, !tbaa !34
  %120 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 2, i64 2
  store float %109, ptr %120, align 16, !tbaa !34
  %121 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 3
  store float %100, ptr %121, align 4, !tbaa !34
  %122 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 3, i64 1
  store float %106, ptr %122, align 8, !tbaa !34
  %123 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 3, i64 2
  store float %109, ptr %123, align 4, !tbaa !34
  %124 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 4
  store float %100, ptr %124, align 16, !tbaa !34
  %125 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 4, i64 1
  store float %104, ptr %125, align 4, !tbaa !34
  %126 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 4, i64 2
  store float %111, ptr %126, align 8, !tbaa !34
  %127 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 5
  store float %101, ptr %127, align 4, !tbaa !34
  %128 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 5, i64 1
  store float %104, ptr %128, align 16, !tbaa !34
  %129 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 5, i64 2
  store float %111, ptr %129, align 4, !tbaa !34
  %130 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 6
  store float %101, ptr %130, align 8, !tbaa !34
  %131 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 6, i64 1
  store float %106, ptr %131, align 4, !tbaa !34
  %132 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 6, i64 2
  store float %111, ptr %132, align 16, !tbaa !34
  %133 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 7
  store float %100, ptr %133, align 4, !tbaa !34
  %134 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 7, i64 1
  store float %106, ptr %134, align 8, !tbaa !34
  %135 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 7, i64 2
  store float %111, ptr %135, align 4, !tbaa !34
  store float %100, ptr %15, align 16, !tbaa !34
  %136 = getelementptr inbounds float, ptr %15, i64 1
  store float %104, ptr %136, align 4, !tbaa !34
  %137 = getelementptr inbounds float, ptr %15, i64 2
  store float %111, ptr %137, align 8, !tbaa !34
  %138 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 1
  store float %101, ptr %138, align 8, !tbaa !34
  %139 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 1, i64 0, i64 1
  store float %104, ptr %139, align 4, !tbaa !34
  %140 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 1, i64 0, i64 2
  store float %111, ptr %140, align 16, !tbaa !34
  %141 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 2
  store float %101, ptr %141, align 16, !tbaa !34
  %142 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 2, i64 0, i64 1
  store float %106, ptr %142, align 4, !tbaa !34
  %143 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 2, i64 0, i64 2
  store float %111, ptr %143, align 8, !tbaa !34
  %144 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 3
  store float %100, ptr %144, align 8, !tbaa !34
  %145 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 3, i64 0, i64 1
  store float %106, ptr %145, align 4, !tbaa !34
  %146 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 3, i64 0, i64 2
  store float %111, ptr %146, align 16, !tbaa !34
  %147 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 4
  store float %100, ptr %147, align 16, !tbaa !34
  %148 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 4, i64 0, i64 1
  store float %106, ptr %148, align 4, !tbaa !34
  %149 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 4, i64 0, i64 2
  store float %109, ptr %149, align 8, !tbaa !34
  %150 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 5
  store float %101, ptr %150, align 8, !tbaa !34
  %151 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 5, i64 0, i64 1
  store float %106, ptr %151, align 4, !tbaa !34
  %152 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 5, i64 0, i64 2
  store float %109, ptr %152, align 16, !tbaa !34
  %153 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 6
  store float %101, ptr %153, align 16, !tbaa !34
  %154 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 6, i64 0, i64 1
  store float %106, ptr %154, align 4, !tbaa !34
  %155 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 6, i64 0, i64 2
  store float %111, ptr %155, align 8, !tbaa !34
  %156 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 7
  store float %100, ptr %156, align 8, !tbaa !34
  %157 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 7, i64 0, i64 1
  store float %106, ptr %157, align 4, !tbaa !34
  %158 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 7, i64 0, i64 2
  store float %111, ptr %158, align 16, !tbaa !34
  %159 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 8
  store float %101, ptr %159, align 16, !tbaa !34
  %160 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 8, i64 0, i64 1
  store float %104, ptr %160, align 4, !tbaa !34
  %161 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 8, i64 0, i64 2
  store float %109, ptr %161, align 8, !tbaa !34
  %162 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 9
  store float %101, ptr %162, align 8, !tbaa !34
  %163 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 9, i64 0, i64 1
  store float %106, ptr %163, align 4, !tbaa !34
  %164 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 9, i64 0, i64 2
  store float %109, ptr %164, align 16, !tbaa !34
  %165 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 10
  store float %101, ptr %165, align 16, !tbaa !34
  %166 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 10, i64 0, i64 1
  store float %106, ptr %166, align 4, !tbaa !34
  %167 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 10, i64 0, i64 2
  store float %111, ptr %167, align 8, !tbaa !34
  %168 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 11
  store float %101, ptr %168, align 8, !tbaa !34
  %169 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 11, i64 0, i64 1
  store float %104, ptr %169, align 4, !tbaa !34
  %170 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 11, i64 0, i64 2
  store float %111, ptr %170, align 16, !tbaa !34
  %171 = getelementptr inbounds [2 x [3 x float]], ptr %15, i64 0, i64 1, i64 2
  store float %112, ptr %171, align 4, !tbaa !34
  %172 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 1, i64 1, i64 2
  store float %112, ptr %172, align 4, !tbaa !34
  %173 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 2, i64 1, i64 2
  store float %112, ptr %173, align 4, !tbaa !34
  %174 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 3, i64 1, i64 2
  store float %112, ptr %174, align 4, !tbaa !34
  %175 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 4, i64 1, i64 1
  store float %107, ptr %175, align 16, !tbaa !34
  %176 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 5, i64 1, i64 1
  store float %107, ptr %176, align 8, !tbaa !34
  %177 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 6, i64 1, i64 1
  store float %107, ptr %177, align 16, !tbaa !34
  %178 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 7, i64 1, i64 1
  store float %107, ptr %178, align 8, !tbaa !34
  %179 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 8, i64 1
  store float %102, ptr %179, align 4, !tbaa !34
  %180 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 9, i64 1
  store float %102, ptr %180, align 4, !tbaa !34
  %181 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 10, i64 1
  store float %102, ptr %181, align 4, !tbaa !34
  %182 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 11, i64 1
  store float %102, ptr %182, align 4, !tbaa !34
  call void @glGetBooleanv(i32 noundef 3042, ptr noundef nonnull %13) #9
  call void @glGetBooleanv(i32 noundef 2929, ptr noundef nonnull %12) #9
  call void @glDepthMask(i8 noundef zeroext 0) #9
  call void @glDisable(i32 noundef 2929) #9
  call void @glEnable(i32 noundef 3042) #9
  %183 = load float, ptr %8, align 4, !tbaa !34
  %184 = fneg float %183
  %185 = fmul float %102, %184
  %186 = getelementptr inbounds float, ptr %8, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !34
  %188 = fneg float %187
  %189 = fmul float %107, %188
  %190 = getelementptr inbounds float, ptr %8, i64 2
  %191 = load float, ptr %190, align 4, !tbaa !34
  %192 = fneg float %191
  %193 = fmul float %112, %192
  %194 = load float, ptr %3, align 4, !tbaa !34
  br label %195

195:                                              ; preds = %98, %222
  %196 = phi i64 [ 0, %98 ], [ %223, %222 ]
  %197 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 %196
  %198 = load float, ptr %197, align 4, !tbaa !34
  %199 = call float @llvm.fmuladd.f32(float %185, float 5.000000e-01, float %198)
  %200 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 %196, i64 1
  %201 = load float, ptr %200, align 4, !tbaa !34
  %202 = call float @llvm.fmuladd.f32(float %189, float 5.000000e-01, float %201)
  %203 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 %196, i64 2
  %204 = load float, ptr %203, align 4, !tbaa !34
  %205 = call float @llvm.fmuladd.f32(float %193, float 5.000000e-01, float %204)
  %206 = fcmp ult float %199, %194
  br i1 %206, label %222, label %207

207:                                              ; preds = %195
  %208 = load float, ptr %4, align 4, !tbaa !34
  %209 = fcmp ugt float %199, %208
  br i1 %209, label %222, label %210

210:                                              ; preds = %207
  %211 = load float, ptr %105, align 4, !tbaa !34
  %212 = fcmp ult float %202, %211
  br i1 %212, label %222, label %213

213:                                              ; preds = %210
  %214 = load float, ptr %103, align 4, !tbaa !34
  %215 = fcmp ugt float %202, %214
  br i1 %215, label %222, label %216

216:                                              ; preds = %213
  %217 = load float, ptr %110, align 4, !tbaa !34
  %218 = fcmp ult float %205, %217
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load float, ptr %108, align 4, !tbaa !34
  %221 = fcmp ugt float %205, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %219, %216, %213, %210, %207, %195
  %223 = add nuw nsw i64 %196, 1
  %224 = icmp eq i64 %223, 8
  br i1 %224, label %227, label %195, !llvm.loop !50

225:                                              ; preds = %219
  %226 = trunc i64 %196 to i32
  br label %227

227:                                              ; preds = %222, %225
  %228 = phi i32 [ %226, %225 ], [ 8, %222 ]
  %229 = icmp ugt i32 %228, 7
  %230 = select i1 %229, i32 0, i32 %228
  %231 = call zeroext i8 @glewIsSupported(ptr noundef nonnull @.str.3) #9
  %232 = icmp eq i8 %231, 1
  br i1 %232, label %233, label %257

233:                                              ; preds = %227
  call void @glEnable(i32 noundef 34820) #9
  %234 = load ptr, ptr @__glewGenProgramsARB, align 8, !tbaa !51
  call void %234(i32 noundef 1, ptr noundef nonnull %16) #9
  %235 = load ptr, ptr @__glewBindProgramARB, align 8, !tbaa !51
  %236 = load i32, ptr %16, align 4, !tbaa !38
  call void %235(i32 noundef 34820, i32 noundef %236) #9
  %237 = load i32, ptr %29, align 4, !tbaa !40
  %238 = and i32 %237, 4
  %239 = icmp eq i32 %238, 0
  %240 = load ptr, ptr @__glewProgramStringARB, align 8, !tbaa !51
  br i1 %239, label %242, label %241

241:                                              ; preds = %233
  call void %240(i32 noundef 34820, i32 noundef 34933, i32 noundef 859, ptr noundef nonnull @.str.1) #9
  br label %243

242:                                              ; preds = %233
  call void %240(i32 noundef 34820, i32 noundef 34933, i32 noundef 749, ptr noundef nonnull @.str) #9
  br label %243

243:                                              ; preds = %242, %241
  %244 = load ptr, ptr @__glewProgramLocalParameter4fARB, align 8, !tbaa !51
  call void %244(i32 noundef 34820, i32 noundef 0, float noundef %6, float noundef %6, float noundef %6, float noundef 1.000000e+00) #9
  %245 = load i32, ptr %29, align 4, !tbaa !40
  %246 = and i32 %245, 4
  %247 = icmp eq i32 %246, 0
  %248 = load ptr, ptr @__glewProgramLocalParameter4fARB, align 8, !tbaa !51
  br i1 %247, label %250, label %249

249:                                              ; preds = %243
  call void %248(i32 noundef 34820, i32 noundef 1, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+01) #9
  br label %259

250:                                              ; preds = %243
  %251 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 54
  %252 = load float, ptr %251, align 8, !tbaa !34
  %253 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 54, i64 1
  %254 = load float, ptr %253, align 4, !tbaa !34
  %255 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 54, i64 2
  %256 = load float, ptr %255, align 8, !tbaa !34
  call void %248(i32 noundef 34820, i32 noundef 1, float noundef %252, float noundef %254, float noundef %256, float noundef 1.000000e+01) #9
  br label %259

257:                                              ; preds = %227
  %258 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  br label %259

259:                                              ; preds = %249, %250, %257
  call void @GPU_texture_bind(ptr noundef nonnull %2, i32 noundef 0) #9
  %260 = icmp eq ptr %9, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %259
  call void @GPU_texture_bind(ptr noundef nonnull %9, i32 noundef 1) #9
  br label %264

262:                                              ; preds = %259
  %263 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %264

264:                                              ; preds = %262, %261
  %265 = icmp eq ptr %10, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %264
  call void @GPU_texture_bind(ptr noundef nonnull %10, i32 noundef 2) #9
  call void @GPU_texture_bind(ptr noundef %99, i32 noundef 3) #9
  br label %267

267:                                              ; preds = %266, %264
  %268 = call i32 @GPU_non_power_of_two_support() #9
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %321

270:                                              ; preds = %267
  %271 = load i32, ptr %5, align 4, !tbaa !38
  %272 = sitofp i32 %271 to float
  %273 = add i32 %271, -1
  %274 = lshr i32 %273, 1
  %275 = or i32 %274, %273
  %276 = lshr i32 %275, 2
  %277 = or i32 %276, %275
  %278 = lshr i32 %277, 4
  %279 = or i32 %278, %277
  %280 = lshr i32 %279, 8
  %281 = or i32 %280, %279
  %282 = lshr i32 %281, 16
  %283 = or i32 %282, %281
  %284 = add i32 %283, 1
  %285 = uitofp i32 %284 to float
  %286 = fdiv float %272, %285
  %287 = getelementptr inbounds i32, ptr %5, i64 1
  %288 = load i32, ptr %287, align 4, !tbaa !38
  %289 = sitofp i32 %288 to float
  %290 = add i32 %288, -1
  %291 = lshr i32 %290, 1
  %292 = or i32 %291, %290
  %293 = lshr i32 %292, 2
  %294 = or i32 %293, %292
  %295 = lshr i32 %294, 4
  %296 = or i32 %295, %294
  %297 = lshr i32 %296, 8
  %298 = or i32 %297, %296
  %299 = lshr i32 %298, 16
  %300 = or i32 %299, %298
  %301 = add i32 %300, 1
  %302 = uitofp i32 %301 to float
  %303 = fdiv float %289, %302
  %304 = getelementptr inbounds i32, ptr %5, i64 2
  %305 = load i32, ptr %304, align 4, !tbaa !38
  %306 = sitofp i32 %305 to float
  %307 = add i32 %305, -1
  %308 = lshr i32 %307, 1
  %309 = or i32 %308, %307
  %310 = lshr i32 %309, 2
  %311 = or i32 %310, %309
  %312 = lshr i32 %311, 4
  %313 = or i32 %312, %311
  %314 = lshr i32 %313, 8
  %315 = or i32 %314, %313
  %316 = lshr i32 %315, 16
  %317 = or i32 %316, %315
  %318 = add i32 %317, 1
  %319 = uitofp i32 %318 to float
  %320 = fdiv float %306, %319
  br label %321

321:                                              ; preds = %270, %267
  %322 = phi float [ 1.000000e+00, %267 ], [ %286, %270 ]
  %323 = phi float [ 1.000000e+00, %267 ], [ %303, %270 ]
  %324 = phi float [ 1.000000e+00, %267 ], [ %320, %270 ]
  %325 = fdiv float %322, %102
  %326 = fdiv float %323, %107
  %327 = fdiv float %324, %112
  %328 = load float, ptr %8, align 4, !tbaa !34
  %329 = call float @llvm.fabs.f32(float %328)
  %330 = getelementptr inbounds float, ptr %8, i64 1
  %331 = load float, ptr %330, align 4, !tbaa !34
  %332 = call float @llvm.fabs.f32(float %331)
  %333 = fmul float %107, %332
  %334 = call float @llvm.fmuladd.f32(float %329, float %102, float %333)
  %335 = getelementptr inbounds float, ptr %8, i64 2
  %336 = load float, ptr %335, align 4, !tbaa !34
  %337 = call float @llvm.fabs.f32(float %336)
  %338 = call float @llvm.fmuladd.f32(float %337, float %112, float %334)
  %339 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 16
  %340 = load float, ptr %339, align 8, !tbaa !34
  %341 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 16, i64 1
  %342 = load float, ptr %341, align 4, !tbaa !34
  %343 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 16, i64 2
  %344 = load float, ptr %343, align 8, !tbaa !34
  %345 = fcmp ogt float %340, %342
  %346 = select i1 %345, float %340, float %342
  %347 = fcmp ogt float %346, %344
  %348 = select i1 %347, float %346, float %344
  %349 = fmul float %348, 7.812500e-03
  %350 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %351 = call ptr %350(i64 noundef 144, ptr noundef nonnull @.str.6) #9
  %352 = fneg float %349
  %353 = fdiv float %338, %349
  %354 = zext nneg i32 %230 to i64
  %355 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 %354
  %356 = getelementptr inbounds float, ptr %355, i64 1
  %357 = getelementptr inbounds float, ptr %355, i64 2
  %358 = getelementptr inbounds float, ptr %351, i64 1
  %359 = getelementptr inbounds float, ptr %351, i64 2
  %360 = icmp eq i32 %31, 0
  br label %361

361:                                              ; preds = %565, %321
  %362 = phi i32 [ 0, %321 ], [ %566, %565 ]
  %363 = sitofp i32 %362 to float
  %364 = fmul float %349, %363
  %365 = fcmp ule float %364, %338
  br i1 %365, label %366, label %565

366:                                              ; preds = %361
  %367 = load float, ptr %8, align 4, !tbaa !34
  %368 = load float, ptr %330, align 4, !tbaa !34
  %369 = load float, ptr %335, align 4, !tbaa !34
  %370 = fsub float %353, %363
  %371 = fmul float %370, %352
  %372 = fmul float %371, %367
  %373 = fmul float %371, %368
  %374 = fmul float %371, %369
  %375 = load float, ptr %355, align 4, !tbaa !34
  %376 = fadd float %372, %375
  %377 = load float, ptr %356, align 4, !tbaa !34
  %378 = fadd float %373, %377
  %379 = load float, ptr %357, align 4, !tbaa !34
  %380 = fadd float %374, %379
  %381 = fmul float %368, %378
  %382 = call float @llvm.fmuladd.f32(float %376, float %367, float %381)
  %383 = call float @llvm.fmuladd.f32(float %380, float %369, float %382)
  br label %384

384:                                              ; preds = %366, %424
  %385 = phi i64 [ 0, %366 ], [ %426, %424 ]
  %386 = phi i32 [ 0, %366 ], [ %425, %424 ]
  %387 = getelementptr inbounds [2 x [3 x float]], ptr %15, i64 %385
  %388 = load float, ptr %387, align 8, !tbaa !34
  %389 = getelementptr inbounds [3 x float], ptr %387, i64 0, i64 1
  %390 = load float, ptr %389, align 4, !tbaa !34
  %391 = fmul float %368, %390
  %392 = call float @llvm.fmuladd.f32(float %367, float %388, float %391)
  %393 = getelementptr inbounds [3 x float], ptr %387, i64 0, i64 2
  %394 = load float, ptr %393, align 8, !tbaa !34
  %395 = call float @llvm.fmuladd.f32(float %369, float %394, float %392)
  %396 = fsub float %395, %383
  %397 = fneg float %396
  %398 = getelementptr inbounds [2 x [3 x float]], ptr %15, i64 %385, i64 1
  %399 = load float, ptr %398, align 4, !tbaa !34
  %400 = getelementptr inbounds [2 x [3 x float]], ptr %15, i64 %385, i64 1, i64 1
  %401 = load float, ptr %400, align 8, !tbaa !34
  %402 = fmul float %368, %401
  %403 = call float @llvm.fmuladd.f32(float %367, float %399, float %402)
  %404 = getelementptr inbounds [2 x [3 x float]], ptr %15, i64 %385, i64 1, i64 2
  %405 = load float, ptr %404, align 4, !tbaa !34
  %406 = call float @llvm.fmuladd.f32(float %369, float %405, float %403)
  %407 = fdiv float %397, %406
  %408 = fcmp ogt float %407, 0.000000e+00
  %409 = fcmp olt float %407, 1.000000e+00
  %410 = and i1 %408, %409
  br i1 %410, label %411, label %424

411:                                              ; preds = %384
  %412 = call float @llvm.fmuladd.f32(float %399, float %407, float %388)
  %413 = sext i32 %386 to i64
  %414 = getelementptr inbounds [3 x float], ptr %351, i64 %413
  store float %412, ptr %414, align 4, !tbaa !34
  %415 = load float, ptr %389, align 4, !tbaa !34
  %416 = load float, ptr %400, align 8, !tbaa !34
  %417 = call float @llvm.fmuladd.f32(float %416, float %407, float %415)
  %418 = getelementptr inbounds [3 x float], ptr %351, i64 %413, i64 1
  store float %417, ptr %418, align 4, !tbaa !34
  %419 = load float, ptr %393, align 8, !tbaa !34
  %420 = load float, ptr %404, align 4, !tbaa !34
  %421 = call float @llvm.fmuladd.f32(float %420, float %407, float %419)
  %422 = getelementptr inbounds [3 x float], ptr %351, i64 %413, i64 2
  store float %421, ptr %422, align 4, !tbaa !34
  %423 = add nsw i32 %386, 1
  br label %424

424:                                              ; preds = %411, %384
  %425 = phi i32 [ %423, %411 ], [ %386, %384 ]
  %426 = add nuw nsw i64 %385, 1
  %427 = icmp eq i64 %426, 12
  br i1 %427, label %428, label %384, !llvm.loop !52

428:                                              ; preds = %424
  %429 = icmp sgt i32 %425, 2
  br i1 %429, label %430, label %563

430:                                              ; preds = %428
  %431 = load float, ptr %351, align 4, !tbaa !34
  %432 = load float, ptr %358, align 4, !tbaa !34
  %433 = load float, ptr %359, align 4, !tbaa !34
  %434 = add nsw i32 %425, -1
  %435 = zext i32 %434 to i64
  %436 = zext nneg i32 %425 to i64
  br label %440

437:                                              ; preds = %481
  %438 = add nuw nsw i64 %442, 1
  %439 = icmp eq i64 %443, %435
  br i1 %439, label %484, label %440, !llvm.loop !53

440:                                              ; preds = %430, %437
  %441 = phi i64 [ 1, %430 ], [ %443, %437 ]
  %442 = phi i64 [ 2, %430 ], [ %438, %437 ]
  %443 = add nuw nsw i64 %441, 1
  %444 = getelementptr inbounds [3 x float], ptr %351, i64 %441
  %445 = getelementptr inbounds float, ptr %444, i64 1
  %446 = getelementptr inbounds float, ptr %444, i64 2
  br label %447

447:                                              ; preds = %440, %481
  %448 = phi i64 [ %442, %440 ], [ %482, %481 ]
  %449 = getelementptr inbounds [3 x float], ptr %351, i64 %448
  %450 = load float, ptr %449, align 4, !tbaa !34
  %451 = fsub float %450, %431
  %452 = getelementptr inbounds float, ptr %449, i64 1
  %453 = load float, ptr %452, align 4, !tbaa !34
  %454 = fsub float %453, %432
  %455 = getelementptr inbounds float, ptr %449, i64 2
  %456 = load float, ptr %455, align 4, !tbaa !34
  %457 = fsub float %456, %433
  %458 = load float, ptr %444, align 4, !tbaa !34
  %459 = fsub float %458, %431
  %460 = load float, ptr %445, align 4, !tbaa !34
  %461 = fsub float %460, %432
  %462 = load float, ptr %446, align 4, !tbaa !34
  %463 = fsub float %462, %433
  %464 = fneg float %457
  %465 = fmul float %461, %464
  %466 = call float @llvm.fmuladd.f32(float %454, float %463, float %465)
  %467 = fneg float %451
  %468 = fmul float %463, %467
  %469 = call float @llvm.fmuladd.f32(float %457, float %459, float %468)
  %470 = fneg float %454
  %471 = fmul float %459, %470
  %472 = call float @llvm.fmuladd.f32(float %451, float %461, float %471)
  %473 = load float, ptr %8, align 4, !tbaa !34
  %474 = load float, ptr %330, align 4, !tbaa !34
  %475 = fmul float %474, %469
  %476 = call float @llvm.fmuladd.f32(float %473, float %466, float %475)
  %477 = load float, ptr %335, align 4, !tbaa !34
  %478 = call float @llvm.fmuladd.f32(float %477, float %472, float %476)
  %479 = fcmp ult float %478, 0.000000e+00
  br i1 %479, label %480, label %481

480:                                              ; preds = %447
  store float %450, ptr %444, align 4, !tbaa !34
  store float %458, ptr %449, align 4, !tbaa !34
  store float %453, ptr %445, align 4, !tbaa !34
  store float %460, ptr %452, align 4, !tbaa !34
  store float %456, ptr %446, align 4, !tbaa !34
  store float %462, ptr %455, align 4, !tbaa !34
  br label %481

481:                                              ; preds = %447, %480
  %482 = add nuw nsw i64 %448, 1
  %483 = icmp eq i64 %482, %436
  br i1 %483, label %437, label %447, !llvm.loop !54

484:                                              ; preds = %437
  br i1 %360, label %524, label %485

485:                                              ; preds = %484
  %486 = load i8, ptr @__GLEW_VERSION_1_4, align 1, !tbaa !44
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %490, label %488

488:                                              ; preds = %485
  %489 = load ptr, ptr @__glewBlendFuncSeparate, align 8, !tbaa !51
  call void %489(i32 noundef 770, i32 noundef 1, i32 noundef 1, i32 noundef 1) #9
  br label %491

490:                                              ; preds = %485
  call void @glBlendFunc(i32 noundef 770, i32 noundef 1) #9
  br label %491

491:                                              ; preds = %490, %488
  %492 = load ptr, ptr @__glewProgramLocalParameter4fARB, align 8, !tbaa !51
  call void %492(i32 noundef 34820, i32 noundef 2, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @glBegin(i32 noundef 9) #9
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %493 = call i32 @llvm.smax.i32(i32 %425, i32 1)
  %494 = zext nneg i32 %493 to i64
  br label %495

495:                                              ; preds = %491, %495
  %496 = phi i64 [ 0, %491 ], [ %521, %495 ]
  %497 = getelementptr inbounds [3 x float], ptr %351, i64 %496
  %498 = load float, ptr %497, align 4, !tbaa !34
  %499 = load float, ptr %3, align 4, !tbaa !34
  %500 = fsub float %498, %499
  %501 = fmul float %325, %500
  %502 = fpext float %501 to double
  %503 = getelementptr inbounds [3 x float], ptr %351, i64 %496, i64 1
  %504 = load float, ptr %503, align 4, !tbaa !34
  %505 = load float, ptr %105, align 4, !tbaa !34
  %506 = fsub float %504, %505
  %507 = fmul float %326, %506
  %508 = fpext float %507 to double
  %509 = getelementptr inbounds [3 x float], ptr %351, i64 %496, i64 2
  %510 = load float, ptr %509, align 4, !tbaa !34
  %511 = load float, ptr %110, align 4, !tbaa !34
  %512 = fsub float %510, %511
  %513 = fmul float %327, %512
  %514 = fpext float %513 to double
  call void @glTexCoord3d(double noundef %502, double noundef %508, double noundef %514) #9
  %515 = load float, ptr %497, align 4, !tbaa !34
  %516 = fmul float %20, %515
  %517 = load float, ptr %503, align 4, !tbaa !34
  %518 = fmul float %24, %517
  %519 = load float, ptr %509, align 4, !tbaa !34
  %520 = fmul float %28, %519
  call void @glVertex3f(float noundef %516, float noundef %518, float noundef %520) #9
  %521 = add nuw nsw i64 %496, 1
  %522 = icmp eq i64 %521, %494
  br i1 %522, label %523, label %495, !llvm.loop !55

523:                                              ; preds = %495
  call void @glEnd() #9
  br label %524

524:                                              ; preds = %523, %484
  %525 = load i8, ptr @__GLEW_VERSION_1_4, align 1, !tbaa !44
  %526 = icmp eq i8 %525, 0
  br i1 %526, label %529, label %527

527:                                              ; preds = %524
  %528 = load ptr, ptr @__glewBlendFuncSeparate, align 8, !tbaa !51
  call void %528(i32 noundef 770, i32 noundef 771, i32 noundef 1, i32 noundef 771) #9
  br label %530

529:                                              ; preds = %524
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  br label %530

530:                                              ; preds = %529, %527
  %531 = load ptr, ptr @__glewProgramLocalParameter4fARB, align 8, !tbaa !51
  call void %531(i32 noundef 34820, i32 noundef 2, float noundef -1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #9
  call void @glBegin(i32 noundef 9) #9
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %532 = call i32 @llvm.smax.i32(i32 %425, i32 1)
  %533 = zext nneg i32 %532 to i64
  br label %534

534:                                              ; preds = %530, %534
  %535 = phi i64 [ 0, %530 ], [ %560, %534 ]
  %536 = getelementptr inbounds [3 x float], ptr %351, i64 %535
  %537 = load float, ptr %536, align 4, !tbaa !34
  %538 = load float, ptr %3, align 4, !tbaa !34
  %539 = fsub float %537, %538
  %540 = fmul float %325, %539
  %541 = fpext float %540 to double
  %542 = getelementptr inbounds [3 x float], ptr %351, i64 %535, i64 1
  %543 = load float, ptr %542, align 4, !tbaa !34
  %544 = load float, ptr %105, align 4, !tbaa !34
  %545 = fsub float %543, %544
  %546 = fmul float %326, %545
  %547 = fpext float %546 to double
  %548 = getelementptr inbounds [3 x float], ptr %351, i64 %535, i64 2
  %549 = load float, ptr %548, align 4, !tbaa !34
  %550 = load float, ptr %110, align 4, !tbaa !34
  %551 = fsub float %549, %550
  %552 = fmul float %327, %551
  %553 = fpext float %552 to double
  call void @glTexCoord3d(double noundef %541, double noundef %547, double noundef %553) #9
  %554 = load float, ptr %536, align 4, !tbaa !34
  %555 = fmul float %20, %554
  %556 = load float, ptr %542, align 4, !tbaa !34
  %557 = fmul float %24, %556
  %558 = load float, ptr %548, align 4, !tbaa !34
  %559 = fmul float %28, %558
  call void @glVertex3f(float noundef %555, float noundef %557, float noundef %559) #9
  %560 = add nuw nsw i64 %535, 1
  %561 = icmp eq i64 %560, %533
  br i1 %561, label %562, label %534, !llvm.loop !56

562:                                              ; preds = %534
  call void @glEnd() #9
  br label %563

563:                                              ; preds = %562, %428
  %564 = add nsw i32 %362, 1
  br label %565

565:                                              ; preds = %361, %563
  %566 = phi i32 [ %564, %563 ], [ %362, %361 ]
  br i1 %365, label %361, label %567

567:                                              ; preds = %565
  br i1 %260, label %569, label %568

568:                                              ; preds = %567
  call void @GPU_texture_unbind(ptr noundef nonnull %9) #9
  br label %569

569:                                              ; preds = %568, %567
  call void @GPU_texture_unbind(ptr noundef nonnull %2) #9
  br i1 %265, label %571, label %570

570:                                              ; preds = %569
  call void @GPU_texture_unbind(ptr noundef nonnull %10) #9
  call void @GPU_texture_unbind(ptr noundef %99) #9
  br label %571

571:                                              ; preds = %570, %569
  call void @GPU_texture_free(ptr noundef %99) #9
  call void @free(ptr noundef %36) #9
  call void @free(ptr noundef %37) #9
  %572 = load i8, ptr @__GLEW_ARB_fragment_program, align 1, !tbaa !44
  %573 = icmp eq i8 %572, 0
  br i1 %573, label %576, label %574

574:                                              ; preds = %571
  call void @glDisable(i32 noundef 34820) #9
  %575 = load ptr, ptr @__glewDeleteProgramsARB, align 8, !tbaa !51
  call void %575(i32 noundef 1, ptr noundef nonnull %16) #9
  br label %576

576:                                              ; preds = %574, %571
  %577 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %577(ptr noundef %351) #9
  %578 = load i32, ptr %13, align 4, !tbaa !38
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %581

580:                                              ; preds = %576
  call void @glDisable(i32 noundef 3042) #9
  br label %581

581:                                              ; preds = %580, %576
  %582 = load i32, ptr %12, align 4, !tbaa !38
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %585, label %584

584:                                              ; preds = %581
  call void @glEnable(i32 noundef 2929) #9
  br label %585

585:                                              ; preds = %584, %581
  call void @glDepthMask(i8 noundef zeroext 1) #9
  br label %586

586:                                              ; preds = %585, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @flame_get_spectrum(ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @GPU_texture_create_1D(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @glGetBooleanv(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #5

declare void @glDisable(i32 noundef) local_unnamed_addr #5

declare void @glEnable(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare zeroext i8 @glewIsSupported(ptr noundef) local_unnamed_addr #5

declare void @GPU_texture_bind(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @GPU_non_power_of_two_support() local_unnamed_addr #5

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @glBegin(i32 noundef) local_unnamed_addr #5

declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @glTexCoord3d(double noundef, double noundef, double noundef) local_unnamed_addr #5

declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @glEnd() local_unnamed_addr #5

declare void @GPU_texture_unbind(ptr noundef) local_unnamed_addr #5

declare void @GPU_texture_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!41, !39, i64 532}
!41 = !{!"SmokeDomainSettings", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !36, i64 96, !36, i64 108, !36, i64 120, !36, i64 132, !36, i64 144, !36, i64 156, !36, i64 168, !36, i64 180, !36, i64 192, !36, i64 204, !36, i64 268, !36, i64 332, !36, i64 344, !36, i64 356, !36, i64 368, !39, i64 380, !35, i64 384, !35, i64 388, !39, i64 392, !39, i64 396, !35, i64 400, !35, i64 404, !35, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !43, i64 428, !43, i64 430, !39, i64 432, !35, i64 436, !36, i64 440, !35, i64 452, !39, i64 456, !39, i64 460, !36, i64 464, !36, i64 480, !42, i64 512, !39, i64 520, !35, i64 524, !35, i64 528, !39, i64 532, !36, i64 536, !39, i64 548, !35, i64 552, !35, i64 556, !35, i64 560, !35, i64 564, !35, i64 568, !36, i64 572}
!42 = !{!"any pointer", !36, i64 0}
!43 = !{!"short", !36, i64 0}
!44 = !{!36, !36, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !46, !47}
!49 = distinct !{!49, !46, !47}
!50 = distinct !{!50, !46, !47}
!51 = !{!42, !42, i64 0}
!52 = distinct !{!52, !46, !47}
!53 = distinct !{!53, !46, !47}
!54 = distinct !{!54, !46, !47}
!55 = distinct !{!55, !46, !47}
!56 = distinct !{!56, !46, !47}
