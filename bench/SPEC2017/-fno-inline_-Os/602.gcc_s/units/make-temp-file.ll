; ModuleID = 'make-temp-file.c'
source_filename = "make-temp-file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@memoized_tmpdir = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.3 = private constant [5 x i8] c"/tmp\00", align 1
@vartmp = internal constant [9 x i8] c"/var/tmp\00", align 1
@usrtmp = internal constant [9 x i8] c"/usr/tmp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ccXXXXXX\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"Cannot create temporary file in %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @choose_tmpdir() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @memoized_tmpdir, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %26

3:                                                ; preds = %0
  %4 = tail call ptr @getenv(ptr noundef nonnull @.str) #9
  %5 = tail call fastcc ptr @try_dir(ptr noundef %4, ptr noundef null) #9
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.1) #9
  %7 = tail call fastcc ptr @try_dir(ptr noundef %6, ptr noundef %5) #9
  %8 = tail call ptr @getenv(ptr noundef nonnull @.str.2) #9
  %9 = tail call fastcc ptr @try_dir(ptr noundef %8, ptr noundef %7) #9
  %10 = tail call fastcc ptr @try_dir(ptr noundef nonnull @.str.3, ptr noundef %9) #9
  %11 = tail call fastcc ptr @try_dir(ptr noundef nonnull @vartmp, ptr noundef %10) #9
  %12 = tail call fastcc ptr @try_dir(ptr noundef nonnull @usrtmp, ptr noundef %11) #9
  %13 = tail call fastcc ptr @try_dir(ptr noundef nonnull @.str.3, ptr noundef %12) #9
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str.4, ptr %13
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #9
  %17 = add i64 %16, 2
  %18 = and i64 %17, 4294967295
  %19 = tail call ptr @xmalloc(i64 noundef %18) #10
  %20 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %15) #9
  %21 = and i64 %16, 4294967295
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  store i8 47, ptr %22, align 1, !tbaa !40
  %23 = add i64 %16, 1
  %24 = and i64 %23, 4294967295
  %25 = getelementptr inbounds i8, ptr %19, i64 %24
  store i8 0, ptr %25, align 1, !tbaa !40
  store ptr %19, ptr @memoized_tmpdir, align 8, !tbaa !36
  br label %26

26:                                               ; preds = %3, %0
  %27 = phi ptr [ %19, %3 ], [ %1, %0 ]
  ret ptr %27
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef ptr @try_dir(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #1 !prof !35 !PGOFuncName !41 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @access(ptr noundef nonnull %0, i32 noundef 7) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %4
  br label %10

10:                                               ; preds = %6, %2, %9
  %11 = phi ptr [ null, %9 ], [ %1, %2 ], [ %0, %6 ]
  ret ptr %11
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_temp_file(ptr noundef readonly %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call ptr @choose_tmpdir() #9
  %3 = icmp eq ptr %0, null
  %4 = select i1 %3, ptr @.str.5, ptr %0
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #9
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #9
  %7 = trunc i64 %6 to i32
  %8 = shl i64 %5, 32
  %9 = ashr exact i64 %8, 32
  %10 = shl i64 %6, 32
  %11 = ashr exact i64 %10, 32
  %12 = add nsw i64 %9, 9
  %13 = add nsw i64 %12, %11
  %14 = tail call ptr @xmalloc(i64 noundef %13) #10
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #9
  %16 = getelementptr inbounds i8, ptr %14, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %16, ptr noundef nonnull align 1 dereferenceable(9) @.str.6, i64 9, i1 false) #9
  %17 = getelementptr inbounds i8, ptr %16, i64 8
  %18 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %4) #9
  %19 = tail call i32 @mkstemps(ptr noundef %14, i32 noundef %7) #10
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load ptr, ptr @stderr, align 8, !tbaa !36
  %23 = tail call ptr @__errno_location() #10
  %24 = load i32, ptr %23, align 4, !tbaa !42
  %25 = tail call ptr @strerror(i32 noundef %24) #10
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.7, ptr noundef %2, ptr noundef %25) #11
  tail call void @abort() #12
  unreachable

27:                                               ; preds = %1
  %28 = tail call i32 @close(i32 noundef %19) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @abort() #12
  unreachable

31:                                               ; preds = %27
  ret ptr %14
}

; Function Attrs: optsize
declare i32 @mkstemps(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: noreturn optsize
declare void @abort() local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { cold optsize }
attributes #12 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!38, !38, i64 0}
!41 = !{!"make-temp-file.c:try_dir"}
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !38, i64 0}
