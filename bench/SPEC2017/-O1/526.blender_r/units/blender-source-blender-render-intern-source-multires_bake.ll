; ModuleID = 'blender/source/blender/render/intern/source/multires_bake.c'
source_filename = "blender/source/blender/render/intern/source/multires_bake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.MultiresBakeResult = type { float, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MultiresBakeRender = type { ptr, ptr, i8, i32, i32, i32, i16, i8, i32, float, i32, i32, %struct.ListBase, i32, i32, i32, i32, i32, float, ptr, ptr, ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.BakeImBufuserData = type { ptr, ptr }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.MultiresBakeQueue = type { i32, i32, i32 }
%struct.MultiresBakeThread = type { ptr, ptr, ptr, ptr, %struct.MBakeRast, %struct.MResolvePixelData, float, float }
%struct.MBakeRast = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.MResolvePixelData = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MNormalBakeData = type { ptr, ptr }
%struct.MHeightBakeData = type { ptr, ptr, ptr, ptr, ptr }
%struct.SubsurfModifierData = type { %struct.ModifierData, i16, i16, i16, i16, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.MAOBakeData = type { i32, float, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.RayFace = type { [4 x float], [4 x float], [4 x float], [3 x float], i32, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"MultiresBake userdata\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"MultiresBake imbuf mask\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"do_multires_bake handles\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"MultiresBake normalData\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"MultiresBake heights\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"MultiresBake heightData\00", align 1
@ao_random_table_2 = internal unnamed_addr global [1024 x i16] zeroinitializer, align 16
@ao_random_table_1 = internal unnamed_addr global [1024 x i16] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [20 x i8] c"MultiresBake aoData\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"multires AO baker perm1\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"multires AO baker perm2\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"multires AO baker temp perm\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"ObjectRen faces\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @RE_multires_bake_images(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.MultiresBakeResult, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 2
  %5 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %4, i32 noundef 5) #9
  %6 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 12
  %7 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 11
  store i32 0, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = tail call i32 %9(ptr noundef %3) #9
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = zext nneg i32 %10 to i64
  br label %18

14:                                               ; preds = %18, %1
  %15 = icmp sgt i32 %10, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = zext nneg i32 %10 to i64
  br label %31

18:                                               ; preds = %12, %18
  %19 = phi i64 [ 0, %12 ], [ %25, %18 ]
  %20 = getelementptr inbounds %struct.MTFace, ptr %5, i64 %19, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 5
  %23 = load i16, ptr %22, align 2, !tbaa !49
  %24 = and i16 %23, -1025
  store i16 %24, ptr %22, align 2, !tbaa !49
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, %13
  br i1 %26, label %14, label %18, !llvm.loop !53

27:                                               ; preds = %45, %14
  %28 = icmp sgt i32 %10, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %27
  %30 = zext nneg i32 %10 to i64
  br label %53

31:                                               ; preds = %16, %45
  %32 = phi i64 [ 0, %16 ], [ %46, %45 ]
  %33 = getelementptr inbounds %struct.MTFace, ptr %5, i64 %32, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.ID, ptr %34, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !49
  %37 = and i16 %36, 1024
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = tail call ptr @BLI_genericNodeN(ptr noundef %34) #9
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %40) #9
  %41 = load i32, ptr %7, align 8, !tbaa !43
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %7, align 8, !tbaa !43
  %43 = load i16, ptr %35, align 2, !tbaa !49
  %44 = or i16 %43, 1024
  store i16 %44, ptr %35, align 2, !tbaa !49
  br label %45

45:                                               ; preds = %39, %31
  %46 = add nuw nsw i64 %32, 1
  %47 = icmp eq i64 %46, %17
  br i1 %47, label %27, label %31, !llvm.loop !56

48:                                               ; preds = %53, %27
  %49 = load ptr, ptr %6, align 8, !tbaa !57
  %50 = icmp eq ptr %49, null
  br i1 %50, label %95, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 6
  br label %62

53:                                               ; preds = %29, %53
  %54 = phi i64 [ 0, %29 ], [ %60, %53 ]
  %55 = getelementptr inbounds %struct.MTFace, ptr %5, i64 %54, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  %57 = getelementptr inbounds %struct.ID, ptr %56, i64 0, i32 5
  %58 = load i16, ptr %57, align 2, !tbaa !49
  %59 = and i16 %58, -1025
  store i16 %59, ptr %57, align 2, !tbaa !49
  %60 = add nuw nsw i64 %54, 1
  %61 = icmp eq i64 %60, %30
  br i1 %61, label %48, label %53, !llvm.loop !58

62:                                               ; preds = %51, %89
  %63 = phi ptr [ %49, %51 ], [ %93, %89 ]
  %64 = getelementptr inbounds %struct.LinkData, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  %66 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %65, ptr noundef null, ptr noundef null) #9
  %67 = getelementptr inbounds %struct.ImBuf, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !61
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.ImBuf, ptr %66, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !65
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %76 = tail call ptr %75(i64 noundef 16, ptr noundef nonnull @.str) #9
  %77 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %78 = load i32, ptr %71, align 4, !tbaa !65
  %79 = load i32, ptr %67, align 8, !tbaa !61
  %80 = mul nsw i32 %79, %78
  %81 = sext i32 %80 to i64
  %82 = tail call ptr %77(i64 noundef %81, ptr noundef nonnull @.str.1) #9
  %83 = getelementptr inbounds %struct.BakeImBufuserData, ptr %76, i64 0, i32 1
  store ptr %82, ptr %83, align 8, !tbaa !66
  %84 = getelementptr inbounds %struct.ImBuf, ptr %66, i64 0, i32 25
  store ptr %76, ptr %84, align 8, !tbaa !68
  %85 = load i16, ptr %52, align 8, !tbaa !69
  switch i16 %85, label %89 [
    i16 3, label %86
    i16 5, label %87
    i16 13, label %87
    i16 2, label %88
  ]

86:                                               ; preds = %74
  call fastcc void @do_multires_bake(ptr noundef nonnull %0, ptr noundef %65, i8 noundef zeroext 1, ptr noundef nonnull @apply_tangmat_callback, ptr noundef nonnull @init_normal_data, ptr noundef nonnull @free_normal_data, ptr noundef nonnull %2)
  br label %89

87:                                               ; preds = %74, %74
  call fastcc void @do_multires_bake(ptr noundef nonnull %0, ptr noundef %65, i8 noundef zeroext 0, ptr noundef nonnull @apply_heights_callback, ptr noundef nonnull @init_heights_data, ptr noundef nonnull @free_heights_data, ptr noundef nonnull %2)
  br label %89

88:                                               ; preds = %74
  call fastcc void @do_multires_bake(ptr noundef nonnull %0, ptr noundef %65, i8 noundef zeroext 0, ptr noundef nonnull @apply_ao_callback, ptr noundef nonnull @init_ao_data, ptr noundef nonnull @free_ao_data, ptr noundef nonnull %2)
  br label %89

89:                                               ; preds = %88, %87, %86, %74, %70, %62
  tail call void @BKE_image_release_ibuf(ptr noundef %65, ptr noundef %66, ptr noundef null) #9
  %90 = getelementptr inbounds %struct.ID, ptr %65, i64 0, i32 5
  %91 = load i16, ptr %90, align 2, !tbaa !49
  %92 = or i16 %91, 1024
  store i16 %92, ptr %90, align 2, !tbaa !49
  %93 = load ptr, ptr %63, align 8, !tbaa !57
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %62, !llvm.loop !70

95:                                               ; preds = %89, %48
  %96 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 6
  %97 = load i16, ptr %96, align 8, !tbaa !69
  %98 = and i16 %97, -9
  %99 = icmp eq i16 %98, 5
  %100 = load ptr, ptr %6, align 8, !tbaa !57
  %101 = icmp eq ptr %100, null
  br i1 %101, label %168, label %102

102:                                              ; preds = %95
  %103 = load float, ptr %2, align 4
  %104 = getelementptr inbounds %struct.MultiresBakeResult, ptr %2, i64 0, i32 1
  %105 = load float, ptr %104, align 4
  %106 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 18
  %107 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 3
  br label %108

108:                                              ; preds = %102, %165
  %109 = phi ptr [ %100, %102 ], [ %166, %165 ]
  %110 = getelementptr inbounds %struct.LinkData, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !59
  %112 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %111, ptr noundef null, ptr noundef null) #9
  %113 = getelementptr inbounds %struct.ImBuf, ptr %112, i64 0, i32 25
  %114 = load ptr, ptr %113, align 8, !tbaa !68
  %115 = getelementptr inbounds %struct.ImBuf, ptr %112, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !61
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %165, label %118

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.ImBuf, ptr %112, i64 0, i32 3
  %120 = load i32, ptr %119, align 4, !tbaa !65
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %165, label %122

122:                                              ; preds = %118
  br i1 %99, label %123, label %133

123:                                              ; preds = %122
  %124 = load i16, ptr %96, align 8, !tbaa !69
  %125 = icmp eq i16 %124, 13
  %126 = load ptr, ptr %114, align 8, !tbaa !71
  %127 = getelementptr inbounds %struct.BakeImBufuserData, ptr %114, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !66
  br i1 %125, label %129, label %132

129:                                              ; preds = %123
  %130 = load float, ptr %106, align 4, !tbaa !72
  %131 = tail call float @RE_bake_make_derivative(ptr noundef %112, ptr noundef %126, ptr noundef %128, float noundef %103, float noundef %105, float noundef %130) #9
  br label %133

132:                                              ; preds = %123
  tail call void @RE_bake_ibuf_normalize_displacement(ptr noundef %112, ptr noundef %126, ptr noundef %128, float noundef %103, float noundef %105) #9
  br label %133

133:                                              ; preds = %132, %129, %122
  %134 = getelementptr inbounds %struct.BakeImBufuserData, ptr %114, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !66
  %136 = load i32, ptr %107, align 4, !tbaa !73
  tail call void @RE_bake_ibuf_filter(ptr noundef %112, ptr noundef %135, i32 noundef %136) #9
  %137 = getelementptr inbounds %struct.ImBuf, ptr %112, i64 0, i32 23
  %138 = load i32, ptr %137, align 4, !tbaa !74
  %139 = or i32 %138, 18
  store i32 %139, ptr %137, align 4, !tbaa !74
  %140 = getelementptr inbounds %struct.ImBuf, ptr %112, i64 0, i32 9
  %141 = load ptr, ptr %140, align 8, !tbaa !75
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %133
  %144 = or i32 %138, 26
  store i32 %144, ptr %137, align 4, !tbaa !74
  br label %145

145:                                              ; preds = %143, %133
  %146 = getelementptr inbounds %struct.ImBuf, ptr %112, i64 0, i32 19
  %147 = load ptr, ptr %146, align 8, !tbaa !57
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = load i32, ptr %137, align 4, !tbaa !74
  %151 = or i32 %150, 4
  store i32 %151, ptr %137, align 4, !tbaa !74
  tail call void @imb_freemipmapImBuf(ptr noundef %112) #9
  br label %152

152:                                              ; preds = %149, %145
  %153 = load ptr, ptr %113, align 8, !tbaa !68
  %154 = icmp eq ptr %153, null
  br i1 %154, label %164, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %114, align 8, !tbaa !71
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %159(ptr noundef nonnull %156) #9
  br label %160

160:                                              ; preds = %158, %155
  %161 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %162 = load ptr, ptr %134, align 8, !tbaa !66
  tail call void %161(ptr noundef %162) #9
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %163(ptr noundef nonnull %114) #9
  store ptr null, ptr %113, align 8, !tbaa !68
  br label %164

164:                                              ; preds = %160, %152
  tail call void @BKE_image_release_ibuf(ptr noundef %111, ptr noundef %112, ptr noundef null) #9
  tail call void @DAG_id_tag_update(ptr noundef %111, i16 noundef signext 0) #9
  br label %165

165:                                              ; preds = %164, %118, %108
  %166 = load ptr, ptr %109, align 8, !tbaa !57
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %108, !llvm.loop !76

168:                                              ; preds = %165, %95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_multires_bake(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.CCGKey, align 4
  %9 = alloca %struct.MultiresBakeQueue, align 4
  %10 = alloca %struct.ListBase, align 8
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = tail call i32 %15(ptr noundef %11) #9
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %157

18:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %19 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %1, ptr noundef null, ptr noundef null) #9
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 31
  %21 = load ptr, ptr %20, align 8, !tbaa !78
  %22 = tail call ptr %21(ptr noundef %11) #9
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 33
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = tail call ptr %24(ptr noundef %11) #9
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 52
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = tail call ptr %27(ptr noundef %11, i32 noundef 5) #9
  %29 = load ptr, ptr %26, align 8, !tbaa !80
  %30 = tail call ptr %29(ptr noundef %11, i32 noundef 8) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %31 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 17
  %32 = load i32, ptr %31, align 8, !tbaa !81
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %18
  %35 = tail call i32 @BLI_system_thread_count() #9
  br label %36

36:                                               ; preds = %18, %34
  %37 = phi i32 [ %35, %34 ], [ %32, %18 ]
  %38 = icmp eq i8 %2, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %11, i64 0, i32 2
  %41 = tail call i32 @CustomData_get_layer_index(ptr noundef nonnull %40, i32 noundef 18) #9
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  tail call void @DM_add_tangent_layer(ptr noundef %11) #9
  br label %44

44:                                               ; preds = %43, %39
  %45 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %11, i32 noundef 18) #9
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi ptr [ %45, %44 ], [ null, %36 ]
  %48 = icmp eq ptr %4, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call ptr %4(ptr noundef nonnull %0, ptr noundef %1) #9, !callees !82
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi ptr [ %50, %49 ], [ null, %46 ]
  %53 = icmp sgt i32 %37, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  call void @BLI_init_threads(ptr noundef nonnull %10, ptr noundef nonnull @do_multires_bake_thread, i32 noundef %37) #9
  br label %55

55:                                               ; preds = %54, %51
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %57 = sext i32 %37 to i64
  %58 = mul nsw i64 %57, 200
  %59 = call ptr %56(i64 noundef %58, ptr noundef nonnull @.str.2) #9
  %60 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #9
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %61, i64 0, i32 64
  %63 = load ptr, ptr %62, align 8, !tbaa !84
  %64 = call i32 %63(ptr noundef %61) #9
  %65 = getelementptr inbounds %struct.DerivedMesh, ptr %61, i64 0, i32 65
  %66 = load ptr, ptr %65, align 8, !tbaa !85
  %67 = call ptr %66(ptr noundef %61) #9
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %61, i64 0, i32 67
  %69 = load ptr, ptr %68, align 8, !tbaa !86
  %70 = call ptr %69(ptr noundef %61) #9
  %71 = getelementptr inbounds %struct.DerivedMesh, ptr %61, i64 0, i32 68
  %72 = load ptr, ptr %71, align 8, !tbaa !87
  call void %72(ptr noundef %61, ptr noundef nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #9
  store i32 0, ptr %9, align 4, !tbaa !88
  %73 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %9, i64 0, i32 1
  store i32 %16, ptr %73, align 4, !tbaa !90
  %74 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %9, i64 0, i32 2
  call void @BLI_spin_init(ptr noundef nonnull %74) #9
  %75 = icmp sgt i32 %37, 0
  br i1 %75, label %76, label %122

76:                                               ; preds = %55
  %77 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 2
  %78 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 3
  %79 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 20
  %80 = getelementptr inbounds %struct.ImBuf, ptr %19, i64 0, i32 25
  %81 = zext nneg i32 %37 to i64
  br label %82

82:                                               ; preds = %76, %119
  %83 = phi i64 [ 0, %76 ], [ %120, %119 ]
  %84 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83
  %85 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 1
  store ptr %0, ptr %85, align 8, !tbaa !91
  %86 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 2
  store ptr %1, ptr %86, align 8, !tbaa !95
  store ptr %9, ptr %84, align 8, !tbaa !96
  %87 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5
  %88 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 1
  store ptr %25, ptr %88, align 8, !tbaa !97
  store ptr %22, ptr %87, align 8, !tbaa !98
  %89 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 2
  store ptr %28, ptr %89, align 8, !tbaa !99
  %90 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 3
  store ptr %47, ptr %90, align 8, !tbaa !100
  %91 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 4
  store ptr %30, ptr %91, align 8, !tbaa !101
  %92 = load i32, ptr %77, align 8, !tbaa !61
  %93 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 5
  store i32 %92, ptr %93, align 8, !tbaa !102
  %94 = load i32, ptr %78, align 4, !tbaa !65
  %95 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 6
  store i32 %94, ptr %95, align 4, !tbaa !103
  %96 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 11
  store ptr %11, ptr %96, align 8, !tbaa !104
  %97 = load ptr, ptr %60, align 8, !tbaa !83
  %98 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 12
  store ptr %97, ptr %98, align 8, !tbaa !105
  %99 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 13
  store i32 %13, ptr %99, align 8, !tbaa !106
  %100 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 17
  store ptr %3, ptr %100, align 8, !tbaa !107
  %101 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 14
  store ptr %84, ptr %101, align 8, !tbaa !108
  %102 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 15
  store ptr %52, ptr %102, align 8, !tbaa !109
  %103 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 5, i32 16
  store ptr %19, ptr %103, align 8, !tbaa !110
  %104 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 6
  store float 0x47EFFFFFE0000000, ptr %104, align 8, !tbaa !111
  %105 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 7
  store float 0xC7EFFFFFE0000000, ptr %105, align 4, !tbaa !112
  %106 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 4
  %107 = load ptr, ptr %79, align 8, !tbaa !113
  %108 = load ptr, ptr %80, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %106, i8 0, i64 40, i1 false)
  %109 = getelementptr inbounds %struct.BakeImBufuserData, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !66
  %111 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 4, i32 2
  store ptr %110, ptr %111, align 8, !tbaa !114
  %112 = load i32, ptr %77, align 8, !tbaa !61
  store i32 %112, ptr %106, align 8, !tbaa !115
  %113 = load i32, ptr %78, align 4, !tbaa !65
  %114 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 4, i32 1
  store i32 %113, ptr %114, align 4, !tbaa !116
  %115 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 4, i32 3
  store ptr %87, ptr %115, align 8, !tbaa !117
  %116 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 4, i32 4
  store ptr @flush_pixel, ptr %116, align 8, !tbaa !118
  %117 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %83, i32 4, i32 5
  store ptr %107, ptr %117, align 8, !tbaa !119
  br i1 %53, label %118, label %119

