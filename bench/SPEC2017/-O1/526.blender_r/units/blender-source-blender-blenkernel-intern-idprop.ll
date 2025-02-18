; ModuleID = 'blender/source/blender/blenkernel/intern/idprop.c'
source_filename = "blender/source/blender/blenkernel/intern/idprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.IDPIter = type { ptr, ptr }
%struct.anon.0 = type { i16, i16 }
%struct.anon = type { ptr, i16, i8 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"IDProperty prop array\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.IDP_CopyIDPArray = private unnamed_addr constant [17 x i8] c"IDP_CopyIDPArray\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_recallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.IDP_ResizeIDPArray = private unnamed_addr constant [19 x i8] c"IDP_ResizeIDPArray\00", align 1
@idp_size_table = internal unnamed_addr constant [9 x i8] c"\01\04\04\0C@\00\10\08\08", align 1
@__func__.IDP_ResizeArray = private unnamed_addr constant [16 x i8] c"IDP_ResizeArray\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"IDProperty string\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"id property string 1\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"id property string 2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"IDPIter\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"IDProperty\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"IDProperty int\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"IDProperty float\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"IDProperty array\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"id property array\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"id property string 3\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"IDProperty group\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"IDP_ResizeArray group\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"IDProperty array dup\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @IDP_NewIDPArray(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @.str) #8
  %4 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 2
  store i8 9, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 8
  store i32 0, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 5
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 64) #8
  ret ptr %3
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @IDP_CopyIDPArray(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @__func__.IDP_CopyIDPArray) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !tbaa.struct !45
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call ptr %4(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 7
  store ptr %7, ptr %8, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1, %12
  %13 = phi i64 [ %20, %12 ], [ 0, %1 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 %13
  %16 = tail call ptr @IDP_CopyProperty(ptr noundef %15)
  %17 = load ptr, ptr %8, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.IDProperty, ptr %17, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef nonnull align 8 dereferenceable(128) %16, i64 128, i1 false)
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %16) #8
  %20 = add nuw nsw i64 %13, 1
  %21 = load i32, ptr %9, align 8, !tbaa !44
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %12, label %24, !llvm.loop !50

24:                                               ; preds = %12, %1
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @IDP_CopyProperty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !38
  switch i8 %3, label %140 [
    i8 6, label %4
    i8 0, label %34
    i8 5, label %68
    i8 9, label %117
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 128, ptr noundef nonnull @.str.13) #8
  %7 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 5
  %8 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 5
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %8, i64 noundef 64) #8
  %10 = load i8, ptr %2, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 2
  store i8 %10, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 4
  %13 = load i16, ptr %12, align 2, !tbaa !53
  %14 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 4
  store i16 %13, ptr %14, align 2, !tbaa !53
  %15 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7, i32 2
  store i32 %16, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !55
  %20 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7, i32 3
  store i32 %19, ptr %20, align 4, !tbaa !55
  %21 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 8
  store i32 %22, ptr %23, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %157, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7, i32 1
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %25, %27 ], [ %32, %29 ]
  %31 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %30)
  tail call void @BLI_addtail(ptr noundef nonnull %28, ptr noundef %31) #8
  %32 = load ptr, ptr %30, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %157, label %29, !llvm.loop !56

34:                                               ; preds = %1
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %36 = tail call ptr %35(i64 noundef 128, ptr noundef nonnull @.str.13) #8
  %37 = getelementptr inbounds %struct.IDProperty, ptr %36, i64 0, i32 5
  %38 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 5
  %39 = tail call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef nonnull %38, i64 noundef 64) #8
  %40 = load i8, ptr %2, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.IDProperty, ptr %36, i64 0, i32 2
  store i8 %40, ptr %41, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 4
  %43 = load i16, ptr %42, align 2, !tbaa !53
  %44 = getelementptr inbounds %struct.IDProperty, ptr %36, i64 0, i32 4
  store i16 %43, ptr %44, align 2, !tbaa !53
  %45 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !54
  %47 = getelementptr inbounds %struct.IDProperty, ptr %36, i64 0, i32 7, i32 2
  store i32 %46, ptr %47, align 8, !tbaa !54
  %48 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !55
  %50 = getelementptr inbounds %struct.IDProperty, ptr %36, i64 0, i32 7, i32 3
  store i32 %49, ptr %50, align 4, !tbaa !55
  %51 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !49
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %34
  %55 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %56 = tail call ptr %55(ptr noundef nonnull %52) #8
  %57 = getelementptr inbounds %struct.IDProperty, ptr %36, i64 0, i32 7
  store ptr %56, ptr %57, align 8, !tbaa !49
  br label %58

58:                                               ; preds = %34, %54
  %59 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %60 = load i32, ptr %59, align 8, !tbaa !44
  %61 = getelementptr inbounds %struct.IDProperty, ptr %36, i64 0, i32 8
  store i32 %60, ptr %61, align 8, !tbaa !44
  %62 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !57
  %64 = getelementptr inbounds %struct.IDProperty, ptr %36, i64 0, i32 3
  store i8 %63, ptr %64, align 1, !tbaa !57
  %65 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 9
  %66 = load i32, ptr %65, align 4, !tbaa !58
  %67 = getelementptr inbounds %struct.IDProperty, ptr %36, i64 0, i32 9
  store i32 %66, ptr %67, align 4, !tbaa !58
  br label %157

68:                                               ; preds = %1
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %70 = tail call ptr %69(i64 noundef 128, ptr noundef nonnull @.str.13) #8
  %71 = getelementptr inbounds %struct.IDProperty, ptr %70, i64 0, i32 5
  %72 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 5
  %73 = tail call ptr @BLI_strncpy(ptr noundef nonnull %71, ptr noundef nonnull %72, i64 noundef 64) #8
  %74 = load i8, ptr %2, align 8, !tbaa !38
  %75 = getelementptr inbounds %struct.IDProperty, ptr %70, i64 0, i32 2
  store i8 %74, ptr %75, align 8, !tbaa !38
  %76 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 4
  %77 = load i16, ptr %76, align 2, !tbaa !53
  %78 = getelementptr inbounds %struct.IDProperty, ptr %70, i64 0, i32 4
  store i16 %77, ptr %78, align 2, !tbaa !53
  %79 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !54
  %81 = getelementptr inbounds %struct.IDProperty, ptr %70, i64 0, i32 7, i32 2
  store i32 %80, ptr %81, align 8, !tbaa !54
  %82 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !55
  %84 = getelementptr inbounds %struct.IDProperty, ptr %70, i64 0, i32 7, i32 3
  store i32 %83, ptr %84, align 4, !tbaa !55
  %85 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !49
  %87 = icmp eq ptr %86, null
  br i1 %87, label %107, label %88

