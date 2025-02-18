; ModuleID = 'blender/source/blender/blenfont/intern/blf_dir.c'
source_filename = "blender/source/blender/blenfont/intern/blf_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.DirBLF = type { ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"BLF_dir_add\00", align 1
@global_font_dir = internal global %struct.ListBase zeroinitializer, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"BLF_dir_get\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BLF_dir_add(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_font_dir, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DirBLF, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2, !llvm.loop !40

11:                                               ; preds = %6
  br i1 %5, label %12, label %17

12:                                               ; preds = %2, %11
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 24, ptr noundef nonnull @.str) #5
  %15 = tail call ptr @BLI_strdup(ptr noundef %0) #5
  %16 = getelementptr inbounds %struct.DirBLF, ptr %14, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !38
  tail call void @BLI_addhead(ptr noundef nonnull @global_font_dir, ptr noundef %14) #5
  br label %17

17:                                               ; preds = %11, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BLF_dir_rem(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @global_font_dir, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DirBLF, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2, !llvm.loop !40

11:                                               ; preds = %2, %6
  %12 = phi ptr [ %4, %6 ], [ null, %2 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  tail call void @BLI_remlink(ptr noundef nonnull @global_font_dir, ptr noundef nonnull %12) #5
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.DirBLF, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  tail call void %15(ptr noundef %17) #5
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %12) #5
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BLF_dir_get(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @BLI_countlist(ptr noundef nonnull @global_font_dir) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = sext i32 %2 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.1) #5
  %9 = load ptr, ptr @global_font_dir, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %16, %11 ], [ %9, %4 ]
  %13 = getelementptr inbounds %struct.DirBLF, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = tail call ptr @BLI_strdup(ptr noundef %14) #5
  store ptr %15, ptr %8, align 8, !tbaa !34
  %16 = load ptr, ptr %12, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !43

18:                                               ; preds = %11, %4
  store i32 0, ptr %0, align 4, !tbaa !44
  br label %19

19:                                               ; preds = %1, %18
  %20 = phi ptr [ %8, %18 ], [ null, %1 ]
  ret ptr %20
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BLF_dir_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %11, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef %9) #5
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, %5
  br i1 %12, label %13, label %6, !llvm.loop !46

13:                                               ; preds = %6, %2
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @blf_dir_search(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #5
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @global_font_dir, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DirBLF, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef %9, ptr noundef %0) #5
  %10 = call i32 @BLI_exists(ptr noundef nonnull %2) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %3, label %12, !llvm.loop !47

12:                                               ; preds = %7
  %13 = call ptr @BLI_strdup(ptr noundef nonnull %2) #5
  br label %14

14:                                               ; preds = %3, %12
  %15 = phi ptr [ %13, %12 ], [ null, %3 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = call i32 @BLI_exists(ptr noundef %0) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call ptr @BLI_strdup(ptr noundef %0) #5
  br label %22

22:                                               ; preds = %17, %20, %14
  %23 = phi ptr [ %15, %14 ], [ %21, %20 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #5
  ret ptr %23
}

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @blf_dir_metrics_search(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_strdup(ptr noundef %0) #5
  %3 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 46) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @BLI_strnlen(ptr noundef nonnull %3, i64 noundef 4) #5
  %7 = icmp ult i64 %6, 4
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 97, ptr %9, align 1, !tbaa !48
  %10 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 102, ptr %10, align 1, !tbaa !48
  %11 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 109, ptr %11, align 1, !tbaa !48
  %12 = tail call i32 @BLI_exists(ptr noundef %2) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  store i8 112, ptr %9, align 1, !tbaa !48
  %15 = tail call i32 @BLI_exists(ptr noundef %2) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1, %14, %5
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef %2) #5
  br label %19

19:                                               ; preds = %17, %14, %8
  %20 = phi ptr [ %2, %8 ], [ %2, %14 ], [ null, %17 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }
attributes #5 = { nounwind }

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
!38 = !{!39, !35, i64 16}
!39 = !{!"DirBLF", !35, i64 0, !35, i64 8, !35, i64 16}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !41, !42}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !36, i64 0}
!46 = distinct !{!46, !41, !42}
!47 = distinct !{!47, !41, !42}
!48 = !{!36, !36, i64 0}