118:                                              ; preds = %82
  call void @BLI_insert_thread(ptr noundef nonnull %10, ptr noundef nonnull %84) #9
  br label %119

119:                                              ; preds = %118, %82
  %120 = add nuw nsw i64 %83, 1
  %121 = icmp eq i64 %120, %81
  br i1 %121, label %122, label %82, !llvm.loop !120

122:                                              ; preds = %119, %55
  br i1 %53, label %123, label %124

123:                                              ; preds = %122
  call void @BLI_end_threads(ptr noundef nonnull %10) #9
  br label %126

124:                                              ; preds = %122
  %125 = call ptr @do_multires_bake_thread(ptr noundef %59)
  br label %126

126:                                              ; preds = %124, %123
  %127 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 0, i32 6
  %128 = load float, ptr %127, align 8, !tbaa !111
  store float %128, ptr %6, align 4, !tbaa !121
  %129 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 0, i32 7
  %130 = load float, ptr %129, align 4, !tbaa !112
  %131 = getelementptr inbounds %struct.MultiresBakeResult, ptr %6, i64 0, i32 1
  store float %130, ptr %131, align 4, !tbaa !123
  %132 = icmp sgt i32 %37, 1
  br i1 %132, label %133, label %152

133:                                              ; preds = %126
  %134 = load float, ptr %6, align 4, !tbaa !121
  %135 = load float, ptr %131, align 4, !tbaa !123
  %136 = zext nneg i32 %37 to i64
  br label %137

137:                                              ; preds = %133, %137
  %138 = phi i64 [ 1, %133 ], [ %149, %137 ]
  %139 = phi float [ %135, %133 ], [ %148, %137 ]
  %140 = phi float [ %134, %133 ], [ %144, %137 ]
  %141 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %138, i32 6
  %142 = load float, ptr %141, align 8, !tbaa !111
  %143 = fcmp olt float %140, %142
  %144 = select i1 %143, float %140, float %142
  %145 = getelementptr inbounds %struct.MultiresBakeThread, ptr %59, i64 %138, i32 7
  %146 = load float, ptr %145, align 4, !tbaa !112
  %147 = fcmp ogt float %139, %146
  %148 = select i1 %147, float %139, float %146
  %149 = add nuw nsw i64 %138, 1
  %150 = icmp eq i64 %149, %136
  br i1 %150, label %151, label %137, !llvm.loop !124

151:                                              ; preds = %137
  store float %144, ptr %6, align 4, !tbaa !121
  store float %148, ptr %131, align 4, !tbaa !123
  br label %152

152:                                              ; preds = %151, %126
  call void @BLI_spin_end(ptr noundef nonnull %74) #9
  %153 = icmp eq ptr %5, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %152
  call void %5(ptr noundef %52) #9, !callees !125
  br label %155

155:                                              ; preds = %154, %152
  %156 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %156(ptr noundef %59) #9
  call void @BKE_image_release_ibuf(ptr noundef %1, ptr noundef %19, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  br label %157

157:                                              ; preds = %155, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_tangmat_callback(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10) #0 {
  %12 = alloca %struct.MFace, align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %17 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %16, i32 noundef 5) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  %18 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !61
  %20 = mul nsw i32 %19, %10
  %21 = add nsw i32 %20, %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 30
  %23 = load ptr, ptr %22, align 8, !tbaa !126
  call void %23(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %12) #9
  %24 = sext i32 %5 to i64
  %25 = getelementptr inbounds %struct.MTFace, ptr %17, i64 %24
  %26 = getelementptr inbounds [4 x [2 x float]], ptr %25, i64 0, i64 1
  %27 = getelementptr inbounds [4 x [2 x float]], ptr %25, i64 0, i64 2
  %28 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !127
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %11
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %25, i64 0, i64 3
  call void @resolve_quad_uv_v2(ptr noundef nonnull %13, ptr noundef %7, ptr noundef %25, ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %32) #9
  br label %34

33:                                               ; preds = %11
  call void @resolve_tri_uv_v2(ptr noundef nonnull %13, ptr noundef %7, ptr noundef %25, ptr noundef nonnull %26, ptr noundef nonnull %27) #9
  br label %34

34:                                               ; preds = %33, %31
  %35 = load float, ptr %13, align 4, !tbaa !129
  %36 = fcmp olt float %35, 0.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store float 0.000000e+00, ptr %13, align 4, !tbaa !129
  br label %41

38:                                               ; preds = %34
  %39 = fcmp ogt float %35, 1.000000e+00
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  store float 1.000000e+00, ptr %13, align 4, !tbaa !129
  br label %41

41:                                               ; preds = %38, %40, %37
  %42 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !129
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = fcmp ogt float %43, 1.000000e+00
  br i1 %46, label %47, label %49

47:                                               ; preds = %45, %41
  %48 = phi float [ 0.000000e+00, %41 ], [ 1.000000e+00, %45 ]
  store float %48, ptr %42, align 4, !tbaa !129
  br label %49

49:                                               ; preds = %47, %45
  %50 = load ptr, ptr %3, align 8, !tbaa !130
  %51 = getelementptr inbounds %struct.MNormalBakeData, ptr %3, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !132
  %53 = load float, ptr %13, align 4, !tbaa !129
  %54 = load float, ptr %42, align 4, !tbaa !129
  call fastcc void @get_ccgdm_data(ptr noundef %0, ptr noundef %1, ptr noundef %50, ptr noundef %52, i32 noundef %6, i32 noundef %5, float noundef %53, float noundef %54, ptr noundef null, ptr noundef nonnull %14)
  call void @mul_v3_m3v3(ptr noundef nonnull %15, ptr noundef %8, ptr noundef nonnull %14) #9
  %55 = load float, ptr %15, align 4, !tbaa !129
  %56 = getelementptr inbounds float, ptr %15, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !129
  %58 = fmul float %57, %57
  %59 = call float @llvm.fmuladd.f32(float %55, float %55, float %58)
  %60 = getelementptr inbounds float, ptr %15, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !129
  %62 = call float @llvm.fmuladd.f32(float %61, float %61, float %59)
  %63 = fcmp ogt float %62, 0x38AA95A5C0000000
  br i1 %63, label %64, label %73

64:                                               ; preds = %49
  %65 = call float @sqrtf(float noundef %62) #9
  %66 = fdiv float 1.000000e+00, %65
  %67 = load float, ptr %15, align 4, !tbaa !129
  %68 = fmul float %67, %66
  store float %68, ptr %15, align 4, !tbaa !129
  %69 = load float, ptr %56, align 4, !tbaa !129
  %70 = fmul float %66, %69
  store float %70, ptr %56, align 4, !tbaa !129
  %71 = load float, ptr %60, align 4, !tbaa !129
  %72 = fmul float %66, %71
  br label %74

73:                                               ; preds = %49
  store float 0.000000e+00, ptr %15, align 4, !tbaa !129
  store float 0.000000e+00, ptr %56, align 4, !tbaa !129
  br label %74

74:                                               ; preds = %64, %73
  %75 = phi float [ 0.000000e+00, %73 ], [ %72, %64 ]
  store float %75, ptr %60, align 4, !tbaa !129
  %76 = load float, ptr %15, align 4, !tbaa !129
  %77 = fmul float %76, 5.000000e-01
  store float %77, ptr %15, align 4, !tbaa !129
  %78 = load float, ptr %56, align 4, !tbaa !129
  %79 = fmul float %78, 5.000000e-01
  store float %79, ptr %56, align 4, !tbaa !129
  %80 = fmul float %75, 5.000000e-01
  store float %80, ptr %60, align 4, !tbaa !129
  %81 = fadd float %77, 5.000000e-01
  store float %81, ptr %15, align 4, !tbaa !129
  %82 = fadd float %79, 5.000000e-01
  store float %82, ptr %56, align 4, !tbaa !129
  %83 = fadd float %80, 5.000000e-01
  store float %83, ptr %60, align 4, !tbaa !129
  %84 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !75
  %86 = icmp eq ptr %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %74
  %88 = shl nsw i32 %21, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, ptr %85, i64 %89
  store float %81, ptr %90, align 4, !tbaa !129
  %91 = load float, ptr %56, align 4, !tbaa !129
  %92 = getelementptr inbounds float, ptr %90, i64 1
  store float %91, ptr %92, align 4, !tbaa !129
  %93 = load float, ptr %60, align 4, !tbaa !129
  %94 = getelementptr inbounds float, ptr %90, i64 2
  store float %93, ptr %94, align 4, !tbaa !129
  %95 = getelementptr inbounds float, ptr %90, i64 3
  store float 1.000000e+00, ptr %95, align 4, !tbaa !129
  br label %103

96:                                               ; preds = %74
  %97 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %98 = load ptr, ptr %97, align 8, !tbaa !133
  %99 = shl nsw i32 %21, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %98, i64 %100
  call void @rgb_float_to_uchar(ptr noundef %101, ptr noundef nonnull %15) #9
  %102 = getelementptr inbounds i8, ptr %101, i64 3
  store i8 -1, ptr %102, align 1, !tbaa !134
  br label %103

