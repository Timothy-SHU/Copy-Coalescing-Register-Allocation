; ModuleID = 'ext/re/re.c'
source_filename = "ext/re/re.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%struct.reg_substr_data = type { i8, [3 x %struct.reg_substr_datum] }
%struct.reg_substr_datum = type { i64, i64, ptr, ptr, i64 }
%struct.p5rx = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }

@my_reg_engine = dso_local constant %struct.regexp_engine { ptr @my_re_compile, ptr @my_regexec, ptr @my_re_intuit_start, ptr @my_re_intuit_string, ptr @my_regfree, ptr @my_reg_numbered_buff_fetch, ptr @my_reg_numbered_buff_store, ptr @my_reg_numbered_buff_length, ptr @my_reg_named_buff, ptr @my_reg_named_buff_iter, ptr @my_reg_qr_package, ptr @my_re_op_compile }, align 8
@.str = private unnamed_addr constant [12 x i8] c"ext/re/re.c\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"re::install\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"re::regmust\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_colorset = external local_unnamed_addr global i8, align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@PL_core_reg_engine = external constant %struct.regexp_engine, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_sv_undef = external global %struct.sv, align 8

; Function Attrs: optsize
declare ptr @my_re_compile(ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare i32 @my_regexec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare ptr @my_re_intuit_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: optsize
declare ptr @my_re_intuit_string(ptr noundef) #0

; Function Attrs: optsize
declare void @my_regfree(ptr noundef) #0

; Function Attrs: optsize
declare void @my_reg_numbered_buff_fetch(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: optsize
declare void @my_reg_numbered_buff_store(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @my_reg_numbered_buff_length(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare ptr @my_reg_named_buff(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare ptr @my_reg_named_buff_iter(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare ptr @my_reg_qr_package(ptr noundef) #0

; Function Attrs: optsize
declare ptr @my_re_op_compile(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_re(ptr noundef %0) local_unnamed_addr #1 !prof !35 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef -65312, ptr noundef %0, ptr noundef nonnull @.str) #3
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.1, ptr noundef nonnull @XS_re_install) #3
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_re_regmust, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #3
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #3
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_re_install(ptr noundef %0) #1 !prof !35 !PGOFuncName !36 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.4) #3
  br label %15

15:                                               ; preds = %14, %1
  %16 = shl i64 %11, 29
  %17 = ashr i64 %16, 32
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  store i8 0, ptr @PL_colorset, align 1, !tbaa !43
  %20 = load ptr, ptr @PL_stack_max, align 8, !tbaa !37
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %19 to i64
  %23 = sub i64 %21, %22
  %24 = icmp slt i64 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = tail call ptr @Perl_stack_grow(ptr noundef %19, ptr noundef %19, i64 noundef 1) #3
  br label %27

27:                                               ; preds = %15, %25
  %28 = phi ptr [ %26, %25 ], [ %19, %15 ]
  %29 = tail call ptr @Perl_newSViv(i64 noundef ptrtoint (ptr @my_reg_engine to i64)) #3
  %30 = tail call ptr @Perl_sv_2mortal(ptr noundef %29) #3
  %31 = getelementptr inbounds ptr, ptr %28, i64 1
  store ptr %30, ptr %31, align 8, !tbaa !37
  store ptr %31, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_re_regmust(ptr noundef %0) #1 !prof !35 !PGOFuncName !45 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !37
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !37
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.5) #3
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %18, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !37
  %26 = tail call ptr @Perl_get_re_arg(ptr noundef %25) #3
  %27 = icmp eq ptr %26, null
  br i1 %27, label %81, label %28

28:                                               ; preds = %17
  %29 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %26) #4
  %30 = getelementptr inbounds %struct.regexp, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, @my_reg_engine
  %33 = icmp eq ptr %31, @PL_core_reg_engine
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.regexp, ptr %29, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !49
  %38 = getelementptr inbounds %struct.reg_substr_data, ptr %37, i64 0, i32 1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !50
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.reg_substr_data, ptr %37, i64 0, i32 1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !52
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41, %35
  %46 = phi ptr [ %39, %35 ], [ %43, %41 ]
  %47 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %46) #3
  %48 = tail call ptr @Perl_sv_2mortal(ptr noundef %47) #3
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi ptr [ @PL_sv_no, %41 ], [ %48, %45 ]
  %51 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %26) #4
  %52 = getelementptr inbounds %struct.regexp, ptr %51, i64 0, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct.reg_substr_data, ptr %53, i64 0, i32 1, i64 1, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !50
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.reg_substr_data, ptr %53, i64 0, i32 1, i64 1, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !52
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57, %49
  %62 = phi ptr [ %55, %49 ], [ %59, %57 ]
  %63 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %62) #3
  %64 = tail call ptr @Perl_sv_2mortal(ptr noundef %63) #3
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi ptr [ @PL_sv_no, %57 ], [ %64, %61 ]
  %67 = load ptr, ptr @PL_stack_max, align 8, !tbaa !37
  %68 = ptrtoint ptr %67 to i64
  %69 = ptrtoint ptr %22 to i64
  %70 = sub i64 %68, %69
  %71 = icmp slt i64 %70, 16
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = tail call ptr @Perl_stack_grow(ptr noundef %22, ptr noundef %22, i64 noundef 2) #3
  br label %74

74:                                               ; preds = %65, %72
  %75 = phi ptr [ %73, %72 ], [ %22, %65 ]
  %76 = getelementptr inbounds ptr, ptr %75, i64 1
  store ptr %50, ptr %76, align 8, !tbaa !37
  %77 = getelementptr inbounds ptr, ptr %75, i64 2
  store ptr %66, ptr %77, align 8, !tbaa !37
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %79 = getelementptr inbounds ptr, ptr %78, i64 %23
  %80 = getelementptr inbounds ptr, ptr %79, i64 1
  br label %86

81:                                               ; preds = %28, %17
  %82 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %83 = getelementptr inbounds ptr, ptr %82, i64 %23
  store ptr @PL_sv_undef, ptr %83, align 8, !tbaa !37
  %84 = load ptr, ptr @PL_stack_base, align 8, !tbaa !37
  %85 = getelementptr inbounds ptr, ptr %84, i64 %23
  br label %86

86:                                               ; preds = %74, %81
  %87 = phi ptr [ %85, %81 ], [ %80, %74 ]
  store ptr %87, ptr @PL_stack_sp, align 8, !tbaa !37
  ret void
}

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare ptr @Perl_get_re_arg(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @S_ReANY(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !35 !PGOFuncName !53 {
  %2 = getelementptr inbounds %struct.p5rx, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #0

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

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
!36 = !{!"re.c:XS_re_install"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !39, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"_Bool", !39, i64 0}
!45 = !{!"re.c:XS_re_regmust"}
!46 = !{!47, !38, i64 32}
!47 = !{!"regexp", !38, i64 0, !39, i64 8, !48, i64 16, !39, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !42, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !38, i64 88, !42, i64 96, !42, i64 100, !38, i64 104, !42, i64 112, !42, i64 116, !38, i64 120, !38, i64 128, !38, i64 136, !48, i64 144, !48, i64 152, !48, i64 160, !48, i64 168, !42, i64 176, !42, i64 176, !38, i64 184}
!48 = !{!"long", !39, i64 0}
!49 = !{!47, !38, i64 88}
!50 = !{!51, !38, i64 16}
!51 = !{!"reg_substr_datum", !48, i64 0, !48, i64 8, !38, i64 16, !38, i64 24, !48, i64 32}
!52 = !{!51, !38, i64 24}
!53 = !{!"re.c:S_ReANY"}
!54 = !{!39, !39, i64 0}
