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
define dso_local void @Perl_new_numeric(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_set_numeric_standard() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_set_numeric_local() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_new_ctype(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl__warn_problematic_locale() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_new_collate(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @Perl_init_i18nl10n(i32 noundef %0) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl__is_in_locale_category(i1 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @PL_curcop, align 8
  %4 = select i1 %0, ptr @PL_compiling, ptr %3
  %5 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %6, ptr noundef nonnull @.str, i64 noundef 6, i32 noundef 0, i32 noundef 0) #4
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %7, @PL_sv_placeholder
  %10 = or i1 %8, %9
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !12
  %14 = and i32 %13, -2145386240
  %15 = icmp eq i32 %14, -2147483392
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %7, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.xpvuv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !15
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
define dso_local ptr @Perl_my_strerror(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @strerror(i32 noundef %0) #4
  ret ptr %2
}

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_sync_locale() local_unnamed_addr #0 {
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 72}
!6 = !{!"cop", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !11, i64 32, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !8, i64 34, !8, i64 35, !11, i64 36, !7, i64 40, !7, i64 48, !11, i64 56, !11, i64 60, !7, i64 64, !7, i64 72}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !11, i64 12}
!13 = !{!"sv", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16}
!14 = !{!13, !7, i64 0}
!15 = !{!8, !8, i64 0}
