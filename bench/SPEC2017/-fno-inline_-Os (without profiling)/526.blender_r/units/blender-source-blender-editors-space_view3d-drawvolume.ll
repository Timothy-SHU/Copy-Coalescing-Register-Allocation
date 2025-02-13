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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_smoke_volume(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, float noundef %6, float noundef %7, ptr nocapture noundef readonly %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x [3 x float]], align 16
  %15 = alloca [12 x [2 x [3 x float]]], align 16
  %16 = alloca i32, align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36
  %22 = load float, ptr %21, align 4, !tbaa !5
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fdiv float 1.000000e+00, %23
  %25 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !5
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = fdiv float 1.000000e+00, %27
  %29 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !5
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fdiv float 1.000000e+00, %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store i32 0, ptr %12, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  store i32 0, ptr %13, align 4, !tbaa !9
  %33 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 53
  %34 = load i32, ptr %33, align 4, !tbaa !11
  %35 = and i32 %34, 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %14) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %14, ptr noundef nonnull align 16 dereferenceable(96) @__const.draw_smoke_volume.cv, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %15) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %15, ptr noundef nonnull align 16 dereferenceable(288) @__const.draw_smoke_volume.edges, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #13
  %36 = icmp eq ptr %2, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %11
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %436

39:                                               ; preds = %11
  %40 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #14
  tail call void @flame_get_spectrum(ptr noundef %40, i32 noundef 256, float noundef 1.500000e+03, float noundef 3.000000e+03) #15
  %41 = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #14
  br label %42

42:                                               ; preds = %39, %90
  %43 = phi i64 [ 0, %39 ], [ %91, %90 ]
  %44 = shl nuw nsw i64 %43, 8
  br label %45

45:                                               ; preds = %42, %87
  %46 = phi i64 [ 0, %42 ], [ %88, %87 ]
  %47 = shl nuw nsw i64 %46, 12
  %48 = add nuw nsw i64 %47, %44
  br label %49

49:                                               ; preds = %45, %81
  %50 = phi i64 [ 0, %45 ], [ %85, %81 ]
  %51 = add nuw nsw i64 %50, %48
  %52 = shl nuw nsw i64 %51, 2
  %53 = icmp ugt i64 %50, 6
  br i1 %53, label %54, label %76

54:                                               ; preds = %49
  %55 = shl nuw nsw i64 %50, 2
  %56 = getelementptr inbounds i8, ptr %40, i64 %55
  %57 = getelementptr inbounds float, ptr %41, i64 %52
  %58 = load <2 x i8>, ptr %56, align 1, !tbaa !15
  %59 = uitofp <2 x i8> %58 to <2 x float>
  %60 = fdiv <2 x float> %59, <float 2.550000e+02, float 2.550000e+02>
  store <2 x float> %60, ptr %57, align 4, !tbaa !5
  %61 = or disjoint i64 %55, 2
  %62 = getelementptr inbounds i8, ptr %40, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !15
  %64 = uitofp i8 %63 to float
  %65 = fdiv float %64, 2.550000e+02
  %66 = or disjoint i64 %52, 2
  %67 = getelementptr inbounds float, ptr %41, i64 %66
  store float %65, ptr %67, align 4, !tbaa !5
  %68 = icmp ugt i64 %50, 100
  %69 = trunc i64 %50 to i32
  %70 = add i32 %69, -7
  %71 = sitofp i32 %70 to float
  %72 = fdiv float %71, 9.300000e+01
  %73 = fmul float %72, 0x3FAEB851E0000000
  %74 = select i1 %68, float 0x3FAEB851E0000000, float %73
  %75 = or disjoint i64 %52, 3
  br label %81

76:                                               ; preds = %49
  %77 = or disjoint i64 %52, 3
  %78 = getelementptr inbounds float, ptr %41, i64 %77
  store float 0.000000e+00, ptr %78, align 4, !tbaa !5
  %79 = or disjoint i64 %52, 1
  %80 = getelementptr inbounds float, ptr %41, i64 %79
  store <2 x float> zeroinitializer, ptr %80, align 4, !tbaa !5
  br label %81

81:                                               ; preds = %76, %54
  %82 = phi i64 [ %52, %76 ], [ %75, %54 ]
  %83 = phi float [ 0.000000e+00, %76 ], [ %74, %54 ]
  %84 = getelementptr inbounds float, ptr %41, i64 %82
  store float %83, ptr %84, align 4, !tbaa !5
  %85 = add nuw nsw i64 %50, 1
  %86 = icmp eq i64 %85, 256
  br i1 %86, label %87, label %49, !llvm.loop !16

