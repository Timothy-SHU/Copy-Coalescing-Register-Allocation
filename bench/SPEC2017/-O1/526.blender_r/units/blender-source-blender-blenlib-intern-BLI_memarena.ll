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

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_memarena_new(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 56, ptr noundef nonnull @.str) #4
  %5 = getelementptr inbounds %struct.MemArena, ptr %4, i64 0, i32 3
  store i64 %0, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.MemArena, ptr %4, i64 0, i32 5
  store i64 8, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.MemArena, ptr %4, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !42
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_memarena_use_calloc(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 6
  store i8 1, ptr %2, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_memarena_use_malloc(ptr nocapture noundef writeonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 6
  store i8 0, ptr %2, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BLI_memarena_use_align(ptr nocapture noundef writeonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 5
  store i64 %1, ptr %3, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_memarena_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  tail call void @BLI_linklist_freeN(ptr noundef %3) #4
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %4(ptr noundef %0) #4
  ret void
}

declare void @BLI_linklist_freeN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  br i1 %11, label %12, label %44

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
  %28 = tail call ptr %25(i64 noundef %19, ptr noundef %27) #4
  store ptr %28, ptr %0, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 2
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %29, ptr noundef %28) #4
  %30 = load ptr, ptr %0, align 8, !tbaa !46
  %31 = ptrtoint ptr %30 to i64
  %32 = load i64, ptr %3, align 8, !tbaa !41
  %33 = shl i64 %32, 32
  %34 = add i64 %33, -4294967296
  %35 = ashr exact i64 %34, 32
  %36 = add nsw i64 %35, %31
  %37 = mul i64 %32, -4294967296
  %38 = ashr exact i64 %37, 32
  %39 = and i64 %36, %38
  %40 = inttoptr i64 %39 to ptr
  %41 = load i64, ptr %9, align 8, !tbaa !45
  %42 = add i64 %41, %31
  %43 = sub i64 %42, %39
  store i64 %43, ptr %9, align 8, !tbaa !45
  store ptr %40, ptr %0, align 8, !tbaa !46
  br label %44

44:                                               ; preds = %12, %2
  %45 = load ptr, ptr %0, align 8, !tbaa !46
  %46 = getelementptr inbounds i8, ptr %45, i64 %8
  store ptr %46, ptr %0, align 8, !tbaa !46
  %47 = load i64, ptr %9, align 8, !tbaa !45
  %48 = sub i64 %47, %8
  store i64 %48, ptr %9, align 8, !tbaa !45
  ret ptr %45
}

declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_memarena_calloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !41
  %5 = add i64 %4, -1
  %6 = add i64 %5, %1
  %7 = sub i64 0, %4
  %8 = and i64 %6, %7
  %9 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !45
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %12, label %44

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
  %28 = tail call ptr %25(i64 noundef %19, ptr noundef %27) #4
  store ptr %28, ptr %0, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 2
  tail call void @BLI_linklist_prepend(ptr noundef nonnull %29, ptr noundef %28) #4
  %30 = load ptr, ptr %0, align 8, !tbaa !46
  %31 = ptrtoint ptr %30 to i64
  %32 = load i64, ptr %3, align 8, !tbaa !41
  %33 = shl i64 %32, 32
  %34 = add i64 %33, -4294967296
  %35 = ashr exact i64 %34, 32
  %36 = add nsw i64 %35, %31
  %37 = mul i64 %32, -4294967296
  %38 = ashr exact i64 %37, 32
  %39 = and i64 %36, %38
  %40 = inttoptr i64 %39 to ptr
  %41 = load i64, ptr %9, align 8, !tbaa !45
  %42 = add i64 %41, %31
  %43 = sub i64 %42, %39
  store i64 %43, ptr %9, align 8, !tbaa !45
  store ptr %40, ptr %0, align 8, !tbaa !46
  br label %44

44:                                               ; preds = %2, %12
  %45 = load ptr, ptr %0, align 8, !tbaa !46
  %46 = getelementptr inbounds i8, ptr %45, i64 %8
  store ptr %46, ptr %0, align 8, !tbaa !46
  %47 = load i64, ptr %9, align 8, !tbaa !45
  %48 = sub i64 %47, %8
  store i64 %48, ptr %9, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr align 1 %45, i8 0, i64 %1, i1 false)
  ret ptr %45
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @BLI_memarena_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  tail call void @BLI_linklist_freeN(ptr noundef nonnull %6) #4
  %9 = load ptr, ptr %2, align 8, !tbaa !44
  store ptr null, ptr %9, align 8, !tbaa !47
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr %0, align 8, !tbaa !46
  %12 = load ptr, ptr %2, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.LinkNode, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  store ptr %14, ptr %0, align 8, !tbaa !46
  %15 = ptrtoint ptr %14 to i64
  %16 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 5
  %17 = load i64, ptr %16, align 8, !tbaa !41
  %18 = shl i64 %17, 32
  %19 = add i64 %18, -4294967296
  %20 = ashr exact i64 %19, 32
  %21 = add nsw i64 %20, %15
  %22 = mul i64 %17, -4294967296
  %23 = ashr exact i64 %22, 32
  %24 = and i64 %21, %23
  %25 = inttoptr i64 %24 to ptr
  %26 = sub i64 %15, %24
  %27 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !45
  %29 = add i64 %26, %28
  store i64 %29, ptr %27, align 8, !tbaa !45
  store ptr %25, ptr %0, align 8, !tbaa !46
  %30 = ptrtoint ptr %11 to i64
  %31 = sub i64 %30, %24
  %32 = add i64 %29, %31
  store i64 %32, ptr %27, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.MemArena, ptr %0, i64 0, i32 6
  %34 = load i8, ptr %33, align 8, !tbaa !43
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr align 1 %25, i8 0, i64 %31, i1 false)
  br label %37

37:                                               ; preds = %10, %36, %1
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!38 = !{!39, !40, i64 24}
!39 = !{!"MemArena", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !36, i64 48}
!40 = !{!"long", !36, i64 0}
!41 = !{!39, !40, i64 40}
!42 = !{!39, !35, i64 8}
!43 = !{!39, !36, i64 48}
!44 = !{!39, !35, i64 16}
!45 = !{!39, !40, i64 32}
!46 = !{!39, !35, i64 0}
!47 = !{!48, !35, i64 0}
!48 = !{!"LinkNode", !35, i64 0, !35, i64 8}
!49 = !{!48, !35, i64 8}