88:                                               ; preds = %68
  %89 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %90 = tail call ptr %89(ptr noundef nonnull %86) #8
  %91 = getelementptr inbounds %struct.IDProperty, ptr %70, i64 0, i32 7
  store ptr %90, ptr %91, align 8, !tbaa !49
  %92 = load i8, ptr %2, align 8, !tbaa !38
  %93 = icmp eq i8 %92, 6
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %96 = load i32, ptr %95, align 8, !tbaa !44
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94, %98
  %99 = phi i64 [ %103, %98 ], [ 0, %94 ]
  %100 = getelementptr inbounds ptr, ptr %90, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !34
  %102 = tail call ptr @IDP_CopyProperty(ptr noundef %101)
  store ptr %102, ptr %100, align 8, !tbaa !34
  %103 = add nuw nsw i64 %99, 1
  %104 = load i32, ptr %95, align 8, !tbaa !44
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %98, label %107, !llvm.loop !59

107:                                              ; preds = %98, %94, %68, %88
  %108 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %109 = load i32, ptr %108, align 8, !tbaa !44
  %110 = getelementptr inbounds %struct.IDProperty, ptr %70, i64 0, i32 8
  store i32 %109, ptr %110, align 8, !tbaa !44
  %111 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %112 = load i8, ptr %111, align 1, !tbaa !57
  %113 = getelementptr inbounds %struct.IDProperty, ptr %70, i64 0, i32 3
  store i8 %112, ptr %113, align 1, !tbaa !57
  %114 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 9
  %115 = load i32, ptr %114, align 4, !tbaa !58
  %116 = getelementptr inbounds %struct.IDProperty, ptr %70, i64 0, i32 9
  store i32 %115, ptr %116, align 4, !tbaa !58
  br label %157

117:                                              ; preds = %1
  %118 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %119 = tail call ptr %118(i64 noundef 128, ptr noundef nonnull @__func__.IDP_CopyIDPArray) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %119, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !tbaa.struct !45
  %120 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %121 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %122 = load ptr, ptr %121, align 8, !tbaa !49
  %123 = tail call ptr %120(ptr noundef %122) #8
  %124 = getelementptr inbounds %struct.IDProperty, ptr %119, i64 0, i32 7
  store ptr %123, ptr %124, align 8, !tbaa !49
  %125 = getelementptr inbounds %struct.IDProperty, ptr %119, i64 0, i32 8
  %126 = load i32, ptr %125, align 8, !tbaa !44
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %157

128:                                              ; preds = %117, %128
  %129 = phi i64 [ %136, %128 ], [ 0, %117 ]
  %130 = load ptr, ptr %124, align 8, !tbaa !49
  %131 = getelementptr inbounds %struct.IDProperty, ptr %130, i64 %129
  %132 = tail call ptr @IDP_CopyProperty(ptr noundef %131)
  %133 = load ptr, ptr %124, align 8, !tbaa !49
  %134 = getelementptr inbounds %struct.IDProperty, ptr %133, i64 %129
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %134, ptr noundef nonnull align 8 dereferenceable(128) %132, i64 128, i1 false)
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %135(ptr noundef %132) #8
  %136 = add nuw nsw i64 %129, 1
  %137 = load i32, ptr %125, align 8, !tbaa !44
  %138 = sext i32 %137 to i64
  %139 = icmp slt i64 %136, %138
  br i1 %139, label %128, label %157, !llvm.loop !50

140:                                              ; preds = %1
  %141 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %142 = tail call ptr %141(i64 noundef 128, ptr noundef nonnull @.str.13) #8
  %143 = getelementptr inbounds %struct.IDProperty, ptr %142, i64 0, i32 5
  %144 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 5
  %145 = tail call ptr @BLI_strncpy(ptr noundef nonnull %143, ptr noundef nonnull %144, i64 noundef 64) #8
  %146 = load i8, ptr %2, align 8, !tbaa !38
  %147 = getelementptr inbounds %struct.IDProperty, ptr %142, i64 0, i32 2
  store i8 %146, ptr %147, align 8, !tbaa !38
  %148 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 4
  %149 = load i16, ptr %148, align 2, !tbaa !53
  %150 = getelementptr inbounds %struct.IDProperty, ptr %142, i64 0, i32 4
  store i16 %149, ptr %150, align 2, !tbaa !53
  %151 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !54
  %153 = getelementptr inbounds %struct.IDProperty, ptr %142, i64 0, i32 7, i32 2
  store i32 %152, ptr %153, align 8, !tbaa !54
  %154 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 3
  %155 = load i32, ptr %154, align 4, !tbaa !55
  %156 = getelementptr inbounds %struct.IDProperty, ptr %142, i64 0, i32 7, i32 3
  store i32 %155, ptr %156, align 4, !tbaa !55
  br label %157