103:                                              ; preds = %96, %87
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @init_normal_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %5 = tail call ptr %4(i64 noundef 16, ptr noundef nonnull @.str.3) #9
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = tail call ptr %7(ptr noundef %3, i32 noundef 7) #9
  store ptr %8, ptr %5, align 8, !tbaa !130
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 54
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  %11 = tail call ptr %10(ptr noundef %3, i32 noundef 7) #9
  %12 = getelementptr inbounds %struct.MNormalBakeData, ptr %5, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !132
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal void @free_normal_data(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %2(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_heights_callback(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr nocapture readnone %8, i32 noundef %9, i32 noundef %10) #0 {
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [4 x [3 x float]], align 16
  %15 = alloca [4 x [3 x float]], align 16
  %16 = alloca %struct.MFace, align 4
  %17 = alloca [2 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %22 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %21, i32 noundef 5) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #9
  %23 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !61
  %25 = mul nsw i32 %24, %10
  %26 = add nsw i32 %25, %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #9
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 30
  %28 = load ptr, ptr %27, align 8, !tbaa !126
  call void %28(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %16) #9
  %29 = sext i32 %5 to i64
  %30 = getelementptr inbounds %struct.MTFace, ptr %22, i64 %29
  %31 = getelementptr inbounds [4 x [2 x float]], ptr %30, i64 0, i64 1
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %30, i64 0, i64 2
  %33 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !127
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %11
  %37 = getelementptr inbounds [4 x [2 x float]], ptr %30, i64 0, i64 3
  call void @resolve_quad_uv_v2(ptr noundef nonnull %17, ptr noundef %7, ptr noundef %30, ptr noundef nonnull %31, ptr noundef nonnull %32, ptr noundef nonnull %37) #9
  br label %39

38:                                               ; preds = %11
  call void @resolve_tri_uv_v2(ptr noundef nonnull %17, ptr noundef %7, ptr noundef %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #9
  br label %39

39:                                               ; preds = %38, %36
  %40 = load float, ptr %17, align 4, !tbaa !129
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store float 0.000000e+00, ptr %17, align 4, !tbaa !129
  br label %46

43:                                               ; preds = %39
  %44 = fcmp ogt float %40, 1.000000e+00
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  store float 1.000000e+00, ptr %17, align 4, !tbaa !129
  br label %46

46:                                               ; preds = %43, %45, %42
  %47 = getelementptr inbounds [2 x float], ptr %17, i64 0, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !129
  %49 = fcmp olt float %48, 0.000000e+00
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = fcmp ogt float %48, 1.000000e+00
  br i1 %51, label %52, label %54

52:                                               ; preds = %50, %46
  %53 = phi float [ 0.000000e+00, %46 ], [ 1.000000e+00, %50 ]
  store float %53, ptr %47, align 4, !tbaa !129
  br label %54

54:                                               ; preds = %52, %50
  %55 = getelementptr inbounds %struct.MHeightBakeData, ptr %3, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !136
  %57 = getelementptr inbounds %struct.MHeightBakeData, ptr %3, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !138
  %59 = load float, ptr %17, align 4, !tbaa !129
  %60 = load float, ptr %47, align 4, !tbaa !129
  call fastcc void @get_ccgdm_data(ptr noundef %0, ptr noundef %1, ptr noundef %56, ptr noundef %58, i32 noundef %6, i32 noundef %5, float noundef %59, float noundef %60, ptr noundef nonnull %19, ptr noundef null)
  %61 = getelementptr inbounds %struct.MHeightBakeData, ptr %3, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !139
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %54
  %65 = load ptr, ptr %55, align 8, !tbaa !136
  %66 = load ptr, ptr %57, align 8, !tbaa !138
  %67 = load float, ptr %17, align 4, !tbaa !129
  %68 = load float, ptr %47, align 4, !tbaa !129
  call fastcc void @get_ccgdm_data(ptr noundef %0, ptr noundef nonnull %62, ptr noundef %65, ptr noundef %66, i32 noundef 0, i32 noundef %5, float noundef %67, float noundef %68, ptr noundef nonnull %18, ptr noundef nonnull %20)
  br label %124

69:                                               ; preds = %54
  %70 = load ptr, ptr %27, align 8, !tbaa !126
  call void %70(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %16) #9
  %71 = load i32, ptr %33, align 4, !tbaa !127
  %72 = icmp eq i32 %71, 0
  %73 = load float, ptr %17, align 4, !tbaa !129
  %74 = load float, ptr %47, align 4, !tbaa !129
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 76
  %76 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 1
  %77 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 2
  br i1 %72, label %104, label %78

78:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %15) #9
  %79 = load ptr, ptr %75, align 8, !tbaa !140
  %80 = load i32, ptr %16, align 4, !tbaa !141
  call void %79(ptr noundef %0, i32 noundef %80, ptr noundef nonnull %15) #9
  %81 = load ptr, ptr %75, align 8, !tbaa !140
  %82 = load i32, ptr %76, align 4, !tbaa !142
  %83 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 1
  call void %81(ptr noundef %0, i32 noundef %82, ptr noundef nonnull %83) #9
  %84 = load ptr, ptr %75, align 8, !tbaa !140
  %85 = load i32, ptr %77, align 4, !tbaa !143
  %86 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 2
  call void %84(ptr noundef %0, i32 noundef %85, ptr noundef nonnull %86) #9
  %87 = load ptr, ptr %75, align 8, !tbaa !140
  %88 = load i32, ptr %33, align 4, !tbaa !127
  %89 = getelementptr inbounds [4 x [3 x float]], ptr %15, i64 0, i64 3
  call void %87(ptr noundef %0, i32 noundef %88, ptr noundef nonnull %89) #9
  call void @interp_bilinear_quad_v3(ptr noundef nonnull %15, float noundef %73, float noundef %74, ptr noundef nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %15) #9
  %90 = load float, ptr %17, align 4, !tbaa !129
  %91 = load float, ptr %47, align 4, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %14) #9
  %92 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 78
  %93 = load ptr, ptr %92, align 8, !tbaa !144
  %94 = load i32, ptr %16, align 4, !tbaa !141
  call void %93(ptr noundef %0, i32 noundef %94, ptr noundef nonnull %14) #9
  %95 = load ptr, ptr %92, align 8, !tbaa !144
  %96 = load i32, ptr %76, align 4, !tbaa !142
  %97 = getelementptr inbounds [4 x [3 x float]], ptr %14, i64 0, i64 1
  call void %95(ptr noundef %0, i32 noundef %96, ptr noundef nonnull %97) #9
  %98 = load ptr, ptr %92, align 8, !tbaa !144
  %99 = load i32, ptr %77, align 4, !tbaa !143
  %100 = getelementptr inbounds [4 x [3 x float]], ptr %14, i64 0, i64 2
  call void %98(ptr noundef %0, i32 noundef %99, ptr noundef nonnull %100) #9
  %101 = load ptr, ptr %92, align 8, !tbaa !144
  %102 = load i32, ptr %33, align 4, !tbaa !127
  %103 = getelementptr inbounds [4 x [3 x float]], ptr %14, i64 0, i64 3
  call void %101(ptr noundef %0, i32 noundef %102, ptr noundef nonnull %103) #9
  call void @interp_bilinear_quad_v3(ptr noundef nonnull %14, float noundef %90, float noundef %91, ptr noundef nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %14) #9
  br label %124

104:                                              ; preds = %69
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #9
  %105 = load ptr, ptr %75, align 8, !tbaa !140
  %106 = load i32, ptr %16, align 4, !tbaa !141
  call void %105(ptr noundef %0, i32 noundef %106, ptr noundef nonnull %13) #9
  %107 = load ptr, ptr %75, align 8, !tbaa !140
  %108 = load i32, ptr %76, align 4, !tbaa !142
  %109 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 1
  call void %107(ptr noundef %0, i32 noundef %108, ptr noundef nonnull %109) #9
  %110 = load ptr, ptr %75, align 8, !tbaa !140
  %111 = load i32, ptr %77, align 4, !tbaa !143
  %112 = getelementptr inbounds [3 x [3 x float]], ptr %13, i64 0, i64 2
  call void %110(ptr noundef %0, i32 noundef %111, ptr noundef nonnull %112) #9
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %13, float noundef %73, float noundef %74, ptr noundef nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #9
  %113 = load float, ptr %17, align 4, !tbaa !129
  %114 = load float, ptr %47, align 4, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #9
  %115 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 78
  %116 = load ptr, ptr %115, align 8, !tbaa !144
  %117 = load i32, ptr %16, align 4, !tbaa !141
  call void %116(ptr noundef %0, i32 noundef %117, ptr noundef nonnull %12) #9
  %118 = load ptr, ptr %115, align 8, !tbaa !144
  %119 = load i32, ptr %76, align 4, !tbaa !142
  %120 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1
  call void %118(ptr noundef %0, i32 noundef %119, ptr noundef nonnull %120) #9
  %121 = load ptr, ptr %115, align 8, !tbaa !144
  %122 = load i32, ptr %77, align 4, !tbaa !143
  %123 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 2
  call void %121(ptr noundef %0, i32 noundef %122, ptr noundef nonnull %123) #9
  call void @interp_barycentric_tri_v3(ptr noundef nonnull %12, float noundef %113, float noundef %114, ptr noundef nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #9
  br label %124

124:                                              ; preds = %78, %104, %64
  %125 = load float, ptr %19, align 4, !tbaa !129
  %126 = load float, ptr %18, align 4, !tbaa !129
  %127 = fsub float %125, %126
  %128 = getelementptr inbounds float, ptr %19, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !129
  %130 = getelementptr inbounds float, ptr %18, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !129
  %132 = fsub float %129, %131
  %133 = getelementptr inbounds float, ptr %19, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !129
  %135 = getelementptr inbounds float, ptr %18, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !129
  %137 = fsub float %134, %136
  %138 = load float, ptr %20, align 4, !tbaa !129
  %139 = getelementptr inbounds float, ptr %20, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !129
  %141 = fmul float %132, %140
  %142 = call float @llvm.fmuladd.f32(float %138, float %127, float %141)
  %143 = getelementptr inbounds float, ptr %20, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !129
  %145 = call float @llvm.fmuladd.f32(float %144, float %137, float %142)
  %146 = load ptr, ptr %3, align 8, !tbaa !145
  %147 = sext i32 %26 to i64
  %148 = getelementptr inbounds float, ptr %146, i64 %147
  store float %145, ptr %148, align 4, !tbaa !129
  %149 = getelementptr inbounds %struct.MultiresBakeThread, ptr %2, i64 0, i32 6
  %150 = load float, ptr %149, align 8, !tbaa !111
  %151 = fcmp olt float %150, %145
  %152 = select i1 %151, float %150, float %145
  store float %152, ptr %149, align 8, !tbaa !111
  %153 = getelementptr inbounds %struct.MultiresBakeThread, ptr %2, i64 0, i32 7
  %154 = load float, ptr %153, align 4, !tbaa !112
  %155 = fcmp ogt float %154, %145
  %156 = select i1 %155, float %154, float %145
  store float %156, ptr %153, align 4, !tbaa !112
  %157 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %158 = load ptr, ptr %157, align 8, !tbaa !75
  %159 = icmp eq ptr %158, null
  br i1 %159, label %167, label %160

160:                                              ; preds = %124
  %161 = shl nsw i32 %26, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, ptr %158, i64 %162
  %164 = getelementptr inbounds float, ptr %163, i64 2
  store float %145, ptr %164, align 4, !tbaa !129
  %165 = getelementptr inbounds float, ptr %163, i64 1
  store float %145, ptr %165, align 4, !tbaa !129
  store float %145, ptr %163, align 4, !tbaa !129
  %166 = getelementptr inbounds float, ptr %163, i64 3
  store float 1.000000e+00, ptr %166, align 4, !tbaa !129
  br label %184

167:                                              ; preds = %124
  %168 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %169 = load ptr, ptr %168, align 8, !tbaa !133
  %170 = shl nsw i32 %26, 2
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, ptr %169, i64 %171
  %173 = fcmp ugt float %145, 0.000000e+00
  br i1 %173, label %174, label %179

174:                                              ; preds = %167
  %175 = fcmp ogt float %145, 0x3FEFEFEFE0000000
  %176 = call float @llvm.fmuladd.f32(float %145, float 2.550000e+02, float 5.000000e-01)
  %177 = select i1 %175, float 2.550000e+02, float %176
  %178 = fptoui float %177 to i8
  br label %179

179:                                              ; preds = %167, %174
  %180 = phi i8 [ %178, %174 ], [ 0, %167 ]
  %181 = getelementptr inbounds i8, ptr %172, i64 2
  store i8 %180, ptr %181, align 1, !tbaa !134
  %182 = getelementptr inbounds i8, ptr %172, i64 1
  store i8 %180, ptr %182, align 1, !tbaa !134
  store i8 %180, ptr %172, align 1, !tbaa !134
  %183 = getelementptr inbounds i8, ptr %172, i64 3
  store i8 -1, ptr %183, align 1, !tbaa !134
  br label %184

184:                                              ; preds = %179, %160
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %16) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @init_heights_data(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.CCGKey, align 4
  %4 = alloca %struct.SubsurfModifierData, align 8
  %5 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %1, ptr noundef null, ptr noundef null) #9
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 25
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %17 = getelementptr inbounds %struct.ImBuf, ptr %5, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !65
  %19 = sext i32 %18 to i64
  %20 = mul i64 %16, %19
  %21 = tail call ptr %12(i64 noundef %20, ptr noundef nonnull @.str.4) #9
  store ptr %21, ptr %8, align 8, !tbaa !71
  br label %22

22:                                               ; preds = %11, %2
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %24 = tail call ptr %23(i64 noundef 40, ptr noundef nonnull @.str.5) #9
  %25 = getelementptr inbounds %struct.MHeightBakeData, ptr %24, i64 0, i32 1
  store ptr %1, ptr %25, align 8, !tbaa !146
  %26 = load ptr, ptr %8, align 8, !tbaa !71
  store ptr %26, ptr %24, align 8, !tbaa !145
  %27 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 7
  %28 = load i8, ptr %27, align 2, !tbaa !147
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i64 136, i1 false)
  %31 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !148
  %33 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !77
  %35 = sub nsw i32 %32, %34
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %65, label %37

37:                                               ; preds = %30
  %38 = tail call i32 @llvm.smin.i32(i32 %35, i32 6)
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 3
  store i16 %39, ptr %40, align 4, !tbaa !149
  %41 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 2
  store i16 %39, ptr %41, align 2, !tbaa !152
  %42 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 4
  %43 = load i16, ptr %42, align 2, !tbaa !153
  %44 = or i16 %43, 8
  store i16 %44, ptr %42, align 2, !tbaa !153
  %45 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 2
  %46 = load i8, ptr %45, align 8, !tbaa !154
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.SubsurfModifierData, ptr %4, i64 0, i32 1
  store i16 1, ptr %49, align 8, !tbaa !155
  br label %50