87:                                               ; preds = %81
  %88 = add nuw nsw i64 %46, 1
  %89 = icmp eq i64 %88, 16
  br i1 %89, label %90, label %45, !llvm.loop !18

90:                                               ; preds = %87
  %91 = add nuw nsw i64 %43, 1
  %92 = icmp eq i64 %91, 16
  br i1 %92, label %93, label %42, !llvm.loop !19

93:                                               ; preds = %90
  %94 = tail call ptr @GPU_texture_create_1D(i32 noundef 256, ptr noundef nonnull %41, ptr noundef null) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %17, ptr noundef %4, ptr noundef %3) #16
  %95 = getelementptr inbounds float, ptr %4, i64 1
  %96 = getelementptr inbounds float, ptr %4, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !5
  %98 = load float, ptr %3, align 4, !tbaa !5
  %99 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 1
  %100 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 1, i64 1
  %101 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 2
  %102 = getelementptr inbounds float, ptr %3, i64 1
  %103 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 2, i64 2
  store float %97, ptr %103, align 16, !tbaa !5
  %104 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 3
  %105 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 3, i64 1
  %106 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 3, i64 2
  store float %97, ptr %106, align 4, !tbaa !5
  %107 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 4
  %108 = load <2 x float>, ptr %4, align 4, !tbaa !5
  %109 = shufflevector <2 x float> %108, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %110 = insertelement <4 x float> %109, float %97, i64 2
  %111 = insertelement <4 x float> %110, float %98, i64 3
  store <4 x float> %111, ptr %14, align 16, !tbaa !5
  %112 = shufflevector <2 x float> %108, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %113 = insertelement <4 x float> %112, float %97, i64 1
  %114 = insertelement <4 x float> %113, float %98, i64 2
  %115 = extractelement <2 x float> %108, i64 0
  store float %115, ptr %104, align 4, !tbaa !5
  store <2 x float> %108, ptr %107, align 16, !tbaa !5
  %116 = getelementptr inbounds float, ptr %3, i64 2
  %117 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 4, i64 2
  %118 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 5
  store float %98, ptr %118, align 4, !tbaa !5
  %119 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 5, i64 1
  %120 = extractelement <2 x float> %108, i64 1
  store float %120, ptr %119, align 16, !tbaa !5
  %121 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 5, i64 2
  %122 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 6
  %123 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 7
  %124 = insertelement <4 x float> poison, float %98, i64 0
  %125 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 7, i64 1
  %126 = load <2 x float>, ptr %102, align 4, !tbaa !5
  %127 = extractelement <2 x float> %126, i64 0
  store float %127, ptr %105, align 8, !tbaa !5
  %128 = shufflevector <2 x float> %126, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %129 = shufflevector <4 x float> %114, <4 x float> %128, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %129, ptr %100, align 16, !tbaa !5
  %130 = extractelement <2 x float> %126, i64 1
  store float %130, ptr %117, align 8, !tbaa !5
  store float %130, ptr %121, align 4, !tbaa !5
  %131 = shufflevector <4 x float> %124, <4 x float> %128, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %132 = shufflevector <4 x float> %131, <4 x float> %109, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %132, ptr %122, align 8, !tbaa !5
  store <2 x float> %126, ptr %125, align 8, !tbaa !5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %107) #16
  %133 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %133, ptr noundef nonnull %118) #16
  %134 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %134, ptr noundef nonnull %122) #16
  %135 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %135, ptr noundef nonnull %123) #16
  %136 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %136, ptr noundef nonnull %104) #16
  %137 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 5
  call fastcc void @copy_v3_v3(ptr noundef nonnull %137, ptr noundef nonnull %101) #16
  %138 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %138, ptr noundef nonnull %122) #16
  %139 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %139, ptr noundef nonnull %123) #16
  %140 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %140, ptr noundef nonnull %99) #16
  %141 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %141, ptr noundef nonnull %101) #16
  %142 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %142, ptr noundef nonnull %122) #16
  %143 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 11
  call fastcc void @copy_v3_v3(ptr noundef nonnull %143, ptr noundef nonnull %118) #16
  %144 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !5
  %146 = getelementptr inbounds [2 x [3 x float]], ptr %15, i64 0, i64 1, i64 2
  store float %145, ptr %146, align 4, !tbaa !5
  %147 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 1, i64 1, i64 2
  store float %145, ptr %147, align 4, !tbaa !5
  %148 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 2, i64 1, i64 2
  store float %145, ptr %148, align 4, !tbaa !5
  %149 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 3, i64 1, i64 2
  store float %145, ptr %149, align 4, !tbaa !5
  %150 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !5
  %152 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 4, i64 1, i64 1
  store float %151, ptr %152, align 16, !tbaa !5
  %153 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 5, i64 1, i64 1
  store float %151, ptr %153, align 8, !tbaa !5
  %154 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 6, i64 1, i64 1
  store float %151, ptr %154, align 16, !tbaa !5
  %155 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 7, i64 1, i64 1
  store float %151, ptr %155, align 8, !tbaa !5
  %156 = load float, ptr %17, align 4, !tbaa !5
  %157 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 8, i64 1
  store float %156, ptr %157, align 4, !tbaa !5
  %158 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 9, i64 1
  store float %156, ptr %158, align 4, !tbaa !5
  %159 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 10, i64 1
  store float %156, ptr %159, align 4, !tbaa !5
  %160 = getelementptr inbounds [12 x [2 x [3 x float]]], ptr %15, i64 0, i64 11, i64 1
  store float %156, ptr %160, align 4, !tbaa !5
  call void @glGetBooleanv(i32 noundef 3042, ptr noundef nonnull %13) #15
  call void @glGetBooleanv(i32 noundef 2929, ptr noundef nonnull %12) #15
  call void @glDepthMask(i8 noundef zeroext 0) #15
  call void @glDisable(i32 noundef 2929) #15
  call void @glEnable(i32 noundef 3042) #15
  %161 = load float, ptr %8, align 4, !tbaa !5
  %162 = fneg float %161
  %163 = fmul float %156, %162
  %164 = getelementptr inbounds float, ptr %8, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !5
  %166 = fneg float %165
  %167 = fmul float %151, %166
  %168 = getelementptr inbounds float, ptr %8, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !5
  %170 = fneg float %169
  %171 = fmul float %145, %170
  %172 = load float, ptr %3, align 4, !tbaa !5
  br label %173