157:                                              ; preds = %128, %29, %117, %4, %140, %107, %58
  %158 = phi ptr [ %142, %140 ], [ %70, %107 ], [ %36, %58 ], [ %6, %4 ], [ %119, %117 ], [ %6, %29 ], [ %119, %128 ]
  ret ptr %158
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_FreeIDPArray(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !44
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %11, %7 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.IDProperty, ptr %9, i64 %8
  tail call void @IDP_FreeProperty(ptr noundef %10)
  %11 = add nuw nsw i64 %8, 1
  %12 = load i32, ptr %2, align 8, !tbaa !44
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %7, label %15, !llvm.loop !60

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #8
  br label %21

21:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_FreeProperty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !38
  switch i8 %3, label %82 [
    i8 5, label %10
    i8 0, label %53
    i8 6, label %59
    i8 9, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %76

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  br label %68

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %82, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %16 = load i8, ptr %15, align 1, !tbaa !57
  %17 = icmp eq i8 %16, 6
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !44
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = icmp slt i32 %20, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %22
  %25 = sext i32 %20 to i64
  br label %29

26:                                               ; preds = %18
  %27 = load i32, ptr %19, align 8, !tbaa !44
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %40, label %50

29:                                               ; preds = %24, %29
  %30 = phi i64 [ %25, %24 ], [ %37, %29 ]
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 128, ptr noundef nonnull @.str.11) #8
  %33 = getelementptr inbounds %struct.IDProperty, ptr %32, i64 0, i32 2
  store i8 6, ptr %33, align 8, !tbaa !38
  %34 = getelementptr inbounds %struct.IDProperty, ptr %32, i64 0, i32 5
  %35 = tail call ptr @BLI_strncpy(ptr noundef nonnull %34, ptr noundef nonnull @.str.12, i64 noundef 64) #8
  %36 = getelementptr inbounds ptr, ptr null, i64 %30
  store ptr poison, ptr %36, align 8, !tbaa !34
  %37 = add nsw i64 %30, 1
  %38 = and i64 %37, 4294967295
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %50, label %29, !llvm.loop !61

40:                                               ; preds = %26, %40
  %41 = phi i64 [ %46, %40 ], [ 0, %26 ]
  %42 = getelementptr inbounds ptr, ptr %12, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  tail call void @IDP_FreeProperty(ptr noundef %43)
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %45 = load ptr, ptr %42, align 8, !tbaa !34
  tail call void %44(ptr noundef %45) #8
  %46 = add nuw nsw i64 %41, 1
  %47 = load i32, ptr %19, align 8, !tbaa !44
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %40, label %50, !llvm.loop !62

50:                                               ; preds = %29, %40, %22, %26, %14
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %52 = load ptr, ptr %11, align 8, !tbaa !49
  tail call void %51(ptr noundef %52) #8
  br label %82

53:                                               ; preds = %1
  %54 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  %56 = icmp eq ptr %55, null
  br i1 %56, label %82, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %58(ptr noundef nonnull %55) #8
  br label %82

59:                                               ; preds = %1
  %60 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59, %63
  %64 = phi ptr [ %65, %63 ], [ %61, %59 ]
  tail call void @IDP_FreeProperty(ptr noundef nonnull %64)
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %63, !llvm.loop !63

67:                                               ; preds = %63, %59
  tail call void @BLI_freelistN(ptr noundef nonnull %60) #8
  br label %82

68:                                               ; preds = %8, %68
  %69 = phi i64 [ 0, %8 ], [ %72, %68 ]
  %70 = load ptr, ptr %9, align 8, !tbaa !49
  %71 = getelementptr inbounds %struct.IDProperty, ptr %70, i64 %69
  tail call void @IDP_FreeProperty(ptr noundef %71)
  %72 = add nuw nsw i64 %69, 1
  %73 = load i32, ptr %5, align 8, !tbaa !44
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %68, label %76, !llvm.loop !60

76:                                               ; preds = %68, %4
  %77 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !49
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %81(ptr noundef nonnull %78) #8
  br label %82

82:                                               ; preds = %80, %76, %57, %53, %50, %10, %1, %67
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_SetIndexArray(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 %6
  %8 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp sle i32 %9, %1
  %11 = icmp slt i32 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = icmp eq ptr %7, %2
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void @IDP_FreeProperty(ptr noundef %7)
  br label %16

16:                                               ; preds = %15, %13
  %17 = load ptr, ptr %4, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.IDProperty, ptr %17, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  br label %19

19:                                               ; preds = %3, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @IDP_GetIndexArray(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_AppendArray(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = add nsw i32 %4, 1
  tail call void @IDP_ResizeIDPArray(ptr noundef %0, i32 noundef %5)
  %6 = load i32, ptr %3, align 8, !tbaa !44
  %7 = add nsw i32 %6, -1
  %8 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds %struct.IDProperty, ptr %9, i64 %10
  %12 = icmp slt i32 %6, 1
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = icmp eq ptr %11, %1
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void @IDP_FreeProperty(ptr noundef %11)
  br label %16

16:                                               ; preds = %15, %13
  %17 = load ptr, ptr %8, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.IDProperty, ptr %17, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  br label %19

19:                                               ; preds = %2, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_ResizeIDPArray(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !58
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = icmp sgt i32 %8, %1
  %10 = sub nsw i32 %4, %1
  %11 = icmp slt i32 %10, 200
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %28

13:                                               ; preds = %6
  %14 = load i32, ptr %7, align 8, !tbaa !44
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %18 = sext i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ %18, %16 ], [ %23, %19 ]
  %21 = load ptr, ptr %17, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.IDProperty, ptr %21, i64 %20
  tail call void @IDP_FreeProperty(ptr noundef %22)
  %23 = add nsw i64 %20, 1
  %24 = load i32, ptr %7, align 8, !tbaa !44
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %19, label %27, !llvm.loop !64

27:                                               ; preds = %19, %13
  store i32 %1, ptr %7, align 8, !tbaa !44
  br label %60

28:                                               ; preds = %6
  br i1 %9, label %30, label %29

29:                                               ; preds = %28
  store i32 %1, ptr %7, align 8, !tbaa !44
  br label %60

30:                                               ; preds = %28, %2
  %31 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !44
  %33 = icmp sgt i32 %32, %1
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i32, ptr %31, align 8, !tbaa !44
  %36 = icmp sgt i32 %35, %1
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %39 = sext i32 %1 to i64
  br label %40

40:                                               ; preds = %37, %40
  %41 = phi i64 [ %39, %37 ], [ %44, %40 ]
  %42 = load ptr, ptr %38, align 8, !tbaa !49
  %43 = getelementptr inbounds %struct.IDProperty, ptr %42, i64 %41
  tail call void @IDP_FreeProperty(ptr noundef %43)
  %44 = add nsw i64 %41, 1
  %45 = load i32, ptr %31, align 8, !tbaa !44
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %40, label %48, !llvm.loop !65

48:                                               ; preds = %40, %34, %30
  %49 = ashr i32 %1, 3
  %50 = icmp slt i32 %1, 9
  %51 = select i1 %50, i32 3, i32 6
  %52 = add i32 %49, %1
  %53 = add i32 %52, %51
  %54 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !49
  %57 = sext i32 %53 to i64
  %58 = shl nsw i64 %57, 7
  %59 = tail call ptr %54(ptr noundef %56, i64 noundef %58, ptr noundef nonnull @__func__.IDP_ResizeIDPArray) #8
  store ptr %59, ptr %55, align 8, !tbaa !49
  store i32 %1, ptr %31, align 8, !tbaa !44
  store i32 %53, ptr %3, align 4, !tbaa !58
  br label %60

60:                                               ; preds = %48, %29, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_ResizeArray(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp sgt i32 %4, %1
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !58
  %8 = icmp sge i32 %7, %1
  %9 = sub nsw i32 %7, %1
  %10 = icmp slt i32 %9, 200
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %16 = load i8, ptr %15, align 1, !tbaa !57
  %17 = icmp eq i8 %16, 6
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  br i1 %5, label %34, label %19

19:                                               ; preds = %18
  %20 = icmp slt i32 %4, %1
  br i1 %20, label %21, label %46

21:                                               ; preds = %19
  %22 = sext i32 %4 to i64
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i64 [ %22, %21 ], [ %31, %23 ]
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = tail call ptr %25(i64 noundef 128, ptr noundef nonnull @.str.11) #8
  %27 = getelementptr inbounds %struct.IDProperty, ptr %26, i64 0, i32 2
  store i8 6, ptr %27, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.IDProperty, ptr %26, i64 0, i32 5
  %29 = tail call ptr @BLI_strncpy(ptr noundef nonnull %28, ptr noundef nonnull @.str.12, i64 noundef 64) #8
  %30 = getelementptr inbounds ptr, ptr %14, i64 %24
  store ptr %26, ptr %30, align 8, !tbaa !34
  %31 = add nsw i64 %24, 1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %46, label %23, !llvm.loop !61

34:                                               ; preds = %18
  %35 = sext i32 %1 to i64
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i64 [ %35, %34 ], [ %42, %36 ]
  %38 = getelementptr inbounds ptr, ptr %14, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  tail call void @IDP_FreeProperty(ptr noundef %39)
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %41 = load ptr, ptr %38, align 8, !tbaa !34
  tail call void %40(ptr noundef %41) #8
  %42 = add nsw i64 %37, 1
  %43 = load i32, ptr %3, align 8, !tbaa !44
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %36, label %46, !llvm.loop !62

46:                                               ; preds = %23, %36, %12, %19
  store i32 %1, ptr %3, align 8, !tbaa !44
  br label %118

47:                                               ; preds = %2
  %48 = ashr i32 %1, 3
  %49 = icmp slt i32 %1, 9
  %50 = select i1 %49, i32 3, i32 6
  %51 = add i32 %48, %1
  %52 = add i32 %51, %50
  br i1 %5, label %53, label %71

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !49
  %56 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !57
  %58 = icmp eq i8 %57, 6
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = sext i32 %1 to i64
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i64 [ %60, %59 ], [ %67, %61 ]
  %63 = getelementptr inbounds ptr, ptr %55, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  tail call void @IDP_FreeProperty(ptr noundef %64)
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %66 = load ptr, ptr %63, align 8, !tbaa !34
  tail call void %65(ptr noundef %66) #8
  %67 = add nsw i64 %62, 1
  %68 = load i32, ptr %3, align 8, !tbaa !44
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %61, label %71, !llvm.loop !62

71:                                               ; preds = %61, %53, %47
  %72 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %76 = load i8, ptr %75, align 1, !tbaa !57
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds [9 x i8], ptr @idp_size_table, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !46
  %80 = zext i8 %79 to i32
  %81 = mul nsw i32 %52, %80
  %82 = sext i32 %81 to i64
  %83 = tail call ptr %72(ptr noundef %74, i64 noundef %82, ptr noundef nonnull @__func__.IDP_ResizeArray) #8
  store ptr %83, ptr %73, align 8, !tbaa !49
  br i1 %5, label %117, label %84

84:                                               ; preds = %71
  %85 = load i8, ptr %75, align 1, !tbaa !57
  %86 = icmp eq i8 %85, 6
  br i1 %86, label %87, label %117

87:                                               ; preds = %84
  %88 = load i32, ptr %3, align 8, !tbaa !44
  %89 = icmp sgt i32 %88, %1
  br i1 %89, label %105, label %90

90:                                               ; preds = %87
  %91 = icmp slt i32 %88, %1
  br i1 %91, label %92, label %117

92:                                               ; preds = %90
  %93 = sext i32 %88 to i64
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i64 [ %93, %92 ], [ %102, %94 ]
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %97 = tail call ptr %96(i64 noundef 128, ptr noundef nonnull @.str.11) #8
  %98 = getelementptr inbounds %struct.IDProperty, ptr %97, i64 0, i32 2
  store i8 6, ptr %98, align 8, !tbaa !38
  %99 = getelementptr inbounds %struct.IDProperty, ptr %97, i64 0, i32 5
  %100 = tail call ptr @BLI_strncpy(ptr noundef nonnull %99, ptr noundef nonnull @.str.12, i64 noundef 64) #8
  %101 = getelementptr inbounds ptr, ptr %83, i64 %95
  store ptr %97, ptr %101, align 8, !tbaa !34
  %102 = add nsw i64 %95, 1
  %103 = trunc i64 %102 to i32
  %104 = icmp eq i32 %103, %1
  br i1 %104, label %117, label %94, !llvm.loop !61

105:                                              ; preds = %87
  %106 = sext i32 %1 to i64
  br label %107

107:                                              ; preds = %107, %105
  %108 = phi i64 [ %106, %105 ], [ %113, %107 ]
  %109 = getelementptr inbounds ptr, ptr %83, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !34
  tail call void @IDP_FreeProperty(ptr noundef %110)
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %112 = load ptr, ptr %109, align 8, !tbaa !34
  tail call void %111(ptr noundef %112) #8
  %113 = add nsw i64 %108, 1
  %114 = load i32, ptr %3, align 8, !tbaa !44
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %107, label %117, !llvm.loop !62

117:                                              ; preds = %94, %107, %90, %84, %71
  store i32 %1, ptr %3, align 8, !tbaa !44
  store i32 %52, ptr %6, align 4, !tbaa !58
  br label %118

118:                                              ; preds = %117, %46
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_FreeArray(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !57
  %8 = icmp eq i8 %7, 6
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = icmp slt i32 %11, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %13
  %16 = sext i32 %11 to i64
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i64 [ %16, %15 ], [ %25, %17 ]
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = tail call ptr %19(i64 noundef 128, ptr noundef nonnull @.str.11) #8
  %21 = getelementptr inbounds %struct.IDProperty, ptr %20, i64 0, i32 2
  store i8 6, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.IDProperty, ptr %20, i64 0, i32 5
  %23 = tail call ptr @BLI_strncpy(ptr noundef nonnull %22, ptr noundef nonnull @.str.12, i64 noundef 64) #8
  %24 = getelementptr inbounds ptr, ptr null, i64 %18
  store ptr poison, ptr %24, align 8, !tbaa !34
  %25 = add nsw i64 %18, 1
  %26 = and i64 %25, 4294967295
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %38, label %17, !llvm.loop !61

28:                                               ; preds = %9, %28
  %29 = phi i64 [ %34, %28 ], [ 0, %9 ]
  %30 = getelementptr inbounds ptr, ptr %3, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  tail call void @IDP_FreeProperty(ptr noundef %31)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %33 = load ptr, ptr %30, align 8, !tbaa !34
  tail call void %32(ptr noundef %33) #8
  %34 = add nuw nsw i64 %29, 1
  %35 = load i32, ptr %10, align 8, !tbaa !44
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %28, label %38, !llvm.loop !62

38:                                               ; preds = %17, %28, %5, %13
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %40 = load ptr, ptr %2, align 8, !tbaa !49
  tail call void %39(ptr noundef %40) #8
  br label %41

41:                                               ; preds = %38, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IDP_NewString(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 128, ptr noundef nonnull @.str.1) #8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 64, ptr noundef nonnull @.str.2) #8
  %10 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 7
  store ptr %9, ptr %10, align 8, !tbaa !49
  store i8 0, ptr %9, align 1, !tbaa !46
  %11 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 9
  store i32 64, ptr %11, align 4, !tbaa !58
  %12 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 8
  store i32 1, ptr %12, align 8, !tbaa !44
  br label %27

13:                                               ; preds = %3
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9
  %15 = trunc i64 %14 to i32
  %16 = add i32 %15, 1
  %17 = icmp sgt i32 %2, 0
  %18 = tail call i32 @llvm.smin.i32(i32 %16, i32 %2)
  %19 = select i1 %17, i32 %18, i32 %16
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %21 = sext i32 %19 to i64
  %22 = tail call ptr %20(i64 noundef %21, ptr noundef nonnull @.str.3) #8
  %23 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 7
  store ptr %22, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 9
  store i32 %19, ptr %24, align 4, !tbaa !58
  %25 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 8
  store i32 %19, ptr %25, align 8, !tbaa !44
  %26 = tail call ptr @BLI_strncpy(ptr noundef %22, ptr noundef nonnull %0, i64 noundef %21) #8
  br label %27

27:                                               ; preds = %13, %7
  %28 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 2
  store i8 0, ptr %28, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 5
  %30 = tail call ptr @BLI_strncpy(ptr noundef nonnull %29, ptr noundef %1, i64 noundef 64) #8
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @IDP_AssignString(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %2, 0
  %7 = tail call i32 @llvm.smin.i32(i32 %5, i32 %2)
  %8 = select i1 %6, i32 %7, i32 %5
  %9 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !57
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  tail call void @IDP_ResizeArray(ptr noundef %0, i32 noundef %8)
  %13 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = sext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %15, i1 false)
  br label %22

16:                                               ; preds = %3
  %17 = add nsw i32 %8, 1
  tail call void @IDP_ResizeArray(ptr noundef %0, i32 noundef %17)
  %18 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = sext i32 %17 to i64
  %21 = tail call ptr @BLI_strncpy(ptr noundef %19, ptr noundef %1, i64 noundef %20) #8
  br label %22

22:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_ConcatStringC(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %6 = trunc i64 %5 to i32
  %7 = add i32 %4, %6
  tail call void @IDP_ResizeArray(ptr noundef %0, i32 noundef %7)
  %8 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @IDP_ConcatString(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = add i32 %4, -1
  %8 = add i32 %7, %6
  tail call void @IDP_ResizeArray(ptr noundef %0, i32 noundef %8)
  %9 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %12) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_FreeString(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #8
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_LinkID(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !66
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %7, align 4, !tbaa !66
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !49
  tail call void @id_us_plus(ptr noundef %1) #8
  ret void
}

declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IDP_UnlinkID(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 4, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_SyncGroupValues(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  br label %8

8:                                                ; preds = %6, %27
  %9 = phi ptr [ %4, %6 ], [ %28, %27 ]
  %10 = getelementptr inbounds %struct.IDProperty, ptr %9, i64 0, i32 5
  %11 = tail call ptr @BLI_findstring(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 20) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.IDProperty, ptr %9, i64 0, i32 2
  %15 = load i8, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 0, i32 2
  %17 = load i8, ptr %16, align 8, !tbaa !38
  %18 = icmp eq i8 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  switch i8 %15, label %24 [
    i8 1, label %20
    i8 2, label %20
    i8 8, label %20
    i8 6, label %23
  ]

20:                                               ; preds = %19, %19, %19
  %21 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 0, i32 7
  %22 = getelementptr inbounds %struct.IDProperty, ptr %9, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %22, i64 32, i1 false), !tbaa.struct !68
  br label %27

23:                                               ; preds = %19
  tail call void @IDP_SyncGroupValues(ptr noundef nonnull %11, ptr noundef nonnull %9)
  br label %27

24:                                               ; preds = %19
  %25 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %9)
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef %25) #8
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %11) #8
  tail call void @IDP_FreeProperty(ptr noundef nonnull %11)
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %11) #8
  br label %27

27:                                               ; preds = %8, %13, %24, %23, %20
  %28 = load ptr, ptr %9, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %8, !llvm.loop !69

30:                                               ; preds = %27, %2
  ret void
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @IDP_SyncGroupTypes(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 1
  %9 = icmp eq i8 %2, 0
  %10 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  br label %12

12:                                               ; preds = %7, %52
  %13 = phi ptr [ %5, %7 ], [ %14, %52 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.IDProperty, ptr %13, i64 0, i32 5
  %16 = tail call ptr @BLI_findstring(ptr noundef nonnull %8, ptr noundef nonnull %15, i32 noundef 20) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.IDProperty, ptr %13, i64 0, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.IDProperty, ptr %16, i64 0, i32 2
  %22 = load i8, ptr %21, align 8, !tbaa !38
  %23 = icmp eq i8 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.IDProperty, ptr %13, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !57
  %27 = getelementptr inbounds %struct.IDProperty, ptr %16, i64 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !57
  %29 = icmp eq i8 %26, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  br i1 %9, label %45, label %31

31:                                               ; preds = %30
  switch i8 %20, label %52 [
    i8 5, label %32
    i8 9, label %32
    i8 6, label %47
  ]

32:                                               ; preds = %31, %31
  %33 = getelementptr inbounds %struct.IDProperty, ptr %16, i64 0, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.IDProperty, ptr %13, i64 0, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !44
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %32, %24, %18
  %39 = load i32, ptr %10, align 8, !tbaa !44
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr %10, align 8, !tbaa !44
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %13) #8
  tail call void @IDP_FreeProperty(ptr noundef nonnull %13)
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %41(ptr noundef nonnull %13) #8
  %42 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %16)
  %43 = load i32, ptr %10, align 8, !tbaa !44
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %10, align 8, !tbaa !44
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef %14, ptr noundef %42) #8
  br label %52

45:                                               ; preds = %32, %30
  %46 = icmp eq i8 %20, 6
  br i1 %46, label %47, label %52

47:                                               ; preds = %31, %45
  tail call void @IDP_SyncGroupTypes(ptr noundef nonnull %13, ptr noundef nonnull %16, i8 noundef zeroext %2)
  br label %52

48:                                               ; preds = %12
  %49 = load i32, ptr %11, align 8, !tbaa !44
  %50 = add nsw i32 %49, -1
  store i32 %50, ptr %11, align 8, !tbaa !44
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %13) #8
  tail call void @IDP_FreeProperty(ptr noundef nonnull %13)
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %51(ptr noundef nonnull %13) #8
  br label %52

52:                                               ; preds = %31, %48, %45, %47, %38
  %53 = icmp eq ptr %14, null
  br i1 %53, label %54, label %12, !llvm.loop !72

54:                                               ; preds = %52, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IDP_GetPropertyFromGroup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 20) #8
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_FreeFromGroup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %1) #8
  tail call void @IDP_FreeProperty(ptr noundef %1)
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %7(ptr noundef %1) #8
  ret void
}

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @IDP_ReplaceGroupInGroup(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %8 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  br label %9

9:                                                ; preds = %6, %27
  %10 = phi ptr [ %4, %6 ], [ %28, %27 ]
  %11 = getelementptr inbounds %struct.IDProperty, ptr %10, i64 0, i32 5
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %7, %9 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 5
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %11) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12, !llvm.loop !73

