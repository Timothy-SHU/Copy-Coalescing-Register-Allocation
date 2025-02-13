; ModuleID = 'locale.c'
source_filename = "locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.0, %union._xivu }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%union._xivu = type { i64 }

@PL_compiling = external local_unnamed_addr global %struct.cop, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@PL_sv_placeholder = external global %struct.sv, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_new_numeric(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_set_numeric_standard() local_unnamed_addr #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_set_numeric_local() local_unnamed_addr #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_new_ctype(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl__warn_problematic_locale() local_unnamed_addr #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_new_collate(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !38 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @Perl_init_i18nl10n(i32 noundef %0) local_unnamed_addr #0 !prof !39 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_in_locale_category(i1 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #1 !prof !38 {
  %3 = load ptr, ptr @PL_curcop, align 8
  %4 = select i1 %0, ptr @PL_compiling, ptr %3
  %5 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %6, ptr noundef nonnull @.str, i64 noundef 6, i32 noundef 0, i32 noundef 0) #4
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, @PL_sv_placeholder
  %10 = or i1 %8, %9
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !47
  %14 = and i32 %13, -2145386240
  %15 = icmp eq i32 %14, -2147483392
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %7, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.xpvuv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !50
  br label %22

20:                                               ; preds = %11
  %21 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %7, i32 noundef 2) #4
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  %24 = add nsw i32 %1, 1
  %25 = shl nuw i32 1, %24
  %26 = zext i32 %25 to i64
  %27 = and i64 %23, %26
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %2, %22
  %30 = phi i1 [ %28, %22 ], [ false, %2 ]
  ret i1 %30
}

; Function Attrs: optsize
declare ptr @Perl_refcounted_he_fetch_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_my_strerror(i32 noundef %0) local_unnamed_addr #1 !prof !39 {
  %2 = tail call ptr @strerror(i32 noundef %0) #4
  ret ptr %2
}

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_sync_locale() local_unnamed_addr #0 !prof !38 {
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36}
!36 = !{ptr @Perl_my_strerror, ptr @strerror, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!"function_entry_count", i64 1}
!40 = !{!41, !42, i64 72}
!41 = !{!"cop", !42, i64 0, !42, i64 8, !42, i64 16, !45, i64 24, !46, i64 32, !46, i64 33, !46, i64 33, !46, i64 33, !46, i64 33, !46, i64 33, !46, i64 33, !46, i64 33, !43, i64 34, !43, i64 35, !46, i64 36, !42, i64 40, !42, i64 48, !46, i64 56, !46, i64 60, !42, i64 64, !42, i64 72}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!"long", !43, i64 0}
!46 = !{!"int", !43, i64 0}
!47 = !{!48, !46, i64 12}
!48 = !{!"sv", !42, i64 0, !46, i64 8, !46, i64 12, !43, i64 16}
!49 = !{!48, !42, i64 0}
!50 = !{!43, !43, i64 0}