173:                                              ; preds = %93, %200
  %174 = phi i64 [ 0, %93 ], [ %201, %200 ]
  %175 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 %174
  %176 = load float, ptr %175, align 4, !tbaa !5
  %177 = call float @llvm.fmuladd.f32(float %163, float 5.000000e-01, float %176)
  %178 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 %174, i64 1
  %179 = load float, ptr %178, align 4, !tbaa !5
  %180 = call float @llvm.fmuladd.f32(float %167, float 5.000000e-01, float %179)
  %181 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 %174, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !5
  %183 = call float @llvm.fmuladd.f32(float %171, float 5.000000e-01, float %182)
  %184 = fcmp ult float %177, %172
  br i1 %184, label %200, label %185

185:                                              ; preds = %173
  %186 = load float, ptr %4, align 4, !tbaa !5
  %187 = fcmp ugt float %177, %186
  br i1 %187, label %200, label %188

188:                                              ; preds = %185
  %189 = load float, ptr %102, align 4, !tbaa !5
  %190 = fcmp ult float %180, %189
  br i1 %190, label %200, label %191

191:                                              ; preds = %188
  %192 = load float, ptr %95, align 4, !tbaa !5
  %193 = fcmp ugt float %180, %192
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  %195 = load float, ptr %116, align 4, !tbaa !5
  %196 = fcmp ult float %183, %195
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load float, ptr %96, align 4, !tbaa !5
  %199 = fcmp ugt float %183, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %173, %185, %188, %191, %194, %197
  %201 = add i64 %174, 1
  %202 = icmp eq i64 %201, 8
  br i1 %202, label %206, label %173, !llvm.loop !20

203:                                              ; preds = %197
  %204 = and i64 %174, 4294967288
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %200, %203
  br label %207

207:                                              ; preds = %203, %206
  %208 = phi i64 [ 0, %206 ], [ %174, %203 ]
  %209 = call zeroext i8 @glewIsSupported(ptr noundef nonnull @.str.3) #15
  %210 = icmp eq i8 %209, 1
  br i1 %210, label %211, label %235