20:                                               ; preds = %16
  %21 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %10)
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef %21) #8
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %14) #8
  tail call void @IDP_FreeProperty(ptr noundef nonnull %14)
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %14) #8
  br label %27

23:                                               ; preds = %12
  %24 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %10)
  %25 = load i32, ptr %8, align 8, !tbaa !44
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %8, align 8, !tbaa !44
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %24) #8
  br label %27

27:                                               ; preds = %20, %23
  %28 = load ptr, ptr %10, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %9, !llvm.loop !74

30:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @IDP_ReplaceInGroup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %5 = tail call ptr @BLI_findstring(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 20) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %1) #8
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  tail call void @IDP_FreeProperty(ptr noundef nonnull %5)
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %5) #8
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !44
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %1) #8
  br label %13

13:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_MergeGroup(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  %5 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %4, label %26, label %8

8:                                                ; preds = %3
  br i1 %7, label %42, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %11 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  br label %12

12:                                               ; preds = %9, %23
  %13 = phi ptr [ %6, %9 ], [ %24, %23 ]
  %14 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %13)
  %15 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 5
  %16 = tail call ptr @BLI_findstring(ptr noundef nonnull %10, ptr noundef nonnull %15, i32 noundef 20) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %16, ptr noundef %14) #8
  tail call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %16) #8
  tail call void @IDP_FreeProperty(ptr noundef nonnull %16)
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %16) #8
  br label %23