50:                                               ; preds = %48, %37
  %51 = load ptr, ptr %0, align 8, !tbaa !34
  %52 = call ptr @subsurf_make_derived_from_derived(ptr noundef %51, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0) #9
  %53 = getelementptr inbounds %struct.MHeightBakeData, ptr %24, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %52, i64 0, i32 64
  %55 = load ptr, ptr %54, align 8, !tbaa !84
  %56 = call i32 %55(ptr noundef %52) #9
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %52, i64 0, i32 65
  %58 = load ptr, ptr %57, align 8, !tbaa !85
  %59 = call ptr %58(ptr noundef %52) #9
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %52, i64 0, i32 67
  %61 = load ptr, ptr %60, align 8, !tbaa !86
  %62 = call ptr %61(ptr noundef %52) #9
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %52, i64 0, i32 68
  %64 = load ptr, ptr %63, align 8, !tbaa !87
  call void %64(ptr noundef %52, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  br label %65

65:                                               ; preds = %50, %30
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #9
  br label %66

66:                                               ; preds = %65, %22
  %67 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 52
  %68 = load ptr, ptr %67, align 8, !tbaa !80
  %69 = call ptr %68(ptr noundef %6, i32 noundef 7) #9
  %70 = getelementptr inbounds %struct.MHeightBakeData, ptr %24, i64 0, i32 3
  store ptr %69, ptr %70, align 8, !tbaa !136
  %71 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 54
  %72 = load ptr, ptr %71, align 8, !tbaa !135
  %73 = call ptr %72(ptr noundef %6, i32 noundef 7) #9
  %74 = getelementptr inbounds %struct.MHeightBakeData, ptr %24, i64 0, i32 4
  store ptr %73, ptr %74, align 8, !tbaa !138
  call void @BKE_image_release_ibuf(ptr noundef %1, ptr noundef %5, ptr noundef null) #9
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define internal void @free_heights_data(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.MHeightBakeData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 95
  %7 = load ptr, ptr %6, align 8, !tbaa !156
  tail call void %7(ptr noundef nonnull %3) #9
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %9(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_ao_callback(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr nocapture readnone %8, i32 noundef %9, i32 noundef %10) #0 {
  %12 = alloca %struct.Isect, align 8
  %13 = alloca %struct.MFace, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = getelementptr inbounds float, ptr %17, i64 2
  %19 = alloca [3 x float], align 4
  %20 = getelementptr inbounds float, ptr %19, i64 2
  %21 = getelementptr inbounds float, ptr %19, i64 2
  %22 = alloca [3 x float], align 4
  %23 = alloca [2 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %26 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %25, i32 noundef 5) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #9
  %27 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !61
  %29 = mul nsw i32 %28, %10
  %30 = add nsw i32 %29, %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #9
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 30
  %32 = load ptr, ptr %31, align 8, !tbaa !126
  call void %32(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %13) #9
  %33 = sext i32 %5 to i64
  %34 = getelementptr inbounds %struct.MTFace, ptr %26, i64 %33
  %35 = getelementptr inbounds [4 x [2 x float]], ptr %34, i64 0, i64 1
  %36 = getelementptr inbounds [4 x [2 x float]], ptr %34, i64 0, i64 2
  %37 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !127
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %11
  %41 = getelementptr inbounds [4 x [2 x float]], ptr %34, i64 0, i64 3
  call void @resolve_quad_uv_v2(ptr noundef nonnull %23, ptr noundef %7, ptr noundef %34, ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef nonnull %41) #9
  br label %43

42:                                               ; preds = %11
  call void @resolve_tri_uv_v2(ptr noundef nonnull %23, ptr noundef %7, ptr noundef %34, ptr noundef nonnull %35, ptr noundef nonnull %36) #9
  br label %43

43:                                               ; preds = %42, %40
  %44 = load float, ptr %23, align 4, !tbaa !129
  %45 = fcmp olt float %44, 0.000000e+00
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store float 0.000000e+00, ptr %23, align 4, !tbaa !129
  br label %50

47:                                               ; preds = %43
  %48 = fcmp ogt float %44, 1.000000e+00
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store float 1.000000e+00, ptr %23, align 4, !tbaa !129
  br label %50

50:                                               ; preds = %47, %49, %46
  %51 = getelementptr inbounds [2 x float], ptr %23, i64 0, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !129
  %53 = fcmp olt float %52, 0.000000e+00
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = fcmp ogt float %52, 1.000000e+00
  br i1 %55, label %56, label %58

56:                                               ; preds = %54, %50
  %57 = phi float [ 0.000000e+00, %50 ], [ 1.000000e+00, %54 ]
  store float %57, ptr %51, align 4, !tbaa !129
  br label %58

58:                                               ; preds = %56, %54
  %59 = getelementptr inbounds %struct.MAOBakeData, ptr %3, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !157
  %61 = getelementptr inbounds %struct.MAOBakeData, ptr %3, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !159
  %63 = load float, ptr %23, align 4, !tbaa !129
  %64 = load float, ptr %51, align 4, !tbaa !129
  call fastcc void @get_ccgdm_data(ptr noundef %0, ptr noundef %1, ptr noundef %60, ptr noundef %62, i32 noundef %6, i32 noundef %5, float noundef %63, float noundef %64, ptr noundef nonnull %14, ptr noundef nonnull %15)
  %65 = getelementptr inbounds %struct.MAOBakeData, ptr %3, i64 0, i32 1
  %66 = load float, ptr %65, align 4, !tbaa !160
  br label %67

67:                                               ; preds = %58, %67
  %68 = phi i64 [ 0, %58 ], [ %75, %67 ]
  %69 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !129
  %71 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 %68
  %72 = load float, ptr %71, align 4, !tbaa !129
  %73 = call float @llvm.fmuladd.f32(float %66, float %72, float %70)
  %74 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 %68
  store float %73, ptr %74, align 4, !tbaa !129
  %75 = add nuw nsw i64 %68, 1
  %76 = icmp eq i64 %75, 3
  br i1 %76, label %77, label %67, !llvm.loop !161

77:                                               ; preds = %67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %22, ptr noundef nonnull align 4 dereferenceable(12) %15, i64 12, i1 false), !tbaa !129
  %78 = load float, ptr %22, align 4, !tbaa !129
  %79 = call float @llvm.fabs.f32(float %78)
  %80 = getelementptr inbounds float, ptr %22, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !129
  %82 = call float @llvm.fabs.f32(float %81)
  %83 = getelementptr inbounds float, ptr %22, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !129
  %85 = call float @llvm.fabs.f32(float %84)
  %86 = fcmp ugt float %79, %82
  %87 = fcmp ugt float %79, %85
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %107, label %89

89:                                               ; preds = %77
  %90 = fmul float %84, %84
  %91 = call float @llvm.fmuladd.f32(float %81, float %81, float %90)
  %92 = call float @sqrtf(float noundef %91) #9
  store float 0.000000e+00, ptr %19, align 4, !tbaa !129
  %93 = fdiv float %84, %92
  %94 = getelementptr inbounds float, ptr %19, i64 1
  store float %93, ptr %94, align 4, !tbaa !129
  %95 = fneg float %81
  %96 = fdiv float %95, %92
  %97 = getelementptr inbounds float, ptr %19, i64 2
  store float %96, ptr %97, align 4, !tbaa !129
  %98 = fneg float %96
  %99 = fmul float %81, %98
  %100 = call float @llvm.fmuladd.f32(float %93, float %84, float %99)
  store float %100, ptr %17, align 4, !tbaa !129
  %101 = fmul float %84, -0.000000e+00
  %102 = call float @llvm.fmuladd.f32(float %96, float %78, float %101)
  %103 = getelementptr inbounds float, ptr %17, i64 1
  store float %102, ptr %103, align 4, !tbaa !129
  %104 = fneg float %93
  %105 = fmul float %78, %104
  %106 = call float @llvm.fmuladd.f32(float %81, float 0.000000e+00, float %105)
  br label %143

107:                                              ; preds = %77
  %108 = fcmp ugt float %82, %85
  %109 = getelementptr inbounds float, ptr %17, i64 2
  br i1 %108, label %126, label %110

110:                                              ; preds = %107
  %111 = fmul float %84, %84
  %112 = call float @llvm.fmuladd.f32(float %78, float %78, float %111)
  %113 = call float @sqrtf(float noundef %112) #9
  %114 = fdiv float %84, %113
  store float %114, ptr %17, align 4, !tbaa !129
  %115 = getelementptr inbounds float, ptr %17, i64 1
  store float 0.000000e+00, ptr %115, align 4, !tbaa !129
  %116 = fneg float %78
  %117 = fdiv float %116, %113
  store float %117, ptr %109, align 4, !tbaa !129
  %118 = fmul float %84, -0.000000e+00
  %119 = call float @llvm.fmuladd.f32(float %81, float %117, float %118)
  store float %119, ptr %19, align 4, !tbaa !129
  %120 = fmul float %117, %116
  %121 = call float @llvm.fmuladd.f32(float %84, float %114, float %120)
  %122 = getelementptr inbounds float, ptr %19, i64 1
  store float %121, ptr %122, align 4, !tbaa !129
  %123 = fneg float %81
  %124 = fmul float %114, %123
  %125 = call float @llvm.fmuladd.f32(float %78, float 0.000000e+00, float %124)
  br label %143

126:                                              ; preds = %107
  %127 = fmul float %81, %81
  %128 = call float @llvm.fmuladd.f32(float %78, float %78, float %127)
  %129 = call float @sqrtf(float noundef %128) #9
  %130 = fdiv float %81, %129
  store float %130, ptr %17, align 4, !tbaa !129
  %131 = fneg float %78
  %132 = fdiv float %131, %129
  %133 = getelementptr inbounds float, ptr %17, i64 1
  store float %132, ptr %133, align 4, !tbaa !129
  store float 0.000000e+00, ptr %109, align 4, !tbaa !129
  %134 = fneg float %84
  %135 = fmul float %132, %134
  %136 = call float @llvm.fmuladd.f32(float %81, float 0.000000e+00, float %135)
  store float %136, ptr %19, align 4, !tbaa !129
  %137 = fmul float %78, -0.000000e+00
  %138 = call float @llvm.fmuladd.f32(float %84, float %130, float %137)
  %139 = getelementptr inbounds float, ptr %19, i64 1
  store float %138, ptr %139, align 4, !tbaa !129
  %140 = fneg float %81
  %141 = fmul float %130, %140
  %142 = call float @llvm.fmuladd.f32(float %78, float %132, float %141)
  br label %143

143:                                              ; preds = %89, %110, %126
  %144 = phi float [ %106, %89 ], [ %125, %110 ], [ %142, %126 ]
  %145 = phi ptr [ %18, %89 ], [ %21, %110 ], [ %20, %126 ]
  store float %144, ptr %145, align 4, !tbaa !129
  %146 = and i32 %9, 1023
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_1, i64 0, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !162
  %150 = zext i16 %149 to i32
  %151 = add nsw i32 %150, %10
  %152 = and i32 %151, 1023
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_2, i64 0, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !162
  %156 = and i16 %155, 1023
  %157 = zext nneg i16 %156 to i32
  %158 = load i32, ptr %3, align 8, !tbaa !163
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %273

160:                                              ; preds = %143
  %161 = getelementptr inbounds %struct.MAOBakeData, ptr %3, i64 0, i32 2
  %162 = getelementptr inbounds %struct.MAOBakeData, ptr %3, i64 0, i32 3
  %163 = getelementptr inbounds %struct.Isect, ptr %12, i64 0, i32 2
  %164 = load float, ptr %16, align 4, !tbaa !129
  %165 = getelementptr inbounds float, ptr %16, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !129
  %167 = getelementptr inbounds float, ptr %12, i64 1
  %168 = getelementptr inbounds float, ptr %16, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !129
  %170 = getelementptr inbounds float, ptr %12, i64 2
  %171 = getelementptr inbounds %struct.Isect, ptr %12, i64 0, i32 1
  %172 = getelementptr inbounds float, ptr %24, i64 1
  %173 = getelementptr inbounds %struct.Isect, ptr %12, i64 0, i32 1, i64 1
  %174 = getelementptr inbounds float, ptr %24, i64 2
  %175 = getelementptr inbounds %struct.Isect, ptr %12, i64 0, i32 1, i64 2
  %176 = getelementptr inbounds %struct.Isect, ptr %12, i64 0, i32 8
  %177 = getelementptr inbounds %struct.MAOBakeData, ptr %3, i64 0, i32 4
  %178 = zext nneg i16 %156 to i64
  br label %179

179:                                              ; preds = %160, %262
  %180 = phi i64 [ 0, %160 ], [ %269, %262 ]
  %181 = phi i32 [ %158, %160 ], [ %270, %262 ]
  %182 = phi float [ 0.000000e+00, %160 ], [ %268, %262 ]
  %183 = load ptr, ptr %161, align 8, !tbaa !164
  %184 = add nuw nsw i64 %180, %178
  %185 = trunc i64 %184 to i32
  %186 = srem i32 %185, %181
  %187 = zext nneg i32 %186 to i64
  %188 = getelementptr inbounds i16, ptr %183, i64 %187
  %189 = load i16, ptr %188, align 2, !tbaa !162
  %190 = load ptr, ptr %162, align 8, !tbaa !165
  %191 = getelementptr inbounds i16, ptr %190, i64 %180
  %192 = load i16, ptr %191, align 2, !tbaa !162
  %193 = zext i16 %189 to i32
  %194 = add nuw nsw i32 %193, %157
  %195 = and i32 %194, 1023
  %196 = zext nneg i32 %195 to i64
  %197 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_2, i64 0, i64 %196
  %198 = load i16, ptr %197, align 2, !tbaa !162
  %199 = and i16 %198, 1023
  %200 = uitofp i16 %199 to float
  %201 = fmul float %200, 0x3F50000000000000
  %202 = zext i16 %192 to i32
  %203 = add nuw nsw i32 %202, %157
  %204 = and i32 %203, 1023
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_1, i64 0, i64 %205
  %207 = load i16, ptr %206, align 2, !tbaa !162
  %208 = and i16 %207, 1023
  %209 = uitofp i16 %208 to float
  %210 = fmul float %209, 0x3F50000000000000
  %211 = uitofp i16 %189 to float
  %212 = fadd float %201, %211
  %213 = sitofp i32 %181 to float
  %214 = fdiv float %212, %213
  %215 = uitofp i16 %192 to float
  %216 = fadd float %210, %215
  %217 = fdiv float %216, %213
  %218 = fmul float %217, 0x401921FB60000000
  %219 = call float @sqrtf(float noundef %214) #9
  %220 = fcmp olt float %214, 1.000000e+00
  br i1 %220, label %221, label %224

221:                                              ; preds = %179
  %222 = fsub float 1.000000e+00, %214
  %223 = call float @sqrtf(float noundef %222) #9
  br label %224

224:                                              ; preds = %179, %221
  %225 = phi float [ %223, %221 ], [ 0.000000e+00, %179 ]
  %226 = call float @cosf(float noundef %218) #9
  %227 = call float @sinf(float noundef %218) #9
  %228 = fmul float %225, %226
  %229 = fmul float %225, %227
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #9
  br label %230

230:                                              ; preds = %224, %230
  %231 = phi i64 [ 0, %224 ], [ %242, %230 ]
  %232 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 %231
  %233 = load float, ptr %232, align 4, !tbaa !129
  %234 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 %231
  %235 = load float, ptr %234, align 4, !tbaa !129
  %236 = fmul float %229, %235
  %237 = call float @llvm.fmuladd.f32(float %233, float %228, float %236)
  %238 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 %231
  %239 = load float, ptr %238, align 4, !tbaa !129
  %240 = call float @llvm.fmuladd.f32(float %239, float %219, float %237)
  %241 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 %231
  store float %240, ptr %241, align 4, !tbaa !129
  %242 = add nuw nsw i64 %231, 1
  %243 = icmp eq i64 %242, 3
  br i1 %243, label %244, label %230, !llvm.loop !166

244:                                              ; preds = %230
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %12) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %12, i8 0, i64 176, i1 false)
  store float 0x430C6BF520000000, ptr %163, align 8, !tbaa !167
  store float %164, ptr %12, align 8, !tbaa !129
  store float %166, ptr %167, align 4, !tbaa !129
  store float %169, ptr %170, align 8, !tbaa !129
  %245 = load float, ptr %24, align 4, !tbaa !129
  store float %245, ptr %171, align 4, !tbaa !129
  %246 = load float, ptr %172, align 4, !tbaa !129
  store float %246, ptr %173, align 8, !tbaa !129
  %247 = load float, ptr %174, align 4, !tbaa !129
  store float %247, ptr %175, align 4, !tbaa !129
  store i32 -1, ptr %176, align 4, !tbaa !169
  %248 = fmul float %246, %246
  %249 = call float @llvm.fmuladd.f32(float %245, float %245, float %248)
  %250 = call float @llvm.fmuladd.f32(float %247, float %247, float %249)
  %251 = fcmp ogt float %250, 0x38AA95A5C0000000
  br i1 %251, label %252, label %261

252:                                              ; preds = %244
  %253 = call float @sqrtf(float noundef %250) #9
  %254 = fdiv float 1.000000e+00, %253
  %255 = load float, ptr %171, align 4, !tbaa !129
  %256 = fmul float %255, %254
  store float %256, ptr %171, align 4, !tbaa !129
  %257 = load float, ptr %173, align 8, !tbaa !129
  %258 = fmul float %254, %257
  store float %258, ptr %173, align 8, !tbaa !129
  %259 = load float, ptr %175, align 4, !tbaa !129
  %260 = fmul float %254, %259
  br label %262

261:                                              ; preds = %244
  store float 0.000000e+00, ptr %171, align 4, !tbaa !129
  store float 0.000000e+00, ptr %173, align 8, !tbaa !129
  br label %262

262:                                              ; preds = %252, %261
  %263 = phi float [ 0.000000e+00, %261 ], [ %260, %252 ]
  store float %263, ptr %175, align 4, !tbaa !129
  %264 = load ptr, ptr %177, align 8, !tbaa !170
  %265 = call i32 @RE_rayobject_raycast(ptr noundef %264, ptr noundef nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %12) #9
  %266 = icmp eq i32 %265, 0
  %267 = fadd float %182, 1.000000e+00
  %268 = select i1 %266, float %182, float %267
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #9
  %269 = add nuw nsw i64 %180, 1
  %270 = load i32, ptr %3, align 8, !tbaa !163
  %271 = sext i32 %270 to i64
  %272 = icmp slt i64 %269, %271
  br i1 %272, label %179, label %273, !llvm.loop !171

273:                                              ; preds = %262, %143
  %274 = phi float [ 0.000000e+00, %143 ], [ %268, %262 ]
  %275 = phi i32 [ %158, %143 ], [ %270, %262 ]
  %276 = sitofp i32 %275 to float
  %277 = fdiv float %274, %276
  %278 = fsub float 1.000000e+00, %277
  %279 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 9
  %280 = load ptr, ptr %279, align 8, !tbaa !75
  %281 = icmp eq ptr %280, null
  br i1 %281, label %289, label %282

282:                                              ; preds = %273
  %283 = shl nsw i32 %30, 2
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, ptr %280, i64 %284
  %286 = getelementptr inbounds float, ptr %285, i64 2
  store float %278, ptr %286, align 4, !tbaa !129
  %287 = getelementptr inbounds float, ptr %285, i64 1
  store float %278, ptr %287, align 4, !tbaa !129
  store float %278, ptr %285, align 4, !tbaa !129
  %288 = getelementptr inbounds float, ptr %285, i64 3
  store float 1.000000e+00, ptr %288, align 4, !tbaa !129
  br label %306

289:                                              ; preds = %273
  %290 = getelementptr inbounds %struct.ImBuf, ptr %4, i64 0, i32 8
  %291 = load ptr, ptr %290, align 8, !tbaa !133
  %292 = shl nsw i32 %30, 2
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, ptr %291, i64 %293
  %295 = fcmp ugt float %278, 0.000000e+00
  br i1 %295, label %296, label %301

296:                                              ; preds = %289
  %297 = fcmp ogt float %278, 0x3FEFEFEFE0000000
  %298 = call float @llvm.fmuladd.f32(float %278, float 2.550000e+02, float 5.000000e-01)
  %299 = select i1 %297, float 2.550000e+02, float %298
  %300 = fptoui float %299 to i8
  br label %301

301:                                              ; preds = %289, %296
  %302 = phi i8 [ %300, %296 ], [ 0, %289 ]
  %303 = getelementptr inbounds i8, ptr %294, i64 2
  store i8 %302, ptr %303, align 1, !tbaa !134
  %304 = getelementptr inbounds i8, ptr %294, i64 1
  store i8 %302, ptr %304, align 1, !tbaa !134
  store i8 %302, ptr %294, align 1, !tbaa !134
  %305 = getelementptr inbounds i8, ptr %294, i64 3
  store i8 -1, ptr %305, align 1, !tbaa !134
  br label %306

306:                                              ; preds = %301, %282
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @init_ao_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.CCGKey, align 4
  %4 = alloca [4 x [3 x float]], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %14, %6 ]
  %8 = tail call i32 @rand() #9
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_1, i64 0, i64 %7
  store i16 %9, ptr %10, align 2, !tbaa !162
  %11 = tail call i32 @rand() #9
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_2, i64 0, i64 %7
  store i16 %12, ptr %13, align 2, !tbaa !162
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 1024
  br i1 %15, label %16, label %6, !llvm.loop !172