211:                                              ; preds = %207
  call void @glEnable(i32 noundef 34820) #15
  %212 = load ptr, ptr @__glewGenProgramsARB, align 8, !tbaa !21
  call void %212(i32 noundef 1, ptr noundef nonnull %16) #15
  %213 = load ptr, ptr @__glewBindProgramARB, align 8, !tbaa !21
  %214 = load i32, ptr %16, align 4, !tbaa !9
  call void %213(i32 noundef 34820, i32 noundef %214) #15
  %215 = load i32, ptr %33, align 4, !tbaa !11
  %216 = and i32 %215, 4
  %217 = icmp eq i32 %216, 0
  %218 = load ptr, ptr @__glewProgramStringARB, align 8, !tbaa !21
  br i1 %217, label %220, label %219

219:                                              ; preds = %211
  call void %218(i32 noundef 34820, i32 noundef 34933, i32 noundef 859, ptr noundef nonnull @.str.1) #15
  br label %221

220:                                              ; preds = %211
  call void %218(i32 noundef 34820, i32 noundef 34933, i32 noundef 749, ptr noundef nonnull @.str) #15
  br label %221

221:                                              ; preds = %220, %219
  %222 = load ptr, ptr @__glewProgramLocalParameter4fARB, align 8, !tbaa !21
  call void %222(i32 noundef 34820, i32 noundef 0, float noundef %6, float noundef %6, float noundef %6, float noundef 1.000000e+00) #15
  %223 = load i32, ptr %33, align 4, !tbaa !11
  %224 = and i32 %223, 4
  %225 = icmp eq i32 %224, 0
  %226 = load ptr, ptr @__glewProgramLocalParameter4fARB, align 8, !tbaa !21
  br i1 %225, label %228, label %227

227:                                              ; preds = %221
  call void %226(i32 noundef 34820, i32 noundef 1, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+01) #15
  br label %237

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 54
  %230 = load float, ptr %229, align 8, !tbaa !5
  %231 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 54, i64 1
  %232 = load float, ptr %231, align 4, !tbaa !5
  %233 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 54, i64 2
  %234 = load float, ptr %233, align 8, !tbaa !5
  call void %226(i32 noundef 34820, i32 noundef 1, float noundef %230, float noundef %232, float noundef %234, float noundef 1.000000e+01) #15
  br label %237

235:                                              ; preds = %207
  %236 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  br label %237

237:                                              ; preds = %227, %228, %235
  call void @GPU_texture_bind(ptr noundef nonnull %2, i32 noundef 0) #15
  %238 = icmp eq ptr %9, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %237
  call void @GPU_texture_bind(ptr noundef nonnull %9, i32 noundef 1) #15
  br label %242

240:                                              ; preds = %237
  %241 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %242

242:                                              ; preds = %240, %239
  %243 = icmp eq ptr %10, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %242
  call void @GPU_texture_bind(ptr noundef nonnull %10, i32 noundef 2) #15
  call void @GPU_texture_bind(ptr noundef %94, i32 noundef 3) #15
  br label %245

245:                                              ; preds = %244, %242
  %246 = call i32 @GPU_non_power_of_two_support() #15
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %265

248:                                              ; preds = %245
  %249 = load i32, ptr %5, align 4, !tbaa !9
  %250 = sitofp i32 %249 to float
  %251 = call fastcc i32 @power_of_2_max_u(i32 noundef %249) #16
  %252 = uitofp i32 %251 to float
  %253 = fdiv float %250, %252
  %254 = getelementptr inbounds i32, ptr %5, i64 1
  %255 = load <2 x i32>, ptr %254, align 4, !tbaa !9
  %256 = extractelement <2 x i32> %255, i64 0
  %257 = call fastcc i32 @power_of_2_max_u(i32 noundef %256) #16
  %258 = sitofp <2 x i32> %255 to <2 x float>
  %259 = extractelement <2 x i32> %255, i64 1
  %260 = call fastcc i32 @power_of_2_max_u(i32 noundef %259) #16
  %261 = insertelement <2 x i32> poison, i32 %257, i64 0
  %262 = insertelement <2 x i32> %261, i32 %260, i64 1
  %263 = uitofp <2 x i32> %262 to <2 x float>
  %264 = fdiv <2 x float> %258, %263
  br label %265

