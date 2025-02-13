; ModuleID = 'blender/source/blender/blenloader/intern/undofile.c'
source_filename = "blender/source/blender/blenloader/intern/undofile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MemFileChunk = type { ptr, ptr, ptr, i32, i32 }
%struct.MemFile = type { %struct.ListBase, i32 }
%struct.ListBase = type { ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@add_memfilechunk.compchunk = internal unnamed_addr global ptr null, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"MemFileChunk\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Chunk buffer\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLO_free_memfile(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %15, %13 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.MemFileChunk, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.MemFileChunk, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  tail call void %10(ptr noundef %12) #4
  br label %13

13:                                               ; preds = %9, %4
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %14(ptr noundef nonnull %5) #4
  %15 = tail call ptr @BLI_pophead(ptr noundef %0) #4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !llvm.loop !42

17:                                               ; preds = %13, %1
  %18 = getelementptr inbounds %struct.MemFile, ptr %0, i64 0, i32 1
  store i32 0, ptr %18, align 8, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLO_merge_memfile(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = load ptr, ptr %1, align 8, !tbaa !47
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %2, %27
  %9 = phi i1 [ %30, %27 ], [ %6, %2 ]
  %10 = phi i1 [ %29, %27 ], [ %5, %2 ]
  %11 = phi ptr [ %28, %27 ], [ %4, %2 ]
  %12 = phi ptr [ %24, %27 ], [ %3, %2 ]
  %13 = select i1 %10, i1 %9, i1 false
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.MemFileChunk, ptr %11, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  store i32 0, ptr %15, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.MemFileChunk, ptr %12, i64 0, i32 3
  store i32 1, ptr %19, align 8, !tbaa !34
  br label %21

20:                                               ; preds = %8
  br i1 %10, label %21, label %23

21:                                               ; preds = %18, %14, %20
  %22 = load ptr, ptr %12, align 8, !tbaa !48
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi ptr [ %22, %21 ], [ null, %20 ]
  br i1 %9, label %25, label %27

25:                                               ; preds = %23
  %26 = load ptr, ptr %11, align 8, !tbaa !48
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi ptr [ %26, %25 ], [ null, %23 ]
  %29 = icmp ne ptr %24, null
  %30 = icmp ne ptr %28, null
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %8, label %32, !llvm.loop !49

32:                                               ; preds = %27, %2
  tail call void @BLO_free_memfile(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_memfilechunk(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !47
  store ptr %7, ptr @add_memfilechunk.compchunk, align 8, !tbaa !40
  br label %43

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  store ptr null, ptr @add_memfilechunk.compchunk, align 8, !tbaa !40
  br label %43

11:                                               ; preds = %8
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !40
  %13 = tail call ptr %12(i64 noundef 32, ptr noundef nonnull @.str) #4
  %14 = getelementptr inbounds %struct.MemFileChunk, ptr %13, i64 0, i32 4
  store i32 %3, ptr %14, align 4, !tbaa !50
  %15 = getelementptr inbounds %struct.MemFileChunk, ptr %13, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.MemFileChunk, ptr %13, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !34
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %13) #4
  %17 = load ptr, ptr @add_memfilechunk.compchunk, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.MemFileChunk, ptr %17, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = load i32, ptr %14, align 4, !tbaa !50
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.MemFileChunk, ptr %17, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = lshr i32 %3, 2
  %28 = tail call fastcc i32 @my_memcmp(ptr noundef %26, ptr noundef %2, i32 noundef %27) #5, !range !51
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store ptr %26, ptr %15, align 8, !tbaa !41
  store i32 1, ptr %16, align 8, !tbaa !34
  br label %31

31:                                               ; preds = %24, %30, %19
  %32 = load ptr, ptr %17, align 8, !tbaa !48
  store ptr %32, ptr @add_memfilechunk.compchunk, align 8, !tbaa !40
  br label %33

33:                                               ; preds = %31, %11
  %34 = load ptr, ptr %15, align 8, !tbaa !41
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !40
  %38 = zext i32 %3 to i64
  %39 = tail call ptr %37(i64 noundef %38, ptr noundef nonnull @.str.1) #4
  store ptr %39, ptr %15, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %2, i64 %38, i1 false)
  %40 = getelementptr inbounds %struct.MemFile, ptr %1, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !44
  %42 = add i32 %41, %3
  store i32 %42, ptr %40, align 8, !tbaa !44
  br label %43

43:                                               ; preds = %33, %36, %10, %6
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @my_memcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !52 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ %2, %3 ]
  %7 = phi ptr [ %15, %12 ], [ %1, %3 ]
  %8 = phi ptr [ %14, %12 ], [ %0, %3 ]
  %9 = load i32, ptr %8, align 4, !tbaa !53
  %10 = load i32, ptr %7, align 4, !tbaa !53
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = add nsw i32 %6, -1
  %14 = getelementptr inbounds i32, ptr %8, i64 1
  %15 = getelementptr inbounds i32, ptr %7, i64 1
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %5, !llvm.loop !54

17:                                               ; preds = %5, %12, %3
  %18 = phi i32 [ 0, %3 ], [ 0, %12 ], [ 1, %5 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
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
!34 = !{!35, !39, i64 24}
!35 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!35, !36, i64 16}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45, !39, i64 16}
!45 = !{!"MemFile", !46, i64 0, !39, i64 16}
!46 = !{!"ListBase", !36, i64 0, !36, i64 8}
!47 = !{!45, !36, i64 0}
!48 = !{!35, !36, i64 0}
!49 = distinct !{!49, !43}
!50 = !{!35, !39, i64 28}
!51 = !{i32 0, i32 2}
!52 = !{!"undofile.c:my_memcmp"}
!53 = !{!39, !39, i64 0}
!54 = distinct !{!54, !43}