16:                                               ; preds = %6
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %18 = tail call ptr %17(i64 noundef 56, ptr noundef nonnull @.str.6) #9
  %19 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !173
  store i32 %20, ptr %18, align 8, !tbaa !163
  %21 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 9
  %22 = load float, ptr %21, align 8, !tbaa !174
  %23 = getelementptr inbounds %struct.MAOBakeData, ptr %18, i64 0, i32 1
  store float %22, ptr %23, align 4, !tbaa !160
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 52
  %25 = load ptr, ptr %24, align 8, !tbaa !80
  %26 = tail call ptr %25(ptr noundef %5, i32 noundef 7) #9
  %27 = getelementptr inbounds %struct.MAOBakeData, ptr %18, i64 0, i32 6
  store ptr %26, ptr %27, align 8, !tbaa !157
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 54
  %29 = load ptr, ptr %28, align 8, !tbaa !135
  %30 = tail call ptr %29(ptr noundef %5, i32 noundef 7) #9
  %31 = getelementptr inbounds %struct.MAOBakeData, ptr %18, i64 0, i32 7
  store ptr %30, ptr %31, align 8, !tbaa !159
  %32 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #9
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 63
  %35 = load ptr, ptr %34, align 8, !tbaa !175
  %36 = tail call i32 %35(ptr noundef %33) #9
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 64
  %38 = load ptr, ptr %37, align 8, !tbaa !84
  %39 = tail call i32 %38(ptr noundef %33) #9
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 65
  %41 = load ptr, ptr %40, align 8, !tbaa !85
  %42 = tail call ptr %41(ptr noundef %33) #9
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 68
  %44 = load ptr, ptr %43, align 8, !tbaa !87
  call void %44(ptr noundef %33, ptr noundef nonnull %3) #9
  %45 = add nsw i32 %39, -1
  %46 = mul nsw i32 %45, %36
  %47 = mul nsw i32 %46, %45
  %48 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 15
  %49 = load i32, ptr %48, align 8, !tbaa !176
  %50 = getelementptr inbounds %struct.MultiresBakeRender, ptr %0, i64 0, i32 16
  %51 = load i32, ptr %50, align 4, !tbaa !177
  %52 = call ptr @RE_rayobject_create(i32 noundef %49, i32 noundef %47, i32 noundef %51) #9
  %53 = getelementptr inbounds %struct.MAOBakeData, ptr %18, i64 0, i32 4
  store ptr %52, ptr %53, align 8, !tbaa !170
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %55 = sext i32 %47 to i64
  %56 = mul nsw i64 %55, 80
  %57 = call ptr %54(i64 noundef %56, ptr noundef nonnull @.str.10) #9
  %58 = getelementptr inbounds %struct.MAOBakeData, ptr %18, i64 0, i32 5
  store ptr %57, ptr %58, align 8, !tbaa !178
  %59 = icmp sgt i32 %36, 0
  br i1 %59, label %60, label %143

60:                                               ; preds = %16
  %61 = icmp sgt i32 %39, 1
  %62 = getelementptr inbounds %struct.CCGKey, ptr %3, i64 0, i32 2
  %63 = getelementptr inbounds %struct.CCGKey, ptr %3, i64 0, i32 1
  %64 = getelementptr inbounds float, ptr %4, i64 1
  %65 = getelementptr inbounds float, ptr %4, i64 2
  %66 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1
  %67 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %68 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %69 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 2
  %70 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %71 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  %72 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3
  %73 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3, i64 1
  %74 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3, i64 2
  %75 = zext nneg i32 %36 to i64
  br label %76

76:                                               ; preds = %60, %139
  %77 = phi i64 [ 0, %60 ], [ %141, %139 ]
  %78 = phi ptr [ %57, %60 ], [ %140, %139 ]
  br i1 %61, label %79, label %139

79:                                               ; preds = %76
  %80 = getelementptr inbounds ptr, ptr %42, i64 %77
  br label %81

81:                                               ; preds = %79, %136
  %82 = phi i32 [ 0, %79 ], [ %137, %136 ]
  %83 = phi ptr [ %78, %79 ], [ %134, %136 ]
  %84 = add nuw nsw i32 %82, 1
  br label %85

85:                                               ; preds = %81, %85
  %86 = phi i32 [ 0, %81 ], [ %101, %85 ]
  %87 = phi ptr [ %83, %81 ], [ %134, %85 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  %88 = load ptr, ptr %80, align 8, !tbaa !57
  %89 = load i32, ptr %62, align 4, !tbaa !179
  %90 = mul nsw i32 %89, %86
  %91 = add nsw i32 %90, %82
  %92 = load i32, ptr %63, align 4, !tbaa !181
  %93 = mul nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %88, i64 %94
  %96 = load float, ptr %95, align 4, !tbaa !129
  store float %96, ptr %4, align 16, !tbaa !129
  %97 = getelementptr inbounds float, ptr %95, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !129
  store float %98, ptr %64, align 4, !tbaa !129
  %99 = getelementptr inbounds float, ptr %95, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !129
  store float %100, ptr %65, align 8, !tbaa !129
  %101 = add nuw nsw i32 %86, 1
  %102 = mul nsw i32 %89, %101
  %103 = add nsw i32 %102, %82
  %104 = mul nsw i32 %103, %92
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %88, i64 %105
  %107 = load float, ptr %106, align 4, !tbaa !129
  store float %107, ptr %66, align 4, !tbaa !129
  %108 = getelementptr inbounds float, ptr %106, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !129
  store float %109, ptr %67, align 16, !tbaa !129
  %110 = getelementptr inbounds float, ptr %106, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !129
  store float %111, ptr %68, align 4, !tbaa !129
  %112 = add nsw i32 %102, %84
  %113 = mul nsw i32 %112, %92
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %88, i64 %114
  %116 = load float, ptr %115, align 4, !tbaa !129
  store float %116, ptr %69, align 8, !tbaa !129
  %117 = getelementptr inbounds float, ptr %115, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !129
  store float %118, ptr %70, align 4, !tbaa !129
  %119 = getelementptr inbounds float, ptr %115, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !129
  store float %120, ptr %71, align 16, !tbaa !129
  %121 = add nsw i32 %90, %84
  %122 = mul nsw i32 %121, %92
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %88, i64 %123
  %125 = load float, ptr %124, align 4, !tbaa !129
  store float %125, ptr %72, align 4, !tbaa !129
  %126 = getelementptr inbounds float, ptr %124, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !129
  store float %127, ptr %73, align 8, !tbaa !129
  %128 = getelementptr inbounds float, ptr %124, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !129
  store float %129, ptr %74, align 4, !tbaa !129
  %130 = call ptr @RE_rayface_from_coords(ptr noundef %87, ptr noundef nonnull %18, ptr noundef %87, ptr noundef nonnull %4, ptr noundef nonnull %66, ptr noundef nonnull %69, ptr noundef nonnull %72) #9
  %131 = ptrtoint ptr %87 to i64
  %132 = or i64 %131, 1
  %133 = inttoptr i64 %132 to ptr
  call void @RE_rayobject_add(ptr noundef %52, ptr noundef nonnull %133) #9
  %134 = getelementptr inbounds %struct.RayFace, ptr %87, i64 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  %135 = icmp eq i32 %101, %45
  br i1 %135, label %136, label %85, !llvm.loop !182

136:                                              ; preds = %85
  %137 = add nuw nsw i32 %82, 1
  %138 = icmp eq i32 %137, %45
  br i1 %138, label %139, label %81, !llvm.loop !183

139:                                              ; preds = %136, %76
  %140 = phi ptr [ %78, %76 ], [ %134, %136 ]
  %141 = add nuw nsw i64 %77, 1
  %142 = icmp eq i64 %141, %75
  br i1 %142, label %143, label %76, !llvm.loop !184

143:                                              ; preds = %139, %16
  call void @RE_rayobject_done(ptr noundef %52) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #9
  %144 = load i32, ptr %19, align 4, !tbaa !173
  %145 = sext i32 %144 to i64
  %146 = shl nsw i64 %145, 1
  %147 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %148 = call ptr %147(i64 noundef %146, ptr noundef nonnull @.str.7) #9
  %149 = getelementptr inbounds %struct.MAOBakeData, ptr %18, i64 0, i32 2
  store ptr %148, ptr %149, align 8, !tbaa !164
  %150 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %151 = call ptr %150(i64 noundef %146, ptr noundef nonnull @.str.8) #9
  %152 = getelementptr inbounds %struct.MAOBakeData, ptr %18, i64 0, i32 3
  store ptr %151, ptr %152, align 8, !tbaa !165
  %153 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %154 = call ptr %153(i64 noundef %146, ptr noundef nonnull @.str.9) #9
  %155 = load ptr, ptr %149, align 8, !tbaa !164
  %156 = load i32, ptr %19, align 4, !tbaa !173
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %143
  %159 = zext nneg i32 %156 to i64
  br label %166

160:                                              ; preds = %166, %143
  %161 = icmp sgt i32 %156, 0
  br i1 %161, label %162, label %208

162:                                              ; preds = %160
  %163 = sub nsw i32 0, %156
  %164 = zext nneg i32 %156 to i64
  %165 = zext nneg i32 %156 to i64
  br label %172

166:                                              ; preds = %158, %166
  %167 = phi i64 [ 0, %158 ], [ %170, %166 ]
  %168 = trunc i64 %167 to i16
  %169 = getelementptr inbounds i16, ptr %154, i64 %167
  store i16 %168, ptr %169, align 2, !tbaa !162
  %170 = add nuw nsw i64 %167, 1
  %171 = icmp eq i64 %170, %159
  br i1 %171, label %160, label %166, !llvm.loop !185

172:                                              ; preds = %162, %203
  %173 = phi i64 [ 0, %162 ], [ %204, %203 ]
  %174 = phi i32 [ %156, %162 ], [ %206, %203 ]
  %175 = phi i32 [ %163, %162 ], [ %205, %203 ]
  %176 = sub nsw i64 %164, %173
  %177 = and i64 %173, 1023
  %178 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_1, i64 0, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !162
  %180 = zext i16 %179 to i32
  %181 = trunc i64 %176 to i32
  %182 = urem i32 %180, %181
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds i16, ptr %154, i64 %183
  %185 = load i16, ptr %184, align 2, !tbaa !162
  %186 = getelementptr inbounds i16, ptr %155, i64 %173
  store i16 %185, ptr %186, align 2, !tbaa !162
  %187 = trunc i64 %176 to i32
  %188 = add i32 %187, -1
  %189 = icmp ult i32 %182, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %172
  %191 = udiv i32 %180, %174
  %192 = mul i32 %175, %191
  %193 = add i32 %192, %180
  %194 = zext i32 %193 to i64
  %195 = zext i32 %188 to i64
  br label %196

196:                                              ; preds = %190, %196
  %197 = phi i64 [ %194, %190 ], [ %198, %196 ]
  %198 = add nuw nsw i64 %197, 1
  %199 = getelementptr inbounds i16, ptr %154, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !162
  %201 = getelementptr inbounds i16, ptr %154, i64 %197
  store i16 %200, ptr %201, align 2, !tbaa !162
  %202 = icmp ult i64 %198, %195
  br i1 %202, label %196, label %203, !llvm.loop !186

203:                                              ; preds = %196, %172
  %204 = add nuw nsw i64 %173, 1
  %205 = add i32 %175, 1
  %206 = add i32 %174, -1
  %207 = icmp eq i64 %204, %165
  br i1 %207, label %208, label %172, !llvm.loop !187

208:                                              ; preds = %203, %160
  %209 = load ptr, ptr %152, align 8, !tbaa !165
  %210 = icmp sgt i32 %156, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = zext nneg i32 %156 to i64
  br label %219

213:                                              ; preds = %219, %208
  %214 = icmp sgt i32 %156, 0
  br i1 %214, label %215, label %261

215:                                              ; preds = %213
  %216 = sub nsw i32 0, %156
  %217 = zext nneg i32 %156 to i64
  %218 = zext nneg i32 %156 to i64
  br label %225

219:                                              ; preds = %211, %219
  %220 = phi i64 [ 0, %211 ], [ %223, %219 ]
  %221 = trunc i64 %220 to i16
  %222 = getelementptr inbounds i16, ptr %154, i64 %220
  store i16 %221, ptr %222, align 2, !tbaa !162
  %223 = add nuw nsw i64 %220, 1
  %224 = icmp eq i64 %223, %212
  br i1 %224, label %213, label %219, !llvm.loop !185

225:                                              ; preds = %215, %256
  %226 = phi i64 [ 0, %215 ], [ %257, %256 ]
  %227 = phi i32 [ %156, %215 ], [ %259, %256 ]
  %228 = phi i32 [ %216, %215 ], [ %258, %256 ]
  %229 = sub nsw i64 %217, %226
  %230 = and i64 %226, 1023
  %231 = getelementptr inbounds [1024 x i16], ptr @ao_random_table_2, i64 0, i64 %230
  %232 = load i16, ptr %231, align 2, !tbaa !162
  %233 = zext i16 %232 to i32
  %234 = trunc i64 %229 to i32
  %235 = urem i32 %233, %234
  %236 = zext nneg i32 %235 to i64
  %237 = getelementptr inbounds i16, ptr %154, i64 %236
  %238 = load i16, ptr %237, align 2, !tbaa !162
  %239 = getelementptr inbounds i16, ptr %209, i64 %226
  store i16 %238, ptr %239, align 2, !tbaa !162
  %240 = trunc i64 %229 to i32
  %241 = add i32 %240, -1
  %242 = icmp ult i32 %235, %241
  br i1 %242, label %243, label %256

243:                                              ; preds = %225
  %244 = udiv i32 %233, %227
  %245 = mul i32 %228, %244
  %246 = add i32 %245, %233
  %247 = zext i32 %246 to i64
  %248 = zext i32 %241 to i64
  br label %249

249:                                              ; preds = %243, %249
  %250 = phi i64 [ %247, %243 ], [ %251, %249 ]
  %251 = add nuw nsw i64 %250, 1
  %252 = getelementptr inbounds i16, ptr %154, i64 %251
  %253 = load i16, ptr %252, align 2, !tbaa !162
  %254 = getelementptr inbounds i16, ptr %154, i64 %250
  store i16 %253, ptr %254, align 2, !tbaa !162
  %255 = icmp ult i64 %251, %248
  br i1 %255, label %249, label %256, !llvm.loop !186

256:                                              ; preds = %249, %225
  %257 = add nuw nsw i64 %226, 1
  %258 = add i32 %228, 1
  %259 = add i32 %227, -1
  %260 = icmp eq i64 %257, %218
  br i1 %260, label %261, label %225, !llvm.loop !187

261:                                              ; preds = %256, %213
  %262 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %262(ptr noundef %154) #9
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define internal void @free_ao_data(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.MAOBakeData, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  tail call void @RE_rayobject_free(ptr noundef %3) #9
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.MAOBakeData, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  tail call void %4(ptr noundef %6) #9
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.MAOBakeData, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !164
  tail call void %7(ptr noundef %9) #9
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.MAOBakeData, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !165
  tail call void %10(ptr noundef %12) #9
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %13(ptr noundef %0) #9
  ret void
}

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_system_thread_count() local_unnamed_addr #2

declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_add_tangent_layer(ptr noundef) local_unnamed_addr #2

declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @do_multires_bake_thread(ptr nocapture noundef %0) #0 {
  %2 = alloca [3 x [2 x i32]], align 16
  %3 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 2
  %7 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 19
  %8 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 7
  %10 = getelementptr inbounds [3 x [2 x i32]], ptr %2, i64 0, i64 1
  %11 = getelementptr inbounds [3 x [2 x i32]], ptr %2, i64 0, i64 2
  %12 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 1
  %13 = getelementptr inbounds [3 x [2 x i32]], ptr %2, i64 0, i64 1, i64 1
  %14 = getelementptr inbounds [3 x [2 x i32]], ptr %2, i64 0, i64 2, i64 1
  %15 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 1
  %16 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 8
  %17 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 9
  %18 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 10
  %19 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 4, i32 1
  %20 = getelementptr inbounds %struct.MultiresBakeThread, ptr %0, i64 0, i32 5, i32 16
  %21 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 14
  %22 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 20
  %23 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 21
  %24 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 13
  %25 = getelementptr inbounds %struct.MultiresBakeRender, ptr %5, i64 0, i32 10
  br label %26

26:                                               ; preds = %187, %1
  %27 = load ptr, ptr %0, align 8, !tbaa !96
  %28 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %27, i64 0, i32 2
  tail call void @BLI_spin_lock(ptr noundef nonnull %28) #9
  %29 = load i32, ptr %27, align 4, !tbaa !88
  %30 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %27, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !90
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = add nsw i32 %29, 1
  store i32 %34, ptr %27, align 4, !tbaa !88
  br label %35

35:                                               ; preds = %26, %33
  %36 = phi i32 [ %29, %33 ], [ -1, %26 ]
  tail call void @BLI_spin_unlock(ptr noundef nonnull %28) #9
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %189

38:                                               ; preds = %35
  %39 = load ptr, ptr %6, align 8, !tbaa !188
  %40 = zext nneg i32 %36 to i64
  %41 = getelementptr inbounds %struct.MTFace, ptr %39, i64 %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  %42 = load ptr, ptr %7, align 8, !tbaa !189
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load i16, ptr %42, align 2, !tbaa !162
  %46 = icmp ne i16 %45, 0
  %47 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %48 = icmp ne i8 %47, 0
  %49 = select i1 %46, i1 true, i1 %48
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %38, %44
  %52 = phi i32 [ %50, %44 ], [ 0, %38 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %188

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.MTFace, ptr %39, i64 %40, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  %57 = load ptr, ptr %8, align 8, !tbaa !95
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %187, !llvm.loop !190

59:                                               ; preds = %54
  store i32 %36, ptr %9, align 8, !tbaa !191
  store i32 0, ptr %2, align 16, !tbaa !192
  store i32 1, ptr %10, align 8, !tbaa !192
  store i32 2, ptr %11, align 16, !tbaa !192
  store i32 0, ptr %12, align 4, !tbaa !192
  store i32 2, ptr %13, align 4, !tbaa !192
  store i32 3, ptr %14, align 4, !tbaa !192
  %60 = load ptr, ptr %15, align 8, !tbaa !193
  %61 = getelementptr inbounds %struct.MFace, ptr %60, i64 %40, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !127
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %59, %153
  %65 = phi i64 [ 0, %59 ], [ %157, %153 ]
  %66 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !192
  store i32 %67, ptr %16, align 4, !tbaa !194
  %68 = getelementptr inbounds [3 x [2 x i32]], ptr %2, i64 0, i64 1, i64 %65
  %69 = load i32, ptr %68, align 4, !tbaa !192
  store i32 %69, ptr %17, align 8, !tbaa !195
  %70 = getelementptr inbounds [3 x [2 x i32]], ptr %2, i64 0, i64 2, i64 %65
  %71 = load i32, ptr %70, align 4, !tbaa !192
  store i32 %71, ptr %18, align 4, !tbaa !196
  %72 = sext i32 %67 to i64
  %73 = getelementptr inbounds [4 x [2 x float]], ptr %41, i64 0, i64 %72
  %74 = sext i32 %69 to i64
  %75 = getelementptr inbounds [4 x [2 x float]], ptr %41, i64 0, i64 %74
  %76 = sext i32 %71 to i64
  %77 = getelementptr inbounds [4 x [2 x float]], ptr %41, i64 0, i64 %76
  %78 = load i32, ptr %3, align 8, !tbaa !115
  %79 = load i32, ptr %19, align 4, !tbaa !116
  %80 = load float, ptr %73, align 4, !tbaa !129
  %81 = sitofp i32 %78 to float
  %82 = tail call float @llvm.fmuladd.f32(float %80, float %81, float -5.000000e-01)
  %83 = getelementptr inbounds float, ptr %73, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !129
  %85 = sitofp i32 %79 to float
  %86 = tail call float @llvm.fmuladd.f32(float %84, float %85, float -5.000000e-01)
  %87 = load float, ptr %75, align 4, !tbaa !129
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %81, float -5.000000e-01)
  %89 = getelementptr inbounds float, ptr %75, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !129
  %91 = tail call float @llvm.fmuladd.f32(float %90, float %85, float -5.000000e-01)
  %92 = load float, ptr %77, align 4, !tbaa !129
  %93 = tail call float @llvm.fmuladd.f32(float %92, float %81, float -5.000000e-01)
  %94 = getelementptr inbounds float, ptr %77, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !129
  %96 = tail call float @llvm.fmuladd.f32(float %95, float %85, float -5.000000e-01)
  %97 = fcmp oeq float %82, %88
  %98 = fcmp oeq float %86, %91
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %144, label %100

100:                                              ; preds = %64
  %101 = fcmp oeq float %82, %93
  %102 = fcmp oeq float %86, %96
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %144, label %104

104:                                              ; preds = %100
  %105 = fcmp oeq float %88, %93
  %106 = fcmp oeq float %91, %96
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %144, label %108

108:                                              ; preds = %104
  %109 = fcmp ogt float %86, %91
  %110 = fcmp ogt float %86, %96
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = fcmp ogt float %91, %96
  br i1 %113, label %114, label %115

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114, %112, %108
  %116 = phi float [ %91, %114 ], [ %96, %112 ], [ %86, %108 ]
  %117 = phi float [ %88, %114 ], [ %93, %112 ], [ %82, %108 ]
  %118 = phi float [ %96, %114 ], [ %91, %112 ], [ %91, %108 ]
  %119 = phi float [ %93, %114 ], [ %88, %112 ], [ %88, %108 ]
  %120 = phi float [ %86, %114 ], [ %86, %112 ], [ %96, %108 ]
  %121 = phi float [ %82, %114 ], [ %82, %112 ], [ %93, %108 ]
  %122 = fcmp ogt float %120, %118
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123, %115
  %125 = phi float [ %120, %123 ], [ %118, %115 ]
  %126 = phi float [ %121, %123 ], [ %119, %115 ]
  %127 = phi float [ %118, %123 ], [ %120, %115 ]
  %128 = phi float [ %119, %123 ], [ %121, %115 ]
  %129 = fsub float %117, %128
  %130 = fneg float %129
  %131 = fsub float %125, %116
  %132 = fsub float %116, %127
  %133 = fsub float %126, %117
  %134 = fmul float %133, %132
  %135 = tail call float @llvm.fmuladd.f32(float %130, float %131, float %134)
  %136 = fcmp ogt float %135, 0.000000e+00
  %137 = zext i1 %136 to i32
  %138 = tail call float @llvm.ceil.f32(float %127)
  %139 = fptosi float %138 to i32
  %140 = tail call float @llvm.ceil.f32(float %125)
  %141 = fptosi float %140 to i32
  %142 = tail call float @llvm.ceil.f32(float %116)
  %143 = fptosi float %142 to i32
  tail call fastcc void @rasterize_half(ptr noundef nonnull %3, float noundef %128, float noundef %127, float noundef %126, float noundef %125, float noundef %128, float noundef %127, float noundef %117, float noundef %116, i32 noundef %139, i32 noundef %141, i32 noundef %137)
  tail call fastcc void @rasterize_half(ptr noundef nonnull %3, float noundef %126, float noundef %125, float noundef %117, float noundef %116, float noundef %128, float noundef %127, float noundef %117, float noundef %116, i32 noundef %141, i32 noundef %143, i32 noundef %137)
  br label %144

144:                                              ; preds = %64, %100, %104, %124
  %145 = load ptr, ptr %20, align 8, !tbaa !197
  %146 = getelementptr inbounds %struct.ImBuf, ptr %145, i64 0, i32 9
  %147 = load ptr, ptr %146, align 8, !tbaa !75
  %148 = icmp eq ptr %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.ImBuf, ptr %145, i64 0, i32 23
  %151 = load i32, ptr %150, align 4, !tbaa !74
  %152 = or i32 %151, 8
  store i32 %152, ptr %150, align 4, !tbaa !74
  br label %153

153:                                              ; preds = %149, %144
  %154 = getelementptr inbounds %struct.ImBuf, ptr %145, i64 0, i32 23
  %155 = load i32, ptr %154, align 4, !tbaa !74
  %156 = or i32 %155, 16
  store i32 %156, ptr %154, align 4, !tbaa !74
  %157 = add nuw nsw i64 %65, 1
  %158 = icmp eq i64 %65, 0
  %159 = and i1 %63, %158
  br i1 %159, label %64, label %160, !llvm.loop !198

160:                                              ; preds = %153
  %161 = load ptr, ptr %0, align 8, !tbaa !96
  %162 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %161, i64 0, i32 2
  tail call void @BLI_spin_lock(ptr noundef nonnull %162) #9
  %163 = load i32, ptr %21, align 4, !tbaa !199
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %21, align 4, !tbaa !199
  %165 = load ptr, ptr %22, align 8, !tbaa !113
  %166 = icmp eq ptr %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  store i16 1, ptr %165, align 2, !tbaa !162
  br label %168

168:                                              ; preds = %167, %160
  %169 = load ptr, ptr %23, align 8, !tbaa !200
  %170 = icmp eq ptr %169, null
  br i1 %170, label %184, label %171

171:                                              ; preds = %168
  %172 = load i32, ptr %24, align 8, !tbaa !201
  %173 = sitofp i32 %172 to float
  %174 = sitofp i32 %164 to float
  %175 = load ptr, ptr %0, align 8, !tbaa !96
  %176 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %175, i64 0, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !90
  %178 = sitofp i32 %177 to float
  %179 = fdiv float %174, %178
  %180 = fadd float %179, %173
  %181 = load i32, ptr %25, align 4, !tbaa !202
  %182 = sitofp i32 %181 to float
  %183 = fdiv float %180, %182
  store float %183, ptr %169, align 4, !tbaa !129
  br label %184

184:                                              ; preds = %171, %168
  %185 = load ptr, ptr %0, align 8, !tbaa !96
  %186 = getelementptr inbounds %struct.MultiresBakeQueue, ptr %185, i64 0, i32 2
  tail call void @BLI_spin_unlock(ptr noundef nonnull %186) #9
  br label %187

187:                                              ; preds = %54, %184
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  br i1 %53, label %26, label %189

188:                                              ; preds = %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  br label %189

189:                                              ; preds = %187, %35, %188
  ret ptr null
}

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @flush_pixel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %11 = sitofp i32 %1 to float
  %12 = fadd float %11, 5.000000e-01
  %13 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !203
  %15 = sitofp i32 %14 to float
  %16 = fdiv float %12, %15
  store float %16, ptr %4, align 4, !tbaa !129
  %17 = getelementptr inbounds float, ptr %4, i64 1
  %18 = sitofp i32 %2 to float
  %19 = fadd float %18, 5.000000e-01
  %20 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !204
  %22 = sitofp i32 %21 to float
  %23 = fdiv float %19, %22
  store float %23, ptr %17, align 4, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #9
  %24 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !194
  %26 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !195
  %28 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 10
  %29 = load i32, ptr %28, align 4, !tbaa !196
  %30 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !188
  %32 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !191
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.MTFace, ptr %31, i64 %34
  %36 = sext i32 %25 to i64
  %37 = getelementptr inbounds [4 x [2 x float]], ptr %35, i64 0, i64 %36
  %38 = sext i32 %27 to i64
  %39 = getelementptr inbounds [4 x [2 x float]], ptr %35, i64 0, i64 %38
  %40 = sext i32 %29 to i64
  %41 = getelementptr inbounds [4 x [2 x float]], ptr %35, i64 0, i64 %40
  call fastcc void @multiresbake_get_normal(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %33, i32 noundef %25)
  %42 = load i32, ptr %32, align 8, !tbaa !191
  call fastcc void @multiresbake_get_normal(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %42, i32 noundef %27)
  %43 = load i32, ptr %32, align 8, !tbaa !191
  call fastcc void @multiresbake_get_normal(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %43, i32 noundef %29)
  call void @resolve_tri_uv_v2(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef %37, ptr noundef %39, ptr noundef %41) #9
  %44 = load float, ptr %8, align 4, !tbaa !129
  %45 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !129
  %47 = fsub float 1.000000e+00, %44
  %48 = fsub float %47, %46
  %49 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !205
  %51 = icmp eq ptr %50, null
  br i1 %51, label %129, label %52