265:                                              ; preds = %248, %245
  %266 = phi float [ 1.000000e+00, %245 ], [ %253, %248 ]
  %267 = phi <2 x float> [ <float 1.000000e+00, float 1.000000e+00>, %245 ], [ %264, %248 ]
  %268 = fdiv float %266, %156
  %269 = extractelement <2 x float> %267, i64 0
  %270 = fdiv float %269, %151
  %271 = extractelement <2 x float> %267, i64 1
  %272 = fdiv float %271, %145
  %273 = load float, ptr %8, align 4, !tbaa !5
  %274 = call float @llvm.fabs.f32(float %273)
  %275 = load float, ptr %164, align 4, !tbaa !5
  %276 = call float @llvm.fabs.f32(float %275)
  %277 = fmul float %151, %276
  %278 = call float @llvm.fmuladd.f32(float %274, float %156, float %277)
  %279 = load float, ptr %168, align 4, !tbaa !5
  %280 = call float @llvm.fabs.f32(float %279)
  %281 = call float @llvm.fmuladd.f32(float %280, float %145, float %278)
  %282 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 16
  %283 = load float, ptr %282, align 8, !tbaa !5
  %284 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 16, i64 1
  %285 = load float, ptr %284, align 4, !tbaa !5
  %286 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %0, i64 0, i32 16, i64 2
  %287 = load float, ptr %286, align 8, !tbaa !5
  %288 = call fastcc float @max_fff(float noundef %283, float noundef %285, float noundef %287) #16
  %289 = fmul float %288, 7.812500e-03
  %290 = load ptr, ptr @MEM_callocN, align 8, !tbaa !21
  %291 = call ptr %290(i64 noundef 144, ptr noundef nonnull @.str.6) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #13
  %292 = fmul float %289, 0.000000e+00
  %293 = fcmp ogt float %292, %281
  br i1 %293, label %417, label %294

294:                                              ; preds = %265
  %295 = fneg float %289
  %296 = fdiv float %281, %289
  %297 = and i64 %208, 4294967295
  %298 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 %297
  %299 = icmp eq i32 %35, 0
  br label %300

300:                                              ; preds = %294, %412
  %301 = phi float [ 0.000000e+00, %294 ], [ %414, %412 ]
  %302 = phi i32 [ 0, %294 ], [ %413, %412 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %8) #16
  %303 = fsub float %296, %301
  %304 = fmul float %303, %295
  call fastcc void @mul_v3_fl(ptr noundef nonnull %19, float noundef %304) #16
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %298, ptr noundef nonnull %19) #16
  %305 = call fastcc float @dot_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %8) #16
  %306 = load float, ptr %8, align 4, !tbaa !5
  %307 = load float, ptr %164, align 4, !tbaa !5
  %308 = load float, ptr %168, align 4, !tbaa !5
  %309 = fneg float %305
  %310 = call fastcc i32 @intersect_edges(ptr noundef %291, float noundef %306, float noundef %307, float noundef %308, float noundef %309, ptr noundef nonnull %15) #16
  %311 = icmp sgt i32 %310, 2
  br i1 %311, label %312, label %412

312:                                              ; preds = %300
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef %291) #16
  %313 = add nsw i32 %310, -1
  %314 = zext nneg i32 %313 to i64
  %315 = zext nneg i32 %310 to i64
  br label %319

316:                                              ; preds = %330
  %317 = add nuw nsw i64 %321, 1
  %318 = icmp eq i64 %322, %314
  br i1 %318, label %333, label %319, !llvm.loop !22

319:                                              ; preds = %316, %312
  %320 = phi i64 [ 1, %312 ], [ %322, %316 ]
  %321 = phi i64 [ 2, %312 ], [ %317, %316 ]
  %322 = add nuw nsw i64 %320, 1
  %323 = getelementptr inbounds [3 x float], ptr %291, i64 %320
  br label %324

324:                                              ; preds = %319, %330
  %325 = phi i64 [ %321, %319 ], [ %331, %330 ]
  %326 = getelementptr inbounds [3 x float], ptr %291, i64 %325
  %327 = call fastcc zeroext i8 @convex(ptr noundef nonnull %18, ptr noundef nonnull %8, ptr noundef nonnull %326, ptr noundef nonnull %323) #16, !range !23
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  call fastcc void @swap_v3_v3(ptr noundef nonnull %323, ptr noundef nonnull %326) #16
  br label %330

330:                                              ; preds = %324, %329
  %331 = add nuw nsw i64 %325, 1
  %332 = icmp eq i64 %331, %315
  br i1 %332, label %316, label %324, !llvm.loop !24

333:                                              ; preds = %316
  br i1 %299, label %373, label %334