20:                                               ; preds = %12
  %21 = load i32, ptr %11, align 8, !tbaa !44
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %11, align 8, !tbaa !44
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %14) #8
  br label %23

23:                                               ; preds = %18, %20
  %24 = load ptr, ptr %13, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %12, !llvm.loop !75

26:                                               ; preds = %3
  br i1 %7, label %42, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %29 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  br label %30

30:                                               ; preds = %27, %39
  %31 = phi ptr [ %6, %27 ], [ %40, %39 ]
  %32 = getelementptr inbounds %struct.IDProperty, ptr %31, i64 0, i32 5
  %33 = tail call ptr @BLI_findstring(ptr noundef nonnull %28, ptr noundef nonnull %32, i32 noundef 20) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %31)
  %37 = load i32, ptr %29, align 8, !tbaa !44
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %29, align 8, !tbaa !44
  tail call void @BLI_addtail(ptr noundef nonnull %28, ptr noundef %36) #8
  br label %39

39:                                               ; preds = %30, %35
  %40 = load ptr, ptr %31, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30, !llvm.loop !76

42:                                               ; preds = %23, %39, %8, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @IDP_AddToGroup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %5 = tail call ptr @BLI_findstring(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 20) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !44
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %1) #8
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi i8 [ 1, %7 ], [ 0, %2 ]
  ret i8 %12
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @IDP_InsertToGroup(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 5
  %5 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %6 = tail call ptr @BLI_findstring(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 20) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !44
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #8
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi i8 [ 1, %8 ], [ 0, %3 ]
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_RemoveFromGroup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IDP_GetPropertyTypeFromGroup(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %5 = tail call ptr @BLI_findstring(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 20) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i8 %9, %2
  %11 = select i1 %10, ptr %5, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @IDP_GetGroupIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 16, ptr noundef nonnull @.str.4) #8
  %4 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  store ptr %5, ptr %3, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.IDPIter, ptr %3, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IDP_GroupIterNext(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !77
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef nonnull %0) #8
  br label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !80
  store ptr %7, ptr %0, align 8, !tbaa !77
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ null, %4 ], [ %2, %6 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_FreeIterBeforeEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IDP_GetProperties(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 128, ptr noundef nonnull @.str.5) #8
  store ptr %10, ptr %3, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.IDProperty, ptr %10, i64 0, i32 2
  store i8 6, ptr %11, align 8, !tbaa !38
  br label %12

12:                                               ; preds = %8, %6
  %13 = load ptr, ptr %3, align 8, !tbaa !82
  br label %14

14:                                               ; preds = %2, %12
  %15 = phi ptr [ %13, %12 ], [ %4, %2 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @IDP_EqualsProperties_ex(ptr noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %124, label %7

7:                                                ; preds = %3
  %8 = or i1 %4, %5
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = icmp eq i8 %2, 0
  %11 = zext i1 %10 to i8
  br label %124

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %14 = load i8, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !38
  %17 = icmp eq i8 %14, %16
  br i1 %17, label %18, label %124

18:                                               ; preds = %12
  switch i8 %14, label %124 [
    i8 1, label %19
    i8 2, label %26
    i8 8, label %33
    i8 0, label %40
    i8 5, label %55
    i8 6, label %80
    i8 9, label %100
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !54
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i8
  br label %124

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 2
  %28 = load float, ptr %27, align 8, !tbaa !83
  %29 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 2
  %30 = load float, ptr %29, align 8, !tbaa !83
  %31 = fcmp oeq float %28, %30
  %32 = zext i1 %31 to i8
  br label %124

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 2
  %35 = load double, ptr %34, align 8, !tbaa !85
  %36 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 2
  %37 = load double, ptr %36, align 8, !tbaa !85
  %38 = fcmp oeq double %35, %37
  %39 = zext i1 %38 to i8
  br label %124

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %44 = load i32, ptr %43, align 8, !tbaa !44
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %124

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  %49 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = sext i32 %42 to i64
  %52 = tail call i32 @strncmp(ptr noundef %48, ptr noundef %50, i64 noundef %51) #9
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i8
  br label %124

55:                                               ; preds = %18
  %56 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %57 = load i32, ptr %56, align 8, !tbaa !44
  %58 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %59 = load i32, ptr %58, align 8, !tbaa !44
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %124

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !57
  %64 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 3
  %65 = load i8, ptr %64, align 1, !tbaa !57
  %66 = icmp eq i8 %63, %65
  br i1 %66, label %67, label %124

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !49
  %70 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  %72 = zext i8 %63 to i64
  %73 = getelementptr inbounds [9 x i8], ptr @idp_size_table, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !46
  %75 = zext i8 %74 to i32
  %76 = mul nsw i32 %57, %75
  %77 = sext i32 %76 to i64
  %78 = tail call i32 @memcmp(ptr noundef %69, ptr noundef %71, i64 noundef %77) #9
  %79 = trunc i32 %78 to i8
  br label %124

80:                                               ; preds = %18
  %81 = icmp eq i8 %2, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %84 = load i32, ptr %83, align 8, !tbaa !44
  %85 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %86 = load i32, ptr %85, align 8, !tbaa !44
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %124

88:                                               ; preds = %82, %80
  %89 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %90 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 1
  br label %91

91:                                               ; preds = %95, %88
  %92 = phi ptr [ %89, %88 ], [ %93, %95 ]
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  %94 = icmp eq ptr %93, null
  br i1 %94, label %124, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.IDProperty, ptr %93, i64 0, i32 5
  %97 = tail call ptr @BLI_findstring(ptr noundef nonnull %90, ptr noundef nonnull %96, i32 noundef 20) #8
  %98 = tail call zeroext i8 @IDP_EqualsProperties_ex(ptr noundef nonnull %93, ptr noundef %97, i8 noundef zeroext %2)
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %124, label %91, !llvm.loop !87

100:                                              ; preds = %18
  %101 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !49
  %103 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !49
  %105 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %106 = load i32, ptr %105, align 8, !tbaa !44
  %107 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %108 = load i32, ptr %107, align 8, !tbaa !44
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %100
  %111 = load i32, ptr %105, align 8, !tbaa !44
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %118, label %124

113:                                              ; preds = %118
  %114 = add nuw nsw i64 %119, 1
  %115 = load i32, ptr %105, align 8, !tbaa !44
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %118, label %124, !llvm.loop !88

118:                                              ; preds = %110, %113
  %119 = phi i64 [ %114, %113 ], [ 0, %110 ]
  %120 = getelementptr inbounds %struct.IDProperty, ptr %102, i64 %119
  %121 = getelementptr inbounds %struct.IDProperty, ptr %104, i64 %119
  %122 = tail call zeroext i8 @IDP_EqualsProperties_ex(ptr noundef %120, ptr noundef %121, i8 noundef zeroext 1)
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %113

124:                                              ; preds = %113, %118, %95, %91, %110, %18, %100, %82, %55, %61, %40, %46, %12, %3, %67, %33, %26, %19, %9
  %125 = phi i8 [ %11, %9 ], [ %79, %67 ], [ %39, %33 ], [ %32, %26 ], [ %25, %19 ], [ 1, %3 ], [ 0, %12 ], [ 0, %40 ], [ %54, %46 ], [ 0, %61 ], [ 0, %55 ], [ 0, %82 ], [ 0, %100 ], [ 1, %18 ], [ 1, %110 ], [ 0, %95 ], [ 1, %91 ], [ 0, %118 ], [ 1, %113 ]
  ret i8 %125
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @IDP_EqualsProperties(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @IDP_EqualsProperties_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IDP_New(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  switch i32 %0, label %97 [
    i32 1, label %4
    i32 2, label %9
    i32 8, label %14
    i32 5, label %19
    i32 0, label %46
    i32 6, label %94
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 128, ptr noundef nonnull @.str.6) #8
  %7 = load i32, ptr %1, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !54
  br label %100

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 128, ptr noundef nonnull @.str.7) #8
  %12 = load float, ptr %1, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 0, i32 7, i32 2
  store float %12, ptr %13, align 8, !tbaa !83
  br label %100

14:                                               ; preds = %3
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 128, ptr noundef nonnull @.str.7) #8
  %17 = load double, ptr %1, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.IDProperty, ptr %16, i64 0, i32 7, i32 2
  store double %17, ptr %18, align 8, !tbaa !85
  br label %100

19:                                               ; preds = %3
  %20 = load i16, ptr %1, align 8, !tbaa !46
  switch i16 %20, label %106 [
    i16 2, label %21
    i16 1, label %21
    i16 8, label %21
    i16 6, label %21
  ]

21:                                               ; preds = %19, %19, %19, %19
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 128, ptr noundef nonnull @.str.8) #8
  %24 = load i16, ptr %1, align 8, !tbaa !46
  %25 = trunc i16 %24 to i8
  %26 = getelementptr inbounds %struct.IDProperty, ptr %23, i64 0, i32 3
  store i8 %25, ptr %26, align 1, !tbaa !57
  %27 = getelementptr inbounds %struct.anon.0, ptr %1, i64 0, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !46
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %21
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = load i16, ptr %1, align 8, !tbaa !46
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds [9 x i8], ptr @idp_size_table, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !46
  %36 = zext i8 %35 to i64
  %37 = sext i16 %28 to i64
  %38 = mul nsw i64 %36, %37
  %39 = tail call ptr %31(i64 noundef %38, ptr noundef nonnull @.str.9) #8
  %40 = getelementptr inbounds %struct.IDProperty, ptr %23, i64 0, i32 7
  store ptr %39, ptr %40, align 8, !tbaa !49
  br label %41

41:                                               ; preds = %30, %21
  %42 = load i16, ptr %27, align 2, !tbaa !46
  %43 = sext i16 %42 to i32
  %44 = getelementptr inbounds %struct.IDProperty, ptr %23, i64 0, i32 9
  store i32 %43, ptr %44, align 4, !tbaa !58
  %45 = getelementptr inbounds %struct.IDProperty, ptr %23, i64 0, i32 8
  store i32 %43, ptr %45, align 8, !tbaa !44
  br label %100

46:                                               ; preds = %3
  %47 = load ptr, ptr %1, align 8, !tbaa !46
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %49 = tail call ptr %48(i64 noundef 128, ptr noundef nonnull @.str.1) #8
  %50 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %51 = load i8, ptr %50, align 2, !tbaa !46
  %52 = icmp eq i8 %51, 1
  %53 = icmp eq ptr %47, null
  br i1 %52, label %54, label %75

54:                                               ; preds = %46
  %55 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  br i1 %53, label %56, label %61

56:                                               ; preds = %54
  %57 = tail call ptr %55(i64 noundef 64, ptr noundef nonnull @.str.2) #8
  %58 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 7
  store ptr %57, ptr %58, align 8, !tbaa !49
  store i8 0, ptr %57, align 1, !tbaa !46
  %59 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 9
  store i32 64, ptr %59, align 4, !tbaa !58
  %60 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 8
  store i32 0, ptr %60, align 8, !tbaa !44
  br label %73

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 1
  %63 = load i16, ptr %62, align 8, !tbaa !46
  %64 = sext i16 %63 to i64
  %65 = tail call ptr %55(i64 noundef %64, ptr noundef nonnull @.str.3) #8
  %66 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 7
  store ptr %65, ptr %66, align 8, !tbaa !49
  %67 = load i16, ptr %62, align 8, !tbaa !46
  %68 = sext i16 %67 to i32
  %69 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 9
  store i32 %68, ptr %69, align 4, !tbaa !58
  %70 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 8
  store i32 %68, ptr %70, align 8, !tbaa !44
  %71 = load i16, ptr %62, align 8, !tbaa !46
  %72 = sext i16 %71 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr nonnull align 1 %47, i64 %72, i1 false)
  br label %73

73:                                               ; preds = %61, %56
  %74 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 3
  store i8 1, ptr %74, align 1, !tbaa !57
  br label %100

75:                                               ; preds = %46
  br i1 %53, label %76, label %82

76:                                               ; preds = %75
  %77 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %78 = tail call ptr %77(i64 noundef 64, ptr noundef nonnull @.str.2) #8
  %79 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 7
  store ptr %78, ptr %79, align 8, !tbaa !49
  store i8 0, ptr %78, align 1, !tbaa !46
  %80 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 9
  store i32 64, ptr %80, align 4, !tbaa !58
  %81 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 8
  store i32 1, ptr %81, align 8, !tbaa !44
  br label %92

82:                                               ; preds = %75
  %83 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %47) #9
  %84 = trunc i64 %83 to i32
  %85 = add i32 %84, 1
  %86 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %87 = sext i32 %85 to i64
  %88 = tail call ptr %86(i64 noundef %87, ptr noundef nonnull @.str.10) #8
  %89 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 7
  store ptr %88, ptr %89, align 8, !tbaa !49
  %90 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 9
  store i32 %85, ptr %90, align 4, !tbaa !58
  %91 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 8
  store i32 %85, ptr %91, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %88, ptr nonnull align 1 %47, i64 %87, i1 false)
  br label %92

