; ModuleID = 'blender/source/blender/imbuf/intern/metadata.c'
source_filename = "blender/source/blender/imbuf/intern/metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ImMetaData = type { ptr, ptr, ptr, ptr, i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"ImMetaData\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_metadata_free(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.ImMetaData, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  tail call void %10(ptr noundef %12) #3
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.ImMetaData, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  tail call void %13(ptr noundef %15) #3
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %16(ptr noundef nonnull %8) #3
  %17 = icmp eq ptr %9, null
  br i1 %17, label %18, label %7, !llvm.loop !48

18:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @IMB_metadata_get_field(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6, %20
  %11 = phi ptr [ %21, %20 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.ImMetaData, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ImMetaData, ptr %11, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef %18, i64 noundef %3) #3
  br label %23

20:                                               ; preds = %10
  %21 = load ptr, ptr %11, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !50

23:                                               ; preds = %20, %16, %6, %4
  %24 = phi i8 [ 0, %4 ], [ 0, %6 ], [ 1, %16 ], [ 0, %20 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @IMB_metadata_add_field(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %11 = tail call ptr %10(i64 noundef 40, ptr noundef nonnull @.str) #3
  store ptr %11, ptr %6, align 8, !tbaa !34
  br label %19

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !51

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %18 = tail call ptr %17(i64 noundef 40, ptr noundef nonnull @.str) #3
  store ptr %18, ptr %13, align 8, !tbaa !43
  br label %19

19:                                               ; preds = %16, %9
  %20 = phi ptr [ %18, %16 ], [ %11, %9 ]
  %21 = tail call ptr @BLI_strdup(ptr noundef %1) #3
  %22 = getelementptr inbounds %struct.ImMetaData, ptr %20, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !46
  %23 = tail call ptr @BLI_strdup(ptr noundef %2) #3
  %24 = getelementptr inbounds %struct.ImMetaData, ptr %20, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %3, %19
  %26 = phi i8 [ 1, %19 ], [ 0, %3 ]
  ret i8 %26
}

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @IMB_metadata_del_field(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ImMetaData, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %30

13:                                               ; preds = %30
  %14 = getelementptr inbounds %struct.ImMetaData, ptr %32, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %15) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30, !llvm.loop !52

18:                                               ; preds = %13, %8
  %19 = phi ptr [ null, %8 ], [ %31, %13 ]
  %20 = phi ptr [ %6, %8 ], [ %32, %13 ]
  %21 = phi ptr [ %10, %8 ], [ %15, %13 ]
  %22 = icmp eq ptr %19, null
  %23 = load ptr, ptr %20, align 8, !tbaa !43
  %24 = select i1 %22, ptr %5, ptr %19
  store ptr %23, ptr %24, align 8, !tbaa !45
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %25(ptr noundef %21) #3
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.ImMetaData, ptr %20, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  tail call void %26(ptr noundef %28) #3
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %29(ptr noundef nonnull %20) #3
  br label %34

30:                                               ; preds = %8, %13
  %31 = phi ptr [ %32, %13 ], [ %6, %8 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %13, !llvm.loop !52

34:                                               ; preds = %30, %2, %4, %18
  %35 = phi i8 [ 1, %18 ], [ 0, %4 ], [ 0, %2 ], [ 0, %30 ]
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @IMB_metadata_change_field(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @IMB_metadata_add_field(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #5, !range !53
  br label %27

11:                                               ; preds = %5, %22
  %12 = phi ptr [ %23, %22 ], [ %7, %5 ]
  %13 = getelementptr inbounds %struct.ImMetaData, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %14) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.ImMetaData, ptr %12, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  tail call void %18(ptr noundef %20) #3
  %21 = tail call ptr @BLI_strdup(ptr noundef %2) #3
  store ptr %21, ptr %19, align 8, !tbaa !47
  br label %27

22:                                               ; preds = %11
  %23 = load ptr, ptr %12, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11, !llvm.loop !54

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @IMB_metadata_add_field(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #5, !range !53
  br label %27

27:                                               ; preds = %3, %25, %17, %9
  %28 = phi i8 [ 1, %17 ], [ %26, %25 ], [ %10, %9 ], [ 0, %3 ]
  ret i8 %28
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind optsize willreturn memory(read) }
attributes #5 = { optsize }

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
!34 = !{!35, !36, i64 296}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!44, !36, i64 0}
!44 = !{!"ImMetaData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32}
!45 = !{!36, !36, i64 0}
!46 = !{!44, !36, i64 16}
!47 = !{!44, !36, i64 24}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !49}
!53 = !{i8 0, i8 2}
!54 = distinct !{!54, !49}
