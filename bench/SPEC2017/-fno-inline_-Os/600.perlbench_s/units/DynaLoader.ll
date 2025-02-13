; ModuleID = 'DynaLoader.c'
source_filename = "DynaLoader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"DynaLoader.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"DynaLoader::dl_error\00", align 1
@PL_unitcheckav = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_sv_yes = external global %struct.sv, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"Not implemented\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_DynaLoader(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676679, ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %14, i32 noundef %7, ptr noundef nonnull @.str.1) #2
  %16 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_DynaLoader_dl_error, ptr noundef nonnull @.str) #2
  %17 = load ptr, ptr @PL_unitcheckav, align 8, !tbaa !36
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !42

19:                                               ; preds = %1
  %20 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !40
  tail call void @Perl_call_list(i32 noundef %20, ptr noundef nonnull %17) #2
  br label %21

21:                                               ; preds = %1, %19
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr @PL_sv_yes, ptr %24, align 8, !tbaa !36
  %25 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %26 = getelementptr inbounds ptr, ptr %25, i64 %23
  store ptr %26, ptr @PL_stack_sp, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_newXS(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_DynaLoader_dl_error(ptr noundef %0) #0 !prof !35 !PGOFuncName !43 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.3) #2
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !36
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !44
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @PL_curpad, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !36
  br label %29

27:                                               ; preds = %15
  %28 = tail call ptr @Perl_sv_newmortal() #2
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %26, %21 ], [ %28, %27 ]
  tail call void @Perl_sv_setpv(ptr noundef %30, ptr noundef nonnull @.str.4) #2
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %32 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !48
  %34 = and i32 %33, 4194304
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = tail call i32 @Perl_mg_set(ptr noundef nonnull %30) #2
  br label %38

38:                                               ; preds = %29, %36
  %39 = add nsw i32 %5, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %31, i64 %40
  store ptr %30, ptr %41, align 8, !tbaa !36
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %43 = getelementptr inbounds ptr, ptr %42, i64 %40
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @Perl_call_list(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
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
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"branch_weights", i32 1, i32 2}
!43 = !{!"DynaLoader.c:XS_DynaLoader_dl_error"}
!44 = !{!45, !38, i64 35}
!45 = !{!"op", !37, i64 0, !37, i64 8, !37, i64 16, !46, i64 24, !41, i64 32, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !38, i64 34, !38, i64 35}
!46 = !{!"long", !38, i64 0}
!47 = !{!45, !46, i64 24}
!48 = !{!49, !41, i64 12}
!49 = !{!"sv", !37, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