52:                                               ; preds = %3
  %53 = load i32, ptr %32, align 8, !tbaa !191
  %54 = shl nsw i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, ptr %50, i64 %55
  %57 = shl nsw i32 %25, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, ptr %56, i64 %58
  %60 = shl nsw i32 %27, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, ptr %56, i64 %61
  %63 = shl nsw i32 %29, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %56, i64 %64
  %66 = getelementptr inbounds float, ptr %59, i64 3
  %67 = load float, ptr %66, align 4, !tbaa !129
  %68 = getelementptr inbounds float, ptr %62, i64 3
  %69 = load float, ptr %68, align 4, !tbaa !129
  %70 = fmul float %46, %69
  %71 = call float @llvm.fmuladd.f32(float %67, float %44, float %70)
  %72 = getelementptr inbounds float, ptr %65, i64 3
  %73 = load float, ptr %72, align 4, !tbaa !129
  %74 = call float @llvm.fmuladd.f32(float %73, float %48, float %71)
  %75 = fcmp olt float %74, 0.000000e+00
  br label %76

76:                                               ; preds = %52, %76
  %77 = phi i64 [ 0, %52 ], [ %98, %76 ]
  %78 = getelementptr inbounds float, ptr %59, i64 %77
  %79 = load float, ptr %78, align 4, !tbaa !129
  %80 = getelementptr inbounds float, ptr %62, i64 %77
  %81 = load float, ptr %80, align 4, !tbaa !129
  %82 = fmul float %46, %81
  %83 = call float @llvm.fmuladd.f32(float %79, float %44, float %82)
  %84 = getelementptr inbounds float, ptr %65, i64 %77
  %85 = load float, ptr %84, align 4, !tbaa !129
  %86 = call float @llvm.fmuladd.f32(float %85, float %48, float %83)
  %87 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %77
  store float %86, ptr %87, align 4, !tbaa !129
  %88 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %77
  %89 = load float, ptr %88, align 4, !tbaa !129
  %90 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %77
  %91 = load float, ptr %90, align 4, !tbaa !129
  %92 = fmul float %46, %91
  %93 = call float @llvm.fmuladd.f32(float %89, float %44, float %92)
  %94 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %77
  %95 = load float, ptr %94, align 4, !tbaa !129
  %96 = call float @llvm.fmuladd.f32(float %95, float %48, float %93)
  %97 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 %77
  store float %96, ptr %97, align 4, !tbaa !129
  %98 = add nuw nsw i64 %77, 1
  %99 = icmp eq i64 %98, 3
  br i1 %99, label %100, label %76, !llvm.loop !206

100:                                              ; preds = %76
  %101 = select i1 %75, float -1.000000e+00, float 1.000000e+00
  %102 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  %103 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %104 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !129
  %106 = getelementptr inbounds float, ptr %9, i64 2
  %107 = load float, ptr %106, align 8, !tbaa !129
  %108 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 2
  %109 = load float, ptr %108, align 16, !tbaa !129
  %110 = getelementptr inbounds float, ptr %9, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !129
  %112 = fneg float %109
  %113 = fmul float %111, %112
  %114 = call float @llvm.fmuladd.f32(float %105, float %107, float %113)
  store float %114, ptr %102, align 4, !tbaa !129
  %115 = load float, ptr %9, align 16, !tbaa !129
  %116 = load float, ptr %103, align 8, !tbaa !129
  %117 = fneg float %116
  %118 = fmul float %107, %117
  %119 = call float @llvm.fmuladd.f32(float %109, float %115, float %118)
  %120 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1, i64 1
  store float %119, ptr %120, align 16, !tbaa !129
  %121 = fneg float %105
  %122 = fmul float %115, %121
  %123 = call float @llvm.fmuladd.f32(float %116, float %111, float %122)
  %124 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1, i64 2
  store float %123, ptr %124, align 4, !tbaa !129
  %125 = fmul float %101, %114
  store float %125, ptr %102, align 4, !tbaa !129
  %126 = fmul float %101, %119
  store float %126, ptr %120, align 16, !tbaa !129
  %127 = fmul float %101, %123
  store float %127, ptr %124, align 4, !tbaa !129
  %128 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %10, ptr noundef nonnull %9) #9
  br label %130

129:                                              ; preds = %3
  call void @zero_m3(ptr noundef nonnull %10) #9
  br label %130

