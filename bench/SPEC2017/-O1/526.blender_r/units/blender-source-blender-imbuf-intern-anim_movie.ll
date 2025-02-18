; ModuleID = 'blender/source/blender/imbuf/intern/anim_movie.c'
source_filename = "blender/source/blender/imbuf/intern/anim_movie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anim = type { i32, i32, i32, i32, i16, float, i32, i32, [1024 x i8], [1024 x i8], ptr, ptr, ptr, i32, i64, i32, i32, i32, ptr, [768 x i8], i32, i32, [4 x ptr], [4 x ptr], [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"anim struct\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s.%04d\00", align 1
@str = private unnamed_addr constant [24 x i8] c"free anim, anim == NULL\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @ismovie(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_free_anim(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %7

5:                                                ; preds = %1
  tail call void @IMB_free_indices(ptr noundef nonnull %0) #12
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %0) #12
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

declare void @IMB_free_indices(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IMB_close_anim(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  tail call void @IMB_free_indices(ptr noundef nonnull %0) #12
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %4(ptr noundef nonnull %0) #12
  br label %5

5:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_close_anim_proxies(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @IMB_free_indices(ptr noundef nonnull %0) #12
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_open_anim(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 3048, ptr noundef nonnull @.str.1) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  tail call void @colorspace_set_default_role(ptr noundef nonnull %3, i32 noundef 64, i32 noundef 4) #12
  %11 = getelementptr inbounds %struct.anim, ptr %6, i64 0, i32 24
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef nonnull %3, i64 noundef 64) #12
  br label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.anim, ptr %6, i64 0, i32 24
  tail call void @colorspace_set_default_role(ptr noundef nonnull %14, i32 noundef 64, i32 noundef 4) #12
  br label %15

15:                                               ; preds = %13, %10
  %16 = getelementptr inbounds %struct.anim, ptr %6, i64 0, i32 8
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef %0, i64 noundef 1024) #12
  store i32 %1, ptr %6, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.anim, ptr %6, i64 0, i32 17
  store i32 %2, ptr %18, align 8, !tbaa !44
  br label %19

19:                                               ; preds = %15, %4
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_anim_previewframe(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @IMB_anim_absolute(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  tail call void @IMB_freeImBuf(ptr noundef nonnull %2) #12
  %5 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !45
  %7 = sdiv i32 %6, 2
  %8 = tail call ptr @IMB_anim_absolute(ptr noundef %0, i32 noundef %7, i32 noundef 0, i32 noundef 0)
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi ptr [ %8, %4 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_anim_absolute(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #12
  %7 = icmp eq ptr %0, null
  br i1 %7, label %134, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8, !tbaa !38
  %10 = and i32 %9, 512
  %11 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 8
  %16 = tail call i32 @imb_get_anim_type(ptr noundef nonnull %15) #12
  store i32 %16, ptr %11, align 4, !tbaa !46
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, ptr %0, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 24
  %21 = tail call ptr @IMB_loadiffname(ptr noundef nonnull %15, i32 noundef %19, ptr noundef nonnull %20) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 9
  %25 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef nonnull %15, i64 noundef 1024) #12
  %26 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 3
  store i32 1, ptr %26, align 4, !tbaa !45
  br label %27

27:                                               ; preds = %14, %18, %23
  %28 = phi ptr [ %21, %23 ], [ null, %18 ], [ null, %14 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %134, label %30

30:                                               ; preds = %27
  tail call void @IMB_freeImBuf(ptr noundef nonnull %28) #12
  br label %31

31:                                               ; preds = %30, %8
  %32 = icmp slt i32 %1, 0
  br i1 %32, label %134, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !45
  %36 = icmp sgt i32 %35, %1
  br i1 %36, label %37, label %134

37:                                               ; preds = %33
  %38 = icmp eq i32 %3, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  %40 = tail call ptr @IMB_anim_open_proxy(ptr noundef nonnull %0, i32 noundef %3) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @IMB_anim_index_get_frame_index(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1) #12
  %44 = tail call ptr @IMB_anim_absolute(ptr noundef nonnull %40, i32 noundef %43, i32 noundef 0, i32 noundef 0)
  br label %45

45:                                               ; preds = %39, %42
  %46 = phi i32 [ %43, %42 ], [ %1, %39 ]
  %47 = phi ptr [ %44, %42 ], [ undef, %39 ]
  br i1 %41, label %48, label %134

48:                                               ; preds = %45, %37
  %49 = phi i32 [ %46, %45 ], [ %1, %37 ]
  %50 = load i32, ptr %11, align 4, !tbaa !46
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %121

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 9
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #13
  %55 = trunc i64 %54 to i16
  %56 = add i16 %55, -1
  %57 = icmp sgt i16 %56, -1
  br i1 %57, label %58, label %90

58:                                               ; preds = %52, %79
  %59 = phi i16 [ %83, %79 ], [ %56, %52 ]
  %60 = phi i8 [ %82, %79 ], [ 0, %52 ]
  %61 = phi i16 [ %81, %79 ], [ 0, %52 ]
  %62 = phi i16 [ %80, %79 ], [ %55, %52 ]
  %63 = zext nneg i16 %59 to i64
  %64 = getelementptr inbounds i8, ptr %53, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !47
  %66 = icmp eq i8 %65, 47
  br i1 %66, label %85, label %67

67:                                               ; preds = %58
  %68 = tail call ptr @__ctype_b_loc() #14
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = zext i8 %65 to i64
  %71 = getelementptr inbounds i16, ptr %69, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !48
  %73 = and i16 %72, 2048
  %74 = icmp eq i16 %73, 0
  %75 = icmp eq i8 %60, 0
  br i1 %74, label %78, label %76

76:                                               ; preds = %67
  %77 = select i1 %75, i16 %59, i16 %62
  br label %79

78:                                               ; preds = %67
  br i1 %75, label %79, label %94

79:                                               ; preds = %78, %76
  %80 = phi i16 [ %62, %78 ], [ %77, %76 ]
  %81 = phi i16 [ %61, %78 ], [ %59, %76 ]
  %82 = phi i8 [ 0, %78 ], [ 1, %76 ]
  %83 = add nsw i16 %59, -1
  %84 = icmp sgt i16 %59, 0
  br i1 %84, label %58, label %85, !llvm.loop !49

85:                                               ; preds = %58, %79
  %86 = phi i16 [ %80, %79 ], [ %62, %58 ]
  %87 = phi i16 [ %81, %79 ], [ %61, %58 ]
  %88 = phi i8 [ %82, %79 ], [ %60, %58 ]
  %89 = icmp eq i8 %88, 0
  br label %90

90:                                               ; preds = %85, %52
  %91 = phi i16 [ %55, %52 ], [ %86, %85 ]
  %92 = phi i16 [ 0, %52 ], [ %87, %85 ]
  %93 = phi i1 [ true, %52 ], [ %89, %85 ]
  br i1 %93, label %109, label %94

94:                                               ; preds = %78, %90
  %95 = phi i16 [ %91, %90 ], [ %62, %78 ]
  %96 = phi i16 [ %92, %90 ], [ %61, %78 ]
  %97 = zext i16 %95 to i64
  %98 = getelementptr i8, ptr %53, i64 %97
  %99 = getelementptr i8, ptr %98, i64 1
  %100 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %99) #12
  %101 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %53) #12
  %102 = zext i16 %96 to i64
  %103 = getelementptr inbounds i8, ptr %5, i64 %102
  store i8 0, ptr %103, align 1, !tbaa !47
  %104 = add i16 %95, 1
  %105 = sub i16 %104, %96
  %106 = getelementptr inbounds i8, ptr %53, i64 %102
  %107 = call i64 @strtol(ptr nocapture noundef nonnull %106, ptr noundef null, i32 noundef 10) #12
  %108 = trunc i64 %107 to i32
  br label %111

109:                                              ; preds = %90
  store i8 0, ptr %6, align 16, !tbaa !47
  %110 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %53) #12
  br label %111

111:                                              ; preds = %94, %109
  %112 = phi i16 [ 0, %109 ], [ %105, %94 ]
  %113 = phi i32 [ 1, %109 ], [ %108, %94 ]
  %114 = add nsw i32 %113, %49
  %115 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 8
  call void @BLI_stringenc(ptr noundef nonnull %115, ptr noundef nonnull %5, ptr noundef nonnull %6, i16 noundef zeroext %112, i32 noundef %114) #12
  %116 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 24
  %117 = call ptr @IMB_loadiffname(ptr noundef nonnull %115, i32 noundef 1, ptr noundef nonnull %116) #12
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 2
  store i32 %49, ptr %120, align 8, !tbaa !52
  br label %121

121:                                              ; preds = %48, %111, %119
  %122 = phi ptr [ %117, %119 ], [ null, %111 ], [ null, %48 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %134, label %124

124:                                              ; preds = %121
  %125 = icmp eq i32 %10, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %124
  call void @IMB_filtery(ptr noundef nonnull %122) #12
  br label %127

127:                                              ; preds = %126, %124
  %128 = getelementptr inbounds %struct.ImBuf, ptr %122, i64 0, i32 27
  %129 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 8
  %130 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 2
  %131 = load i32, ptr %130, align 8, !tbaa !52
  %132 = add nsw i32 %131, 1
  %133 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %128, i64 noundef 1024, ptr noundef nonnull @.str.2, ptr noundef nonnull %129, i32 noundef %132) #12
  br label %134

134:                                              ; preds = %121, %127, %33, %31, %27, %4, %45
  %135 = phi ptr [ %47, %45 ], [ null, %4 ], [ null, %27 ], [ null, %31 ], [ null, %33 ], [ %122, %127 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #12
  ret ptr %135
}

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

declare ptr @IMB_anim_open_proxy(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IMB_anim_index_get_frame_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @IMB_loadiffname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_filtery(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @IMB_anim_get_duration(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !45
  br label %15

7:                                                ; preds = %2
  %8 = tail call ptr @IMB_anim_open_index(ptr noundef %0, i32 noundef %1) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !45
  br label %15

13:                                               ; preds = %7
  %14 = tail call i32 @IMB_indexer_get_duration(ptr noundef nonnull %8) #12
  br label %15

15:                                               ; preds = %13, %10, %4
  %16 = phi i32 [ %6, %4 ], [ %14, %13 ], [ %12, %10 ]
  ret i32 %16
}

declare ptr @IMB_anim_open_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IMB_indexer_get_duration(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @IMB_anim_get_fps(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !53
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  store i16 %5, ptr %1, align 2, !tbaa !48
  %8 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 5
  %9 = load float, ptr %8, align 4, !tbaa !54
  store float %9, ptr %2, align 4, !tbaa !55
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IMB_anim_set_preseek(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 16
  store i32 %1, ptr %3, align 4, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @IMB_anim_get_preseek(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.anim, ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 4, !tbaa !56
  ret i32 %3
}

declare i32 @imb_get_anim_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

declare void @BLI_stringenc(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }

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
!38 = !{!39, !40, i64 0}
!39 = !{!"anim", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !42, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 1056, !35, i64 2080, !35, i64 2088, !35, i64 2096, !40, i64 2104, !43, i64 2112, !40, i64 2120, !40, i64 2124, !40, i64 2128, !35, i64 2136, !36, i64 2144, !40, i64 2912, !40, i64 2916, !36, i64 2920, !36, i64 2952, !36, i64 2984}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"float", !36, i64 0}
!43 = !{!"long", !36, i64 0}
!44 = !{!39, !40, i64 2128}
!45 = !{!39, !40, i64 12}
!46 = !{!39, !40, i64 4}
!47 = !{!36, !36, i64 0}
!48 = !{!41, !41, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!39, !40, i64 8}
!53 = !{!39, !41, i64 16}
!54 = !{!39, !42, i64 20}
!55 = !{!42, !42, i64 0}
!56 = !{!39, !40, i64 2124}
