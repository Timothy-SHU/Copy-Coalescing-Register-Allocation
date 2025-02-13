; ModuleID = 'blender/source/blender/blenlib/intern/BLI_memarena.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_memarena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MemArena = type { ptr, ptr, ptr, i64, i64, i64, i8 }
%struct.LinkNode = type { ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"memarena\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_memarena_new(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 56, ptr noundef nonnull @.str) #5
  %5 = getelementptr inbounds %struct.MemArena, ptr %4, i64 0, i32 3
  store i64 %0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.MemArena, ptr %4, i64 0, i32 5
  store i64 8, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.MemArena, ptr %4, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !42
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_memarena_use_calloc(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 6
  store i8 1, ptr %2, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_memarena_use_malloc(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 6
  store i8 0, ptr %2, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BLI_memarena_use_align(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 5
  store i64 %1, ptr %3, align 8, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_memarena_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  tail call void @BLI_linklist_freeN(ptr noundef %3) #5
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %4(ptr noundef %0) #5
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_freeN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_memarena_alloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !41
  %5 = add i64 %4, -1
  %6 = add i64 %5, %1
  %7 = sub i64 0, %4
  %8 = and i64 %6, %7
  %9 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !45
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !38
  %15 = sub i64 %14, %5
  %16 = icmp ugt i64 %8, %15
  %17 = add i64 %8, %4
  %18 = and i64 %17, %7
  %19 = select i1 %16, i64 %18, i64 %14
  store i64 %19, ptr %9, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 6
  %21 = load i8, ptr %20, align 8, !tbaa !43
  %22 = icmp eq i8 %21, 0
  %23 = load ptr, ptr @MEM_callocN, align 8
  %24 = load ptr, ptr @MEM_mallocN, align 8
  %25 = select i1 %22, ptr %24, ptr %23
  %26 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = tail call ptr %25(i64 noundef %19, ptr noundef %27) #5
  store ptr %28, ptr %0, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 2
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %29, ptr noundef %28) #5
  tail call fastcc void @memarena_curbuf_align(ptr noundef nonnull %0) #6
  %30 = load i64, ptr %9, align 8, !tbaa !45
  br label %31

31:                                               ; preds = %12, %2
  %32 = phi i64 [ %30, %12 ], [ %10, %2 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !46
  %34 = getelementptr inbounds i8, ptr %33, i64 %8
  store ptr %34, ptr %0, align 8, !tbaa !46
  %35 = sub i64 %32, %8
  store i64 %35, ptr %9, align 8, !tbaa !45
  ret ptr %33
}

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @memarena_curbuf_align(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = ptrtoint ptr %2 to i64
  %4 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !41
  %6 = shl i64 %5, 32
  %7 = add i64 %6, -4294967296
  %8 = ashr exact i64 %7, 32
  %9 = add nsw i64 %8, %3
  %10 = mul i64 %5, -4294967296
  %11 = ashr exact i64 %10, 32
  %12 = and i64 %9, %11
  %13 = inttoptr i64 %12 to ptr
  %14 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !45
  %16 = add i64 %15, %3
  %17 = sub i64 %16, %12
  store i64 %17, ptr %14, align 8, !tbaa !45
  store ptr %13, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BLI_memarena_calloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_memarena_alloc(ptr noundef %0, i64 noundef %1) #6
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %1, i1 false)
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_memarena_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  tail call void @BLI_linklist_freeN(ptr noundef nonnull %6) #5
  %9 = load ptr, ptr %2, align 8, !tbaa !44
  store ptr null, ptr %9, align 8, !tbaa !48
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %3, %5 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.LinkNode, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  store ptr %14, ptr %0, align 8, !tbaa !46
  tail call fastcc void @memarena_curbuf_align(ptr noundef nonnull %0) #6
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  %16 = ptrtoint ptr %12 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !45
  %21 = add i64 %18, %20
  store i64 %21, ptr %19, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 6
  %23 = load i8, ptr %22, align 8, !tbaa !43
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr align 1 %15, i8 0, i64 %18, i1 false)
  br label %26

26:                                               ; preds = %10, %25, %1
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 24}
!39 = !{!"MemArena", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !36, i64 48}
!40 = !{!"long", !36, i64 0}
!41 = !{!39, !40, i64 40}
!42 = !{!39, !35, i64 8}
!43 = !{!39, !36, i64 48}
!44 = !{!39, !35, i64 16}
!45 = !{!39, !40, i64 32}
!46 = !{!39, !35, i64 0}
!47 = !{!"BLI_memarena.c:memarena_curbuf_align"}
!48 = !{!49, !35, i64 0}
!49 = !{!"LinkNode", !35, i64 0, !35, i64 8}
!50 = !{!49, !35, i64 8}