92:                                               ; preds = %82, %76
  %93 = getelementptr inbounds %struct.IDProperty, ptr %49, i64 0, i32 3
  store i8 0, ptr %93, align 1, !tbaa !57
  br label %100

94:                                               ; preds = %3
  %95 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %96 = tail call ptr %95(i64 noundef 128, ptr noundef nonnull @.str.11) #8
  br label %100

97:                                               ; preds = %3
  %98 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %99 = tail call ptr %98(i64 noundef 128, ptr noundef nonnull @.str.8) #8
  br label %100

100:                                              ; preds = %73, %92, %97, %94, %41, %14, %9, %4
  %101 = phi ptr [ %99, %97 ], [ %96, %94 ], [ %23, %41 ], [ %16, %14 ], [ %11, %9 ], [ %6, %4 ], [ %49, %92 ], [ %49, %73 ]
  %102 = trunc i32 %0 to i8
  %103 = getelementptr inbounds %struct.IDProperty, ptr %101, i64 0, i32 2
  store i8 %102, ptr %103, align 8, !tbaa !38
  %104 = getelementptr inbounds %struct.IDProperty, ptr %101, i64 0, i32 5
  %105 = tail call ptr @BLI_strncpy(ptr noundef nonnull %104, ptr noundef %2, i64 noundef 64) #8
  br label %106