334:                                              ; preds = %333
  %335 = load i8, ptr @__GLEW_VERSION_1_4, align 1, !tbaa !15
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %334
  %338 = load ptr, ptr @__glewBlendFuncSeparate, align 8, !tbaa !21
  call void %338(i32 noundef 770, i32 noundef 1, i32 noundef 1, i32 noundef 1) #15
  br label %340

339:                                              ; preds = %334
  call void @glBlendFunc(i32 noundef 770, i32 noundef 1) #15
  br label %340

340:                                              ; preds = %337, %339
  %341 = load ptr, ptr @__glewProgramLocalParameter4fARB, align 8, !tbaa !21
  call void %341(i32 noundef 34820, i32 noundef 2, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @glBegin(i32 noundef 9) #15
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  %342 = call i32 @llvm.smax.i32(i32 %310, i32 1)
  %343 = zext nneg i32 %342 to i64
  br label %344

344:                                              ; preds = %340, %344
  %345 = phi i64 [ 0, %340 ], [ %370, %344 ]
  %346 = getelementptr inbounds [3 x float], ptr %291, i64 %345
  %347 = load float, ptr %346, align 4, !tbaa !5
  %348 = load float, ptr %3, align 4, !tbaa !5
  %349 = fsub float %347, %348
  %350 = fmul float %268, %349
  %351 = fpext float %350 to double
  %352 = getelementptr inbounds [3 x float], ptr %291, i64 %345, i64 1
  %353 = load float, ptr %352, align 4, !tbaa !5
  %354 = load float, ptr %102, align 4, !tbaa !5
  %355 = fsub float %353, %354
  %356 = fmul float %270, %355
  %357 = fpext float %356 to double
  %358 = getelementptr inbounds [3 x float], ptr %291, i64 %345, i64 2
  %359 = load float, ptr %358, align 4, !tbaa !5
  %360 = load float, ptr %116, align 4, !tbaa !5
  %361 = fsub float %359, %360
  %362 = fmul float %272, %361
  %363 = fpext float %362 to double
  call void @glTexCoord3d(double noundef %351, double noundef %357, double noundef %363) #15
  %364 = load float, ptr %346, align 4, !tbaa !5
  %365 = fmul float %24, %364
  %366 = load float, ptr %352, align 4, !tbaa !5
  %367 = fmul float %28, %366
  %368 = load float, ptr %358, align 4, !tbaa !5
  %369 = fmul float %32, %368
  call void @glVertex3f(float noundef %365, float noundef %367, float noundef %369) #15
  %370 = add nuw nsw i64 %345, 1
  %371 = icmp eq i64 %370, %343
  br i1 %371, label %372, label %344, !llvm.loop !25

372:                                              ; preds = %344
  call void @glEnd() #15
  br label %373

373:                                              ; preds = %372, %333
  %374 = load i8, ptr @__GLEW_VERSION_1_4, align 1, !tbaa !15
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %373
  %377 = load ptr, ptr @__glewBlendFuncSeparate, align 8, !tbaa !21
  call void %377(i32 noundef 770, i32 noundef 771, i32 noundef 1, i32 noundef 771) #15
  br label %379

378:                                              ; preds = %373
  call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #15
  br label %379

379:                                              ; preds = %376, %378
  %380 = load ptr, ptr @__glewProgramLocalParameter4fARB, align 8, !tbaa !21
  call void %380(i32 noundef 34820, i32 noundef 2, float noundef -1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #15
  call void @glBegin(i32 noundef 9) #15
  call void @glColor3f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #15
  %381 = call i32 @llvm.smax.i32(i32 %310, i32 1)
  %382 = zext nneg i32 %381 to i64
  br label %383

383:                                              ; preds = %379, %383
  %384 = phi i64 [ 0, %379 ], [ %409, %383 ]
  %385 = getelementptr inbounds [3 x float], ptr %291, i64 %384
  %386 = load float, ptr %385, align 4, !tbaa !5
  %387 = load float, ptr %3, align 4, !tbaa !5
  %388 = fsub float %386, %387
  %389 = fmul float %268, %388
  %390 = fpext float %389 to double
  %391 = getelementptr inbounds [3 x float], ptr %291, i64 %384, i64 1
  %392 = load float, ptr %391, align 4, !tbaa !5
  %393 = load float, ptr %102, align 4, !tbaa !5
  %394 = fsub float %392, %393
  %395 = fmul float %270, %394
  %396 = fpext float %395 to double
  %397 = getelementptr inbounds [3 x float], ptr %291, i64 %384, i64 2
  %398 = load float, ptr %397, align 4, !tbaa !5
  %399 = load float, ptr %116, align 4, !tbaa !5
  %400 = fsub float %398, %399
  %401 = fmul float %272, %400
  %402 = fpext float %401 to double
  call void @glTexCoord3d(double noundef %390, double noundef %396, double noundef %402) #15
  %403 = load float, ptr %385, align 4, !tbaa !5
  %404 = fmul float %24, %403
  %405 = load float, ptr %391, align 4, !tbaa !5
  %406 = fmul float %28, %405
  %407 = load float, ptr %397, align 4, !tbaa !5
  %408 = fmul float %32, %407
  call void @glVertex3f(float noundef %404, float noundef %406, float noundef %408) #15
  %409 = add nuw nsw i64 %384, 1
  %410 = icmp eq i64 %409, %382
  br i1 %410, label %411, label %383, !llvm.loop !26

411:                                              ; preds = %383
  call void @glEnd() #15
  br label %412

412:                                              ; preds = %300, %411
  %413 = add nuw nsw i32 %302, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #13
  %414 = sitofp i32 %413 to float
  %415 = fmul float %289, %414
  %416 = fcmp ogt float %415, %281
  br i1 %416, label %417, label %300

417:                                              ; preds = %412, %265
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #13
  br i1 %238, label %419, label %418

418:                                              ; preds = %417
  call void @GPU_texture_unbind(ptr noundef nonnull %9) #15
  br label %419

419:                                              ; preds = %418, %417
  call void @GPU_texture_unbind(ptr noundef nonnull %2) #15
  br i1 %243, label %421, label %420

420:                                              ; preds = %419
  call void @GPU_texture_unbind(ptr noundef nonnull %10) #15
  call void @GPU_texture_unbind(ptr noundef %94) #15
  br label %421

421:                                              ; preds = %420, %419
  call void @GPU_texture_free(ptr noundef %94) #15
  call void @free(ptr noundef %40) #15
  call void @free(ptr noundef %41) #15
  %422 = load i8, ptr @__GLEW_ARB_fragment_program, align 1, !tbaa !15
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %426, label %424

424:                                              ; preds = %421
  call void @glDisable(i32 noundef 34820) #15
  %425 = load ptr, ptr @__glewDeleteProgramsARB, align 8, !tbaa !21
  call void %425(i32 noundef 1, ptr noundef nonnull %16) #15
  br label %426

426:                                              ; preds = %424, %421
  %427 = load ptr, ptr @MEM_freeN, align 8, !tbaa !21
  call void %427(ptr noundef %291) #15
  %428 = load i32, ptr %13, align 4, !tbaa !9
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %426
  call void @glDisable(i32 noundef 3042) #15
  br label %431

431:                                              ; preds = %430, %426
  %432 = load i32, ptr %12, align 4, !tbaa !9
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %431
  call void @glEnable(i32 noundef 2929) #15
  br label %435

435:                                              ; preds = %434, %431
  call void @glDepthMask(i8 noundef zeroext 1) #15
  br label %436

436:                                              ; preds = %435, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @flame_get_spectrum(ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @GPU_texture_create_1D(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = load float, ptr %2, align 4, !tbaa !5
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @glGetBooleanv(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: optsize
declare zeroext i8 @glewIsSupported(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @GPU_texture_bind(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @GPU_non_power_of_two_support() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @power_of_2_max_u(i32 noundef %0) unnamed_addr #7 {
  %2 = add i32 %0, -1
  %3 = lshr i32 %2, 1
  %4 = or i32 %3, %2
  %5 = lshr i32 %4, 2
  %6 = or i32 %5, %4
  %7 = lshr i32 %6, 4
  %8 = or i32 %7, %6
  %9 = lshr i32 %8, 8
  %10 = or i32 %9, %8
  %11 = lshr i32 %10, 16
  %12 = or i32 %11, %10
  %13 = add i32 %12, 1
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #7 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #16
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #16
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !5
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = load float, ptr %2, align 4, !tbaa !5
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = load float, ptr %0, align 4, !tbaa !5
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i32 @intersect_edges(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #9 {
  br label %7

7:                                                ; preds = %6, %47
  %8 = phi i64 [ 0, %6 ], [ %49, %47 ]
  %9 = phi i32 [ 0, %6 ], [ %48, %47 ]
  %10 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 %8
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !5
  %14 = fmul float %13, %2
  %15 = tail call float @llvm.fmuladd.f32(float %1, float %11, float %14)
  %16 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = tail call float @llvm.fmuladd.f32(float %3, float %17, float %15)
  %19 = fadd float %18, %4
  %20 = fneg float %19
  %21 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 %8, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !5
  %23 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 %8, i64 1, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !5
  %25 = fmul float %24, %2
  %26 = tail call float @llvm.fmuladd.f32(float %1, float %22, float %25)
  %27 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 %8, i64 1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !5
  %29 = tail call float @llvm.fmuladd.f32(float %3, float %28, float %26)
  %30 = fdiv float %20, %29
  %31 = fcmp ogt float %30, 0.000000e+00
  %32 = fcmp olt float %30, 1.000000e+00
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %7
  %35 = tail call float @llvm.fmuladd.f32(float %22, float %30, float %11)
  %36 = sext i32 %9 to i64
  %37 = getelementptr inbounds [3 x float], ptr %0, i64 %36
  store float %35, ptr %37, align 4, !tbaa !5
  %38 = load float, ptr %12, align 4, !tbaa !5
  %39 = load float, ptr %23, align 4, !tbaa !5
  %40 = tail call float @llvm.fmuladd.f32(float %39, float %30, float %38)
  %41 = getelementptr inbounds [3 x float], ptr %0, i64 %36, i64 1
  store float %40, ptr %41, align 4, !tbaa !5
  %42 = load float, ptr %16, align 4, !tbaa !5
  %43 = load float, ptr %27, align 4, !tbaa !5
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %30, float %42)
  %45 = getelementptr inbounds [3 x float], ptr %0, i64 %36, i64 2
  store float %44, ptr %45, align 4, !tbaa !5
  %46 = add nsw i32 %9, 1
  br label %47

47:                                               ; preds = %7, %34
  %48 = phi i32 [ %46, %34 ], [ %9, %7 ]
  %49 = add nuw nsw i64 %8, 1
  %50 = icmp eq i64 %49, 12
  br i1 %50, label %51, label %7, !llvm.loop !27

51:                                               ; preds = %47
  ret i32 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @convex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #6 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %0) #16
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %3, ptr noundef %0) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %8 = call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef nonnull %7) #16
  %9 = fcmp oge float %8, 0.000000e+00
  %10 = zext i1 %9 to i8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = load float, ptr %0, align 4, !tbaa !5
  %4 = load float, ptr %1, align 4, !tbaa !5
  store float %4, ptr %0, align 4, !tbaa !5
  store float %3, ptr %1, align 4, !tbaa !5
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  store float %8, ptr %5, align 4, !tbaa !5
  store float %6, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !5
  store float %12, ptr %9, align 4, !tbaa !5
  store float %10, ptr %11, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glTexCoord3d(double noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #5

; Function Attrs: optsize
declare void @GPU_texture_unbind(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @GPU_texture_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #7 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !5
  %15 = load float, ptr %8, align 4, !tbaa !5
  %16 = load float, ptr %2, align 4, !tbaa !5
  %17 = load float, ptr %1, align 4, !tbaa !5
  %18 = load float, ptr %6, align 4, !tbaa !5
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !5
  %23 = load float, ptr %1, align 4, !tbaa !5
  %24 = load float, ptr %10, align 4, !tbaa !5
  %25 = load float, ptr %4, align 4, !tbaa !5
  %26 = load float, ptr %2, align 4, !tbaa !5
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize allocsize(0) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 532}
!12 = !{!"SmokeDomainSettings", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !7, i64 96, !7, i64 108, !7, i64 120, !7, i64 132, !7, i64 144, !7, i64 156, !7, i64 168, !7, i64 180, !7, i64 192, !7, i64 204, !7, i64 268, !7, i64 332, !7, i64 344, !7, i64 356, !7, i64 368, !10, i64 380, !6, i64 384, !6, i64 388, !10, i64 392, !10, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !10, i64 412, !10, i64 416, !10, i64 420, !10, i64 424, !14, i64 428, !14, i64 430, !10, i64 432, !6, i64 436, !7, i64 440, !6, i64 452, !10, i64 456, !10, i64 460, !7, i64 464, !7, i64 480, !13, i64 512, !10, i64 520, !6, i64 524, !6, i64 528, !10, i64 532, !7, i64 536, !10, i64 548, !6, i64 552, !6, i64 556, !6, i64 560, !6, i64 564, !6, i64 568, !7, i64 572}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = !{!13, !13, i64 0}
!22 = distinct !{!22, !17}
!23 = !{i8 0, i8 2}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