130:                                              ; preds = %129, %100
  %131 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 17
  %132 = load ptr, ptr %131, align 8, !tbaa !207
  %133 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 11
  %134 = load ptr, ptr %133, align 8, !tbaa !208
  %135 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 12
  %136 = load ptr, ptr %135, align 8, !tbaa !209
  %137 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 14
  %138 = load ptr, ptr %137, align 8, !tbaa !210
  %139 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 15
  %140 = load ptr, ptr %139, align 8, !tbaa !211
  %141 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 16
  %142 = load ptr, ptr %141, align 8, !tbaa !197
  %143 = load i32, ptr %32, align 8, !tbaa !191
  %144 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 13
  %145 = load i32, ptr %144, align 8, !tbaa !212
  call void %132(ptr noundef %134, ptr noundef %136, ptr noundef %138, ptr noundef %140, ptr noundef %142, i32 noundef %143, i32 noundef %145, ptr noundef nonnull %4, ptr noundef nonnull %10, i32 noundef %1, i32 noundef %2) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void
}

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @rasterize_half(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 {
  %13 = fsub float %4, %2
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fcmp ogt float %14, 0x3E80000000000000
  %16 = fsub float %8, %6
  %17 = tail call float @llvm.fabs.f32(float %16)
  %18 = fcmp ogt float %17, 0x3E80000000000000
  %19 = load i32, ptr %0, align 8, !tbaa !115
  %20 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !116
  %22 = icmp sgt i32 %10, 0
  %23 = icmp sgt i32 %21, %9
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %93

25:                                               ; preds = %12
  %26 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %27 = tail call i32 @llvm.smin.i32(i32 %21, i32 %10)
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %93

29:                                               ; preds = %25
  %30 = fsub float %3, %1
  %31 = fsub float %7, %5
  %32 = icmp eq i32 %11, 0
  %33 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 3
  %35 = getelementptr inbounds %struct.MBakeRast, ptr %0, i64 0, i32 5
  br label %36

36:                                               ; preds = %29, %90
  %37 = phi i32 [ %26, %29 ], [ %91, %90 ]
  br i1 %15, label %38, label %44

38:                                               ; preds = %36
  %39 = sitofp i32 %37 to float
  %40 = fsub float %39, %2
  %41 = fmul float %30, %40
  %42 = fdiv float %41, %13
  %43 = fadd float %42, %1
  br label %44

44:                                               ; preds = %36, %38
  %45 = phi float [ %43, %38 ], [ %1, %36 ]
  br i1 %18, label %46, label %52

46:                                               ; preds = %44
  %47 = sitofp i32 %37 to float
  %48 = fsub float %47, %6
  %49 = fmul float %31, %48
  %50 = fdiv float %49, %16
  %51 = fadd float %50, %5
  br label %52

52:                                               ; preds = %44, %46
  %53 = phi float [ %51, %46 ], [ %5, %44 ]
  %54 = select i1 %32, float %45, float %53
  %55 = select i1 %32, float %53, float %45
  %56 = tail call float @llvm.ceil.f32(float %54)
  %57 = fptosi float %56 to i32
  %58 = tail call float @llvm.ceil.f32(float %55)
  %59 = fptosi float %58 to i32
  %60 = icmp sgt i32 %59, 0
  %61 = icmp sgt i32 %19, %57
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %90

63:                                               ; preds = %52
  %64 = tail call i32 @llvm.smax.i32(i32 %57, i32 0)
  %65 = tail call i32 @llvm.smin.i32(i32 %19, i32 %59)
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %63, %87
  %68 = phi i32 [ %88, %87 ], [ %64, %63 ]
  %69 = load i32, ptr %0, align 8, !tbaa !115
  %70 = load i32, ptr %20, align 4, !tbaa !116
  %71 = icmp sgt i32 %69, %68
  %72 = icmp sgt i32 %70, %37
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load ptr, ptr %33, align 8, !tbaa !114
  %76 = mul nsw i32 %69, %37
  %77 = add nsw i32 %76, %68
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, ptr %75, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !134
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  store i8 2, ptr %79, align 1, !tbaa !134
  %83 = load ptr, ptr %34, align 8, !tbaa !117
  tail call void @flush_pixel(ptr noundef %83, i32 noundef %68, i32 noundef %37)
  %84 = load ptr, ptr %35, align 8, !tbaa !119
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store i16 1, ptr %84, align 2, !tbaa !162
  br label %87

87:                                               ; preds = %67, %74, %82, %86
  %88 = add nuw i32 %68, 1
  %89 = icmp eq i32 %88, %65
  br i1 %89, label %90, label %67, !llvm.loop !213

90:                                               ; preds = %87, %63, %52
  %91 = add nuw i32 %37, 1
  %92 = icmp eq i32 %91, %27
  br i1 %92, label %93, label %36, !llvm.loop !214

93:                                               ; preds = %90, %25, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @multiresbake_get_normal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %7 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !193
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !141
  store i32 %11, ptr %5, align 16, !tbaa !192
  %12 = getelementptr inbounds i32, ptr %5, i64 1
  %13 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !142
  store i32 %14, ptr %12, align 4, !tbaa !192
  %15 = getelementptr inbounds i32, ptr %5, i64 2
  %16 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !143
  store i32 %17, ptr %15, align 8, !tbaa !192
  %18 = getelementptr inbounds i32, ptr %5, i64 3
  %19 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !127
  store i32 %20, ptr %18, align 4, !tbaa !192
  %21 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 6
  %22 = load i8, ptr %21, align 1, !tbaa !215
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.MResolvePixelData, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !216
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = mul nsw i32 %2, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, ptr %27, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !129
  store float %33, ptr %1, align 4, !tbaa !129
  %34 = getelementptr inbounds float, ptr %32, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !129
  %36 = getelementptr inbounds float, ptr %1, i64 1
  store float %35, ptr %36, align 4, !tbaa !129
  %37 = getelementptr inbounds float, ptr %32, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !129
  %39 = getelementptr inbounds float, ptr %1, i64 2
  store float %38, ptr %39, align 4, !tbaa !129
  br label %100

40:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %41 = load i32, ptr %19, align 4, !tbaa !127
  %42 = icmp eq i32 %41, 0
  %43 = load ptr, ptr %0, align 8, !tbaa !217
  %44 = zext i32 %11 to i64
  %45 = getelementptr inbounds %struct.MVert, ptr %43, i64 %44
  %46 = zext i32 %14 to i64
  %47 = getelementptr inbounds %struct.MVert, ptr %43, i64 %46
  %48 = zext i32 %17 to i64
  %49 = getelementptr inbounds %struct.MVert, ptr %43, i64 %48
  br i1 %42, label %54, label %50

50:                                               ; preds = %40
  %51 = zext i32 %20 to i64
  %52 = getelementptr inbounds %struct.MVert, ptr %43, i64 %51
  %53 = call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef %45, ptr noundef %47, ptr noundef %49, ptr noundef %52) #9
  br label %56

54:                                               ; preds = %40
  %55 = call float @normal_tri_v3(ptr noundef nonnull %6, ptr noundef %45, ptr noundef %47, ptr noundef %49) #9
  br label %56

56:                                               ; preds = %54, %50
  %57 = load float, ptr %6, align 4, !tbaa !129
  store float %57, ptr %1, align 4, !tbaa !129
  %58 = getelementptr inbounds float, ptr %6, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !129
  %60 = getelementptr inbounds float, ptr %1, i64 1
  store float %59, ptr %60, align 4, !tbaa !129
  %61 = getelementptr inbounds float, ptr %6, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !129
  %63 = getelementptr inbounds float, ptr %1, i64 2
  store float %62, ptr %63, align 4, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  br label %100

64:                                               ; preds = %4
  %65 = load ptr, ptr %0, align 8, !tbaa !217
  %66 = sext i32 %3 to i64
  %67 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !192
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.MVert, ptr %65, i64 %69, i32 1
  %71 = load i16, ptr %70, align 2, !tbaa !162
  %72 = sitofp i16 %71 to float
  %73 = fmul float %72, 0x3F00002000000000
  store float %73, ptr %1, align 4, !tbaa !129
  %74 = getelementptr inbounds i16, ptr %70, i64 1
  %75 = load i16, ptr %74, align 2, !tbaa !162
  %76 = sitofp i16 %75 to float
  %77 = fmul float %76, 0x3F00002000000000
  %78 = getelementptr inbounds float, ptr %1, i64 1
  store float %77, ptr %78, align 4, !tbaa !129
  %79 = getelementptr inbounds i16, ptr %70, i64 2
  %80 = load i16, ptr %79, align 2, !tbaa !162
  %81 = sitofp i16 %80 to float
  %82 = fmul float %81, 0x3F00002000000000
  %83 = getelementptr inbounds float, ptr %1, i64 2
  store float %82, ptr %83, align 4, !tbaa !129
  %84 = fmul float %77, %77
  %85 = tail call float @llvm.fmuladd.f32(float %73, float %73, float %84)
  %86 = tail call float @llvm.fmuladd.f32(float %82, float %82, float %85)
  %87 = fcmp ogt float %86, 0x38AA95A5C0000000
  br i1 %87, label %88, label %97

88:                                               ; preds = %64
  %89 = tail call float @sqrtf(float noundef %86) #9
  %90 = fdiv float 1.000000e+00, %89
  %91 = load float, ptr %1, align 4, !tbaa !129
  %92 = fmul float %91, %90
  store float %92, ptr %1, align 4, !tbaa !129
  %93 = load float, ptr %78, align 4, !tbaa !129
  %94 = fmul float %90, %93
  store float %94, ptr %78, align 4, !tbaa !129
  %95 = load float, ptr %83, align 4, !tbaa !129
  %96 = fmul float %90, %95
  br label %98

97:                                               ; preds = %64
  store float 0.000000e+00, ptr %1, align 4, !tbaa !129
  store float 0.000000e+00, ptr %78, align 4, !tbaa !129
  br label %98

98:                                               ; preds = %88, %97
  %99 = phi float [ 0.000000e+00, %97 ], [ %96, %88 ]
  store float %99, ptr %83, align 4, !tbaa !129
  br label %100

100:                                              ; preds = %29, %56, %98
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret void
}

declare void @resolve_tri_uv_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zero_m3(ptr noundef) local_unnamed_addr #2

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare void @resolve_quad_uv_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @get_ccgdm_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #0 {
  %11 = alloca [4 x [3 x float]], align 16
  %12 = alloca [4 x [3 x float]], align 16
  %13 = alloca %struct.MFace, align 4
  %14 = alloca %struct.CCGKey, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #9
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 30
  %18 = load ptr, ptr %17, align 8, !tbaa !126
  call void %18(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %13) #9
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 64
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  %21 = call i32 %20(ptr noundef %1) #9
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 65
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = call ptr %23(ptr noundef %1) #9
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 67
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = call ptr %26(ptr noundef %1) #9
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 68
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  call void %29(ptr noundef %1, ptr noundef nonnull %14) #9
  %30 = icmp eq i32 %4, 0
  %31 = sext i32 %5 to i64
  br i1 %30, label %32, label %46

32:                                               ; preds = %10
  %33 = shl i32 %21, 1
  %34 = add nsw i32 %33, -1
  %35 = getelementptr inbounds i32, ptr %27, i64 %31
  %36 = load i32, ptr %35, align 4, !tbaa !192
  %37 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !127
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 3, i32 4
  %41 = add nsw i32 %33, -2
  %42 = sitofp i32 %41 to float
  %43 = fmul float %42, %6
  %44 = fmul float %42, %7
  %45 = call i32 @mdisp_rot_face_to_crn(i32 noundef %40, i32 noundef %34, float noundef %43, float noundef %44, ptr noundef nonnull %15, ptr noundef nonnull %16) #9
  br label %83

46:                                               ; preds = %10
  %47 = add nsw i32 %4, -1
  %48 = shl nuw i32 1, %47
  %49 = getelementptr inbounds i32, ptr %2, i64 %31
  %50 = load i32, ptr %49, align 4, !tbaa !192
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = icmp eq ptr %3, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %52
  %55 = sext i32 %50 to i64
  %56 = getelementptr inbounds i32, ptr %3, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !192
  br label %58

58:                                               ; preds = %46, %52, %54
  %59 = phi i32 [ %57, %54 ], [ -1, %46 ], [ %50, %52 ]
  %60 = shl nsw i32 %4, 1
  %61 = shl nuw i32 1, %60
  %62 = srem i32 %5, %61
  %63 = shl nuw i32 %48, %47
  %64 = srem i32 %62, %63
  %65 = add nsw i32 %21, -1
  %66 = sdiv i32 %65, %48
  %67 = sdiv i32 %64, %48
  %68 = srem i32 %64, %48
  %69 = shl nsw i32 %47, 1
  %70 = shl nuw i32 1, %69
  %71 = sdiv i32 %5, %70
  %72 = sext i32 %59 to i64
  %73 = getelementptr inbounds i32, ptr %27, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !192
  %75 = sub nsw i32 %71, %74
  %76 = mul nsw i32 %67, %66
  %77 = sitofp i32 %76 to float
  %78 = sitofp i32 %66 to float
  %79 = call float @llvm.fmuladd.f32(float %6, float %78, float %77)
  store float %79, ptr %16, align 4, !tbaa !129
  %80 = mul nsw i32 %68, %66
  %81 = sitofp i32 %80 to float
  %82 = call float @llvm.fmuladd.f32(float %7, float %78, float %81)
  store float %82, ptr %15, align 4, !tbaa !129
  br label %83

83:                                               ; preds = %58, %32
  %84 = phi i32 [ %36, %32 ], [ %74, %58 ]
  %85 = phi i32 [ %45, %32 ], [ %75, %58 ]
  %86 = load float, ptr %15, align 4, !tbaa !129
  %87 = fcmp olt float %86, 0.000000e+00
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store float 0.000000e+00, ptr %15, align 4, !tbaa !129
  br label %93

89:                                               ; preds = %83
  %90 = sitofp i32 %21 to float
  %91 = fcmp ogt float %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store float %90, ptr %15, align 4, !tbaa !129
  br label %93

93:                                               ; preds = %89, %92, %88
  %94 = load float, ptr %16, align 4, !tbaa !129
  %95 = fcmp olt float %94, 0.000000e+00
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store float 0.000000e+00, ptr %16, align 4, !tbaa !129
  br label %101

97:                                               ; preds = %93
  %98 = sitofp i32 %21 to float
  %99 = fcmp ogt float %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store float %98, ptr %16, align 4, !tbaa !129
  br label %101

101:                                              ; preds = %97, %100, %96
  %102 = icmp eq ptr %9, null
  br i1 %102, label %183, label %103

