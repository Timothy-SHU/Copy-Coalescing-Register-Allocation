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

; Function Attrs: nounwind uwtable
define dso_local void @BLO_free_memfile(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #3
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
  tail call void %10(ptr noundef %12) #3
  br label %13

13:                                               ; preds = %9, %4
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %14(ptr noundef nonnull %5) #3
  %15 = tail call ptr @BLI_pophead(ptr noundef %0) #3
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !llvm.loop !42

17:                                               ; preds = %13, %1
  %18 = getelementptr inbounds %struct.MemFile, ptr %0, i64 0, i32 1
  store i32 0, ptr %18, align 8, !tbaa !45
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @BLO_merge_memfile(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %30, %2
  %9 = tail call ptr @BLI_pophead(ptr noundef nonnull %0) #3
  %10 = icmp eq ptr %9, null
  br i1 %10, label %48, label %35

11:                                               ; preds = %2, %30
  %12 = phi i1 [ %33, %30 ], [ %6, %2 ]
  %13 = phi i1 [ %32, %30 ], [ %5, %2 ]
  %14 = phi ptr [ %31, %30 ], [ %4, %2 ]
  %15 = phi ptr [ %27, %30 ], [ %3, %2 ]
  %16 = select i1 %13, i1 %12, i1 false
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.MemFileChunk, ptr %14, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !34
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  store i32 0, ptr %18, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.MemFileChunk, ptr %15, i64 0, i32 3
  store i32 1, ptr %22, align 8, !tbaa !34
  br label %23

23:                                               ; preds = %17, %21, %11
  br i1 %13, label %24, label %26

24:                                               ; preds = %23
  %25 = load ptr, ptr %15, align 8, !tbaa !49
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi ptr [ %25, %24 ], [ null, %23 ]
  br i1 %12, label %28, label %30

28:                                               ; preds = %26
  %29 = load ptr, ptr %14, align 8, !tbaa !49
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %29, %28 ], [ null, %26 ]
  %32 = icmp ne ptr %27, null
  %33 = icmp ne ptr %31, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %11, label %8, !llvm.loop !50

35:                                               ; preds = %8, %44
  %36 = phi ptr [ %46, %44 ], [ %9, %8 ]
  %37 = getelementptr inbounds %struct.MemFileChunk, ptr %36, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !34
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %42 = getelementptr inbounds %struct.MemFileChunk, ptr %36, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !41
  tail call void %41(ptr noundef %43) #3
  br label %44

44:                                               ; preds = %40, %35
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %45(ptr noundef nonnull %36) #3
  %46 = tail call ptr @BLI_pophead(ptr noundef nonnull %0) #3
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %35, !llvm.loop !42

48:                                               ; preds = %44, %8
  %49 = getelementptr inbounds %struct.MemFile, ptr %0, i64 0, i32 1
  store i32 0, ptr %49, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @add_memfilechunk(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !48
  store ptr %7, ptr @add_memfilechunk.compchunk, align 8, !tbaa !40
  br label %61

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  store ptr null, ptr @add_memfilechunk.compchunk, align 8, !tbaa !40
  br label %61

11:                                               ; preds = %8
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !40
  %13 = tail call ptr %12(i64 noundef 32, ptr noundef nonnull @.str) #3
  %14 = getelementptr inbounds %struct.MemFileChunk, ptr %13, i64 0, i32 4
  store i32 %3, ptr %14, align 4, !tbaa !51
  %15 = getelementptr inbounds %struct.MemFileChunk, ptr %13, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.MemFileChunk, ptr %13, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !34
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %13) #3
  %17 = load ptr, ptr @add_memfilechunk.compchunk, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.MemFileChunk, ptr %17, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = load i32, ptr %14, align 4, !tbaa !51
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.MemFileChunk, ptr %17, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !41
  %27 = icmp ult i32 %3, 4
  br i1 %27, label %48, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %26, align 4, !tbaa !52
  %30 = load i32, ptr %2, align 4, !tbaa !52
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = lshr i32 %3, 2
  br label %40

34:                                               ; preds = %40
  %35 = getelementptr inbounds i32, ptr %41, i64 1
  %36 = getelementptr inbounds i32, ptr %42, i64 1
  %37 = load i32, ptr %35, align 4, !tbaa !52
  %38 = load i32, ptr %36, align 4, !tbaa !52
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46, !llvm.loop !53

40:                                               ; preds = %32, %34
  %41 = phi ptr [ %26, %32 ], [ %35, %34 ]
  %42 = phi ptr [ %2, %32 ], [ %36, %34 ]
  %43 = phi i32 [ %33, %32 ], [ %44, %34 ]
  %44 = add nsw i32 %43, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %34, !llvm.loop !53

46:                                               ; preds = %34, %28
  %47 = phi i1 [ %27, %28 ], [ %45, %34 ]
  br i1 %47, label %48, label %49

48:                                               ; preds = %40, %24, %46
  store ptr %26, ptr %15, align 8, !tbaa !41
  store i32 1, ptr %16, align 8, !tbaa !34
  br label %49

49:                                               ; preds = %46, %48, %19
  %50 = load ptr, ptr %17, align 8, !tbaa !49
  store ptr %50, ptr @add_memfilechunk.compchunk, align 8, !tbaa !40
  br label %51

51:                                               ; preds = %49, %11
  %52 = load ptr, ptr %15, align 8, !tbaa !41
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !40
  %56 = zext i32 %3 to i64
  %57 = tail call ptr %55(i64 noundef %56, ptr noundef nonnull @.str.1) #3
  store ptr %57, ptr %15, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %2, i64 %56, i1 false)
  %58 = getelementptr inbounds %struct.MemFile, ptr %1, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !45
  %60 = add i32 %59, %3
  store i32 %60, ptr %58, align 8, !tbaa !45
  br label %61

61:                                               ; preds = %51, %54, %10, %6
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!34 = !{!35, !39, i64 24}
!35 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 28}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!35, !36, i64 16}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!46, !39, i64 16}
!46 = !{!"MemFile", !47, i64 0, !39, i64 16}
!47 = !{!"ListBase", !36, i64 0, !36, i64 8}
!48 = !{!46, !36, i64 0}
!49 = !{!35, !36, i64 0}
!50 = distinct !{!50, !43, !44}
!51 = !{!35, !39, i64 28}
!52 = !{!39, !39, i64 0}
!53 = distinct !{!53, !43, !44}
