; ModuleID = 'ext/Sys-Hostname/Hostname.c'
source_filename = "ext/Sys-Hostname/Hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }

@.str = private unnamed_addr constant [28 x i8] c"ext/Sys-Hostname/Hostname.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Sys::Hostname::ghname\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Sys__Hostname(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #2
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Sys__Hostname_ghname) #2
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #2
  ret void
}

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal void @XS_Sys__Hostname_ghname(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !39
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
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
  %16 = shl i64 %11, 29
  %17 = ashr i64 %16, 32
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %19 to i64
  %23 = sub i64 %21, %22
  %24 = icmp slt i64 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = tail call ptr @Perl_stack_grow(ptr noundef %19, ptr noundef %19, i64 noundef 1) #2
  br label %27

27:                                               ; preds = %25, %15
  %28 = add nsw i32 %5, 1
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  store ptr @PL_sv_undef, ptr %31, align 8, !tbaa !35
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 %30
  store ptr %33, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #1

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