103:                                              ; preds = %101
  %104 = add nsw i32 %85, %84
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %24, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !57
  %108 = load float, ptr %15, align 4, !tbaa !129
  %109 = load float, ptr %16, align 4, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %12) #9
  %110 = fptosi float %108 to i32
  %111 = getelementptr inbounds %struct.CCGKey, ptr %14, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !179
  %113 = add nsw i32 %112, -1
  %114 = icmp sgt i32 %113, %110
  %115 = add nsw i32 %110, 1
  %116 = select i1 %114, i32 %115, i32 %113
  %117 = fptosi float %109 to i32
  %118 = icmp sgt i32 %113, %117
  %119 = add nsw i32 %117, 1
  %120 = select i1 %118, i32 %119, i32 %113
  %121 = mul nsw i32 %112, %117
  %122 = add nsw i32 %121, %110
  %123 = getelementptr inbounds %struct.CCGKey, ptr %14, i64 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !181
  %125 = mul nsw i32 %122, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %107, i64 %126
  %128 = getelementptr inbounds %struct.CCGKey, ptr %14, i64 0, i32 5
  %129 = load i32, ptr %128, align 4, !tbaa !218
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %127, i64 %130
  %132 = load float, ptr %131, align 4, !tbaa !129
  store float %132, ptr %12, align 16, !tbaa !129
  %133 = getelementptr inbounds float, ptr %131, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !129
  %135 = getelementptr inbounds float, ptr %12, i64 1
  store float %134, ptr %135, align 4, !tbaa !129
  %136 = getelementptr inbounds float, ptr %131, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !129
  %138 = getelementptr inbounds float, ptr %12, i64 2
  store float %137, ptr %138, align 8, !tbaa !129
  %139 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 1
  %140 = add nsw i32 %116, %121
  %141 = mul nsw i32 %140, %124
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %107, i64 %142
  %144 = getelementptr inbounds i8, ptr %143, i64 %130
  %145 = load float, ptr %144, align 4, !tbaa !129
  store float %145, ptr %139, align 4, !tbaa !129
  %146 = getelementptr inbounds float, ptr %144, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !129
  %148 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 1, i64 1
  store float %147, ptr %148, align 16, !tbaa !129
  %149 = getelementptr inbounds float, ptr %144, i64 2
  %150 = load float, ptr %149, align 4, !tbaa !129
  %151 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 1, i64 2
  store float %150, ptr %151, align 4, !tbaa !129
  %152 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 2
  %153 = mul nsw i32 %120, %112
  %154 = add nsw i32 %153, %116
  %155 = mul nsw i32 %154, %124
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %107, i64 %156
  %158 = getelementptr inbounds i8, ptr %157, i64 %130
  %159 = load float, ptr %158, align 4, !tbaa !129
  store float %159, ptr %152, align 8, !tbaa !129
  %160 = getelementptr inbounds float, ptr %158, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !129
  %162 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 2, i64 1
  store float %161, ptr %162, align 4, !tbaa !129
  %163 = getelementptr inbounds float, ptr %158, i64 2
  %164 = load float, ptr %163, align 4, !tbaa !129
  %165 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 2, i64 2
  store float %164, ptr %165, align 16, !tbaa !129
  %166 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 3
  %167 = add nsw i32 %153, %110
  %168 = mul nsw i32 %167, %124
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %107, i64 %169
  %171 = getelementptr inbounds i8, ptr %170, i64 %130
  %172 = load float, ptr %171, align 4, !tbaa !129
  store float %172, ptr %166, align 4, !tbaa !129
  %173 = getelementptr inbounds float, ptr %171, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !129
  %175 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 3, i64 1
  store float %174, ptr %175, align 8, !tbaa !129
  %176 = getelementptr inbounds float, ptr %171, i64 2
  %177 = load float, ptr %176, align 4, !tbaa !129
  %178 = getelementptr inbounds [4 x [3 x float]], ptr %12, i64 0, i64 3, i64 2
  store float %177, ptr %178, align 4, !tbaa !129
  %179 = sitofp i32 %117 to float
  %180 = fsub float %109, %179
  %181 = sitofp i32 %110 to float
  %182 = fsub float %108, %181
  call void @interp_bilinear_quad_v3(ptr noundef nonnull %12, float noundef %182, float noundef %180, ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %12) #9
  br label %183

183:                                              ; preds = %103, %101
  %184 = icmp eq ptr %8, null
  br i1 %184, label %258, label %185

185:                                              ; preds = %183
  %186 = add nsw i32 %85, %84
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds ptr, ptr %24, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !57
  %190 = load float, ptr %15, align 4, !tbaa !129
  %191 = load float, ptr %16, align 4, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #9
  %192 = fptosi float %190 to i32
  %193 = getelementptr inbounds %struct.CCGKey, ptr %14, i64 0, i32 2
  %194 = load i32, ptr %193, align 4, !tbaa !179
  %195 = add nsw i32 %194, -1
  %196 = icmp sgt i32 %195, %192
  %197 = add nsw i32 %192, 1
  %198 = select i1 %196, i32 %197, i32 %195
  %199 = fptosi float %191 to i32
  %200 = icmp sgt i32 %195, %199
  %201 = add nsw i32 %199, 1
  %202 = select i1 %200, i32 %201, i32 %195
  %203 = mul nsw i32 %194, %199
  %204 = add nsw i32 %203, %192
  %205 = getelementptr inbounds %struct.CCGKey, ptr %14, i64 0, i32 1
  %206 = load i32, ptr %205, align 4, !tbaa !181
  %207 = mul nsw i32 %204, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, ptr %189, i64 %208
  %210 = load float, ptr %209, align 4, !tbaa !129
  store float %210, ptr %11, align 16, !tbaa !129
  %211 = getelementptr inbounds float, ptr %209, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !129
  %213 = getelementptr inbounds float, ptr %11, i64 1
  store float %212, ptr %213, align 4, !tbaa !129
  %214 = getelementptr inbounds float, ptr %209, i64 2
  %215 = load float, ptr %214, align 4, !tbaa !129
  %216 = getelementptr inbounds float, ptr %11, i64 2
  store float %215, ptr %216, align 8, !tbaa !129
  %217 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 1
  %218 = add nsw i32 %198, %203
  %219 = mul nsw i32 %218, %206
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, ptr %189, i64 %220
  %222 = load float, ptr %221, align 4, !tbaa !129
  store float %222, ptr %217, align 4, !tbaa !129
  %223 = getelementptr inbounds float, ptr %221, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !129
  %225 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  store float %224, ptr %225, align 16, !tbaa !129
  %226 = getelementptr inbounds float, ptr %221, i64 2
  %227 = load float, ptr %226, align 4, !tbaa !129
  %228 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 1, i64 2
  store float %227, ptr %228, align 4, !tbaa !129
  %229 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 2
  %230 = mul nsw i32 %202, %194
  %231 = add nsw i32 %230, %198
  %232 = mul nsw i32 %231, %206
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, ptr %189, i64 %233
  %235 = load float, ptr %234, align 4, !tbaa !129
  store float %235, ptr %229, align 8, !tbaa !129
  %236 = getelementptr inbounds float, ptr %234, i64 1
  %237 = load float, ptr %236, align 4, !tbaa !129
  %238 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 2, i64 1
  store float %237, ptr %238, align 4, !tbaa !129
  %239 = getelementptr inbounds float, ptr %234, i64 2
  %240 = load float, ptr %239, align 4, !tbaa !129
  %241 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 2, i64 2
  store float %240, ptr %241, align 16, !tbaa !129
  %242 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 3
  %243 = add nsw i32 %230, %192
  %244 = mul nsw i32 %243, %206
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, ptr %189, i64 %245
  %247 = load float, ptr %246, align 4, !tbaa !129
  store float %247, ptr %242, align 4, !tbaa !129
  %248 = getelementptr inbounds float, ptr %246, i64 1
  %249 = load float, ptr %248, align 4, !tbaa !129
  %250 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 3, i64 1
  store float %249, ptr %250, align 8, !tbaa !129
  %251 = getelementptr inbounds float, ptr %246, i64 2
  %252 = load float, ptr %251, align 4, !tbaa !129
  %253 = getelementptr inbounds [4 x [3 x float]], ptr %11, i64 0, i64 3, i64 2
  store float %252, ptr %253, align 4, !tbaa !129
  %254 = sitofp i32 %199 to float
  %255 = fsub float %191, %254
  %256 = sitofp i32 %192 to float
  %257 = fsub float %190, %256
  call void @interp_bilinear_quad_v3(ptr noundef nonnull %11, float noundef %257, float noundef %255, ptr noundef nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #9
  br label %258

258:                                              ; preds = %185, %183
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #9
  ret void
}

declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mdisp_rot_face_to_crn(i32 noundef, i32 noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_bilinear_quad_v3(ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_barycentric_tri_v3(ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @subsurf_make_derived_from_derived(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #5

declare i32 @RE_rayobject_raycast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

declare ptr @RE_rayobject_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RE_rayface_from_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_rayobject_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_rayobject_done(ptr noundef) local_unnamed_addr #2

declare void @RE_rayobject_free(ptr noundef) local_unnamed_addr #2

declare float @RE_bake_make_derivative(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RE_bake_ibuf_normalize_displacement(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @RE_bake_ibuf_filter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @imb_freemipmapImBuf(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !36, i64 0}
!35 = !{!"MultiresBakeRender", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !37, i64 34, !39, i64 36, !41, i64 40, !39, i64 44, !39, i64 48, !42, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !41, i64 92, !36, i64 96, !36, i64 104, !36, i64 112}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!35, !39, i64 48}
!44 = !{!45, !36, i64 1120}
!45 = !{!"DerivedMesh", !46, i64 0, !46, i64 200, !46, i64 400, !46, i64 600, !46, i64 800, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !36, i64 1032, !36, i64 1040, !39, i64 1048, !41, i64 1052, !39, i64 1056, !39, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!46 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!47 = !{!48, !36, i64 32}
!48 = !{!"MTFace", !37, i64 0, !36, i64 32, !37, i64 40, !37, i64 41, !40, i64 42, !40, i64 44, !40, i64 46}
!49 = !{!50, !40, i64 98}
!50 = !{!"Image", !51, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !39, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !41, i64 1296, !39, i64 1300, !40, i64 1304, !40, i64 1306, !39, i64 1308, !39, i64 1312, !37, i64 1316, !37, i64 1317, !40, i64 1318, !37, i64 1320, !41, i64 1336, !41, i64 1340, !52, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!52 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = distinct !{!56, !54, !55}
!57 = !{!36, !36, i64 0}
!58 = distinct !{!58, !54, !55}
!59 = !{!60, !36, i64 16}
!60 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!61 = !{!62, !39, i64 16}
!62 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !63, i64 2436, !64, i64 2456}
!63 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!64 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!65 = !{!62, !39, i64 20}
!66 = !{!67, !36, i64 8}
!67 = !{!"BakeImBufuserData", !36, i64 0, !36, i64 8}
!68 = !{!62, !36, i64 304}
!69 = !{!35, !40, i64 32}
!70 = distinct !{!70, !54, !55}
!71 = !{!67, !36, i64 0}
!72 = !{!35, !41, i64 92}
!73 = !{!35, !39, i64 20}
!74 = !{!62, !39, i64 292}
!75 = !{!62, !36, i64 48}
!76 = distinct !{!76, !54, !55}
!77 = !{!35, !39, i64 24}
!78 = !{!45, !36, i64 1168}
!79 = !{!45, !36, i64 1184}
!80 = !{!45, !36, i64 1336}
!81 = !{!35, !39, i64 88}
!82 = !{ptr @init_ao_data, ptr @init_heights_data, ptr @init_normal_data}
!83 = !{!35, !36, i64 8}
!84 = !{!45, !36, i64 1432}
!85 = !{!45, !36, i64 1440}
!86 = !{!45, !36, i64 1456}
!87 = !{!45, !36, i64 1464}
!88 = !{!89, !39, i64 0}
!89 = !{!"MultiresBakeQueue", !39, i64 0, !39, i64 4, !39, i64 8}
!90 = !{!89, !39, i64 4}
!91 = !{!92, !36, i64 8}
!92 = !{!"MultiresBakeThread", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !93, i64 32, !94, i64 72, !41, i64 192, !41, i64 196}
!93 = !{!"", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!94 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64, !36, i64 72, !39, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112}
!95 = !{!92, !36, i64 16}
!96 = !{!92, !36, i64 0}
!97 = !{!92, !36, i64 80}
!98 = !{!92, !36, i64 72}
!99 = !{!92, !36, i64 88}
!100 = !{!92, !36, i64 96}
!101 = !{!92, !36, i64 104}
!102 = !{!92, !39, i64 112}
!103 = !{!92, !39, i64 116}
!104 = !{!92, !36, i64 136}
!105 = !{!92, !36, i64 144}
!106 = !{!92, !39, i64 152}
!107 = !{!92, !36, i64 184}
!108 = !{!92, !36, i64 160}
!109 = !{!92, !36, i64 168}
!110 = !{!92, !36, i64 176}
!111 = !{!92, !41, i64 192}
!112 = !{!92, !41, i64 196}
!113 = !{!35, !36, i64 104}
!114 = !{!93, !36, i64 8}
!115 = !{!93, !39, i64 0}
!116 = !{!93, !39, i64 4}
!117 = !{!93, !36, i64 16}
!118 = !{!93, !36, i64 24}
!119 = !{!93, !36, i64 32}
!120 = distinct !{!120, !54, !55}
!121 = !{!122, !41, i64 0}
!122 = !{!"MultiresBakeResult", !41, i64 0, !41, i64 4}
!123 = !{!122, !41, i64 4}
!124 = distinct !{!124, !54, !55}
!125 = !{ptr @free_ao_data, ptr @free_heights_data, ptr @free_normal_data}
!126 = !{!45, !36, i64 1160}
!127 = !{!128, !39, i64 12}
!128 = !{!"MFace", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !40, i64 16, !37, i64 18, !37, i64 19}
!129 = !{!41, !41, i64 0}
!130 = !{!131, !36, i64 0}
!131 = !{!"", !36, i64 0, !36, i64 8}
!132 = !{!131, !36, i64 8}
!133 = !{!62, !36, i64 40}
!134 = !{!37, !37, i64 0}
!135 = !{!45, !36, i64 1352}
!136 = !{!137, !36, i64 24}
!137 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!138 = !{!137, !36, i64 32}
!139 = !{!137, !36, i64 16}
!140 = !{!45, !36, i64 1528}
!141 = !{!128, !39, i64 0}
!142 = !{!128, !39, i64 4}
!143 = !{!128, !39, i64 8}
!144 = !{!45, !36, i64 1544}
!145 = !{!137, !36, i64 0}
!146 = !{!137, !36, i64 8}
!147 = !{!35, !37, i64 34}
!148 = !{!35, !39, i64 28}
!149 = !{!150, !40, i64 116}
!150 = !{!"SubsurfModifierData", !151, i64 0, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !36, i64 120, !36, i64 128}
!151 = !{!"ModifierData", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!152 = !{!150, !40, i64 114}
!153 = !{!150, !40, i64 118}
!154 = !{!35, !37, i64 16}
!155 = !{!150, !40, i64 112}
!156 = !{!45, !36, i64 1680}
!157 = !{!158, !36, i64 40}
!158 = !{!"", !39, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!159 = !{!158, !36, i64 48}
!160 = !{!158, !41, i64 4}
!161 = distinct !{!161, !54, !55}
!162 = !{!40, !40, i64 0}
!163 = !{!158, !39, i64 0}
!164 = !{!158, !36, i64 8}
!165 = !{!158, !36, i64 16}
!166 = distinct !{!166, !54, !55}
!167 = !{!168, !41, i64 24}
!168 = !{!"Isect", !37, i64 0, !37, i64 12, !41, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !36, i64 104, !41, i64 112, !41, i64 116, !39, i64 120, !131, i64 128, !131, i64 144, !36, i64 160, !36, i64 168}
!169 = !{!168, !39, i64 92}
!170 = !{!158, !36, i64 24}
!171 = distinct !{!171, !54, !55}
!172 = distinct !{!172, !54, !55}
!173 = !{!35, !39, i64 36}
!174 = !{!35, !41, i64 40}
!175 = !{!45, !36, i64 1424}
!176 = !{!35, !39, i64 80}
!177 = !{!35, !39, i64 84}
!178 = !{!158, !36, i64 32}
!179 = !{!180, !39, i64 8}
!180 = !{!"CCGKey", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!181 = !{!180, !39, i64 4}
!182 = distinct !{!182, !54, !55}
!183 = distinct !{!183, !54, !55}
!184 = distinct !{!184, !54, !55}
!185 = distinct !{!185, !54, !55}
!186 = distinct !{!186, !54, !55}
!187 = distinct !{!187, !54, !55}
!188 = !{!94, !36, i64 16}
!189 = !{!35, !36, i64 96}
!190 = distinct !{!190, !54, !55}
!191 = !{!94, !39, i64 48}
!192 = !{!39, !39, i64 0}
!193 = !{!94, !36, i64 8}
!194 = !{!94, !39, i64 52}
!195 = !{!94, !39, i64 56}
!196 = !{!94, !39, i64 60}
!197 = !{!94, !36, i64 104}
!198 = distinct !{!198, !54, !55}
!199 = !{!35, !39, i64 76}
!200 = !{!35, !36, i64 112}
!201 = !{!35, !39, i64 72}
!202 = !{!35, !39, i64 44}
!203 = !{!94, !39, i64 40}
!204 = !{!94, !39, i64 44}
!205 = !{!94, !36, i64 24}
!206 = distinct !{!206, !54, !55}
!207 = !{!94, !36, i64 112}
!208 = !{!94, !36, i64 64}
!209 = !{!94, !36, i64 72}
!210 = !{!94, !36, i64 88}
!211 = !{!94, !36, i64 96}
!212 = !{!94, !39, i64 80}
!213 = distinct !{!213, !54, !55}
!214 = distinct !{!214, !54, !55}
!215 = !{!128, !37, i64 19}
!216 = !{!94, !36, i64 32}
!217 = !{!94, !36, i64 0}
!218 = !{!180, !39, i64 20}