106:                                              ; preds = %19, %100
  %107 = phi ptr [ %101, %100 ], [ null, %19 ]
  ret ptr %107
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_ClearProperty(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @IDP_FreeProperty(ptr noundef %0)
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  store ptr null, ptr %2, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 9
  store i32 0, ptr %3, align 4, !tbaa !58
  %4 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  store i32 0, ptr %4, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IDP_UnlinkProperty(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i8 %3, 7
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !66
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4, !tbaa !66
  br label %11

11:                                               ; preds = %1, %5
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !36, i64 16}
!39 = !{!"IDProperty", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 17, !40, i64 18, !36, i64 20, !41, i64 84, !42, i64 88, !41, i64 120, !41, i64 124}
!40 = !{!"short", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"IDPropertyData", !35, i64 0, !43, i64 8, !41, i64 24, !41, i64 28}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!39, !41, i64 120}
!45 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 1, !46, i64 17, i64 1, !46, i64 18, i64 2, !47, i64 20, i64 64, !46, i64 84, i64 4, !48, i64 88, i64 8, !34, i64 96, i64 8, !34, i64 104, i64 8, !34, i64 112, i64 4, !48, i64 116, i64 4, !48, i64 120, i64 4, !48, i64 124, i64 4, !48}
!46 = !{!36, !36, i64 0}
!47 = !{!40, !40, i64 0}
!48 = !{!41, !41, i64 0}
!49 = !{!39, !35, i64 88}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!39, !40, i64 18}
!54 = !{!39, !41, i64 112}
!55 = !{!39, !41, i64 116}
!56 = distinct !{!56, !51, !52}
!57 = !{!39, !36, i64 17}
!58 = !{!39, !41, i64 124}
!59 = distinct !{!59, !51, !52}
!60 = distinct !{!60, !51, !52}
!61 = distinct !{!61, !51, !52}
!62 = distinct !{!62, !51, !52}
!63 = distinct !{!63, !51, !52}
!64 = distinct !{!64, !51, !52}
!65 = distinct !{!65, !51, !52}
!66 = !{!67, !41, i64 100}
!67 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!68 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 4, !48, i64 28, i64 4, !48}
!69 = distinct !{!69, !51, !52}
!70 = !{!39, !35, i64 96}
!71 = !{!39, !35, i64 0}
!72 = distinct !{!72, !51, !52}
!73 = distinct !{!73, !51, !52}
!74 = distinct !{!74, !51, !52}
!75 = distinct !{!75, !51, !52}
!76 = distinct !{!76, !51, !52}
!77 = !{!78, !35, i64 0}
!78 = !{!"IDPIter", !35, i64 0, !35, i64 8}
!79 = !{!78, !35, i64 8}
!80 = !{!81, !35, i64 0}
!81 = !{!"Link", !35, i64 0, !35, i64 8}
!82 = !{!67, !35, i64 112}
!83 = !{!84, !84, i64 0}
!84 = !{!"float", !36, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"double", !36, i64 0}
!87 = distinct !{!87, !51, !52}
!88 = distinct !{!88, !51, !52}
