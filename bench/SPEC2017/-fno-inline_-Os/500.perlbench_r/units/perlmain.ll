; ModuleID = 'perlmain.c'
source_filename = "perlmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@PL_use_safe_putenv = external local_unnamed_addr global i8, align 1
@PL_do_undump = external local_unnamed_addr global i8, align 1
@my_perl = internal unnamed_addr global ptr null, align 8
@PL_perl_destruct_level = external local_unnamed_addr global i8, align 1
@PL_exit_flags = external local_unnamed_addr global i8, align 1
@PL_sig_name = external local_unnamed_addr constant [0 x ptr], align 8
@PL_sig_num = external local_unnamed_addr constant [0 x i32], align 4
@PL_csighandlerp = external local_unnamed_addr global ptr, align 8
@xs_init.file = internal constant [11 x i8] c"perlmain.c\00", align 1
@.str = private unnamed_addr constant [28 x i8] c"DynaLoader::boot_DynaLoader\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Cwd::bootstrap\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Data::Dumper::bootstrap\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Devel::Peek::bootstrap\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Digest::MD5::bootstrap\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Digest::SHA::bootstrap\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"File::Glob::bootstrap\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"IO::bootstrap\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Hash::Util::bootstrap\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Hash::Util::FieldHash::bootstrap\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"HTML::Parser::bootstrap\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"List::Util::bootstrap\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"MIME::Base64::bootstrap\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Opcode::bootstrap\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"PerlIO::scalar::bootstrap\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"PerlIO::via::bootstrap\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Storable::bootstrap\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Sys::Hostname::bootstrap\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Tie::Hash::NamedCapture::bootstrap\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Time::HiRes::bootstrap\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"arybase::bootstrap\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"attributes::bootstrap\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"mro::bootstrap\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"re::bootstrap\00", align 1

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !46 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4, !tbaa !47
  store ptr %1, ptr %5, align 8, !tbaa !51
  store ptr %2, ptr %6, align 8, !tbaa !51
  store i8 0, ptr @PL_use_safe_putenv, align 1, !tbaa !53
  call void @Perl_sys_init3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #4
  %7 = load i8, ptr @PL_do_undump, align 1, !tbaa !53, !range !55, !noundef !56
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14, !prof !57

9:                                                ; preds = %3
  %10 = call ptr @perl_alloc() #4
  store ptr %10, ptr @my_perl, align 8, !tbaa !51
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !58

12:                                               ; preds = %9
  call void @exit(i32 noundef 1) #5
  unreachable

13:                                               ; preds = %9
  call void @perl_construct(ptr noundef nonnull %10) #4
  store i8 0, ptr @PL_perl_destruct_level, align 1, !tbaa !59
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i8, ptr @PL_exit_flags, align 1, !tbaa !59
  %16 = or i8 %15, 2
  store i8 %16, ptr @PL_exit_flags, align 1, !tbaa !59
  %17 = load ptr, ptr @my_perl, align 8, !tbaa !51
  %18 = load i32, ptr %4, align 4, !tbaa !47
  %19 = load ptr, ptr %5, align 8, !tbaa !51
  %20 = call i32 @perl_parse(ptr noundef %17, ptr noundef nonnull @xs_init, i32 noundef %18, ptr noundef %19, ptr noundef null) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25, !prof !57

22:                                               ; preds = %14
  %23 = load ptr, ptr @my_perl, align 8, !tbaa !51
  %24 = call i32 @perl_run(ptr noundef %23) #4
  br label %25

25:                                               ; preds = %22, %14
  %26 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_sig_name, i64 0, i64 1), align 8, !tbaa !51
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28, !prof !60

28:                                               ; preds = %25, %37
  %29 = phi i64 [ %38, %37 ], [ 1, %25 ]
  %30 = getelementptr inbounds [0 x i32], ptr @PL_sig_num, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !47
  %32 = call ptr @Perl_rsignal_state(i32 noundef %31) #4
  %33 = load ptr, ptr @PL_csighandlerp, align 8, !tbaa !51
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %37, !prof !61

35:                                               ; preds = %28
  %36 = call ptr @Perl_rsignal(i32 noundef %31, ptr noundef null) #4
  br label %37

37:                                               ; preds = %28, %35
  %38 = add nuw i64 %29, 1
  %39 = getelementptr inbounds [0 x ptr], ptr @PL_sig_name, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %28, !prof !62, !llvm.loop !63

42:                                               ; preds = %37, %25
  %43 = load ptr, ptr @my_perl, align 8, !tbaa !51
  %44 = call i32 @perl_destruct(ptr noundef %43) #4
  %45 = load ptr, ptr @my_perl, align 8, !tbaa !51
  call void @perl_free(ptr noundef %45) #4
  call void @Perl_sys_term() #4
  call void @exit(i32 noundef %44) #5
  unreachable
}

; Function Attrs: optsize
declare void @Perl_sys_init3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @perl_alloc() local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @perl_construct(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @perl_parse(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @xs_init() #3 !prof !46 !PGOFuncName !65 {
  %1 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str, ptr noundef nonnull @boot_DynaLoader, ptr noundef nonnull @xs_init.file) #4
  %2 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.1, ptr noundef nonnull @boot_Cwd, ptr noundef nonnull @xs_init.file) #4
  %3 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.2, ptr noundef nonnull @boot_Data__Dumper, ptr noundef nonnull @xs_init.file) #4
  %4 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.3, ptr noundef nonnull @boot_Devel__Peek, ptr noundef nonnull @xs_init.file) #4
  %5 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.4, ptr noundef nonnull @boot_Digest__MD5, ptr noundef nonnull @xs_init.file) #4
  %6 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.5, ptr noundef nonnull @boot_Digest__SHA, ptr noundef nonnull @xs_init.file) #4
  %7 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.6, ptr noundef nonnull @boot_File__Glob, ptr noundef nonnull @xs_init.file) #4
  %8 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.7, ptr noundef nonnull @boot_IO, ptr noundef nonnull @xs_init.file) #4
  %9 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.8, ptr noundef nonnull @boot_Hash__Util, ptr noundef nonnull @xs_init.file) #4
  %10 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.9, ptr noundef nonnull @boot_Hash__Util__FieldHash, ptr noundef nonnull @xs_init.file) #4
  %11 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.10, ptr noundef nonnull @boot_HTML__Parser, ptr noundef nonnull @xs_init.file) #4
  %12 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.11, ptr noundef nonnull @boot_List__Util, ptr noundef nonnull @xs_init.file) #4
  %13 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.12, ptr noundef nonnull @boot_MIME__Base64, ptr noundef nonnull @xs_init.file) #4
  %14 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.13, ptr noundef nonnull @boot_Opcode, ptr noundef nonnull @xs_init.file) #4
  %15 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.14, ptr noundef nonnull @boot_PerlIO__scalar, ptr noundef nonnull @xs_init.file) #4
  %16 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.15, ptr noundef nonnull @boot_PerlIO__via, ptr noundef nonnull @xs_init.file) #4
  %17 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.16, ptr noundef nonnull @boot_Storable, ptr noundef nonnull @xs_init.file) #4
  %18 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.17, ptr noundef nonnull @boot_Sys__Hostname, ptr noundef nonnull @xs_init.file) #4
  %19 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.18, ptr noundef nonnull @boot_Tie__Hash__NamedCapture, ptr noundef nonnull @xs_init.file) #4
  %20 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.19, ptr noundef nonnull @boot_Time__HiRes, ptr noundef nonnull @xs_init.file) #4
  %21 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.20, ptr noundef nonnull @boot_arybase, ptr noundef nonnull @xs_init.file) #4
  %22 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.21, ptr noundef nonnull @boot_attributes, ptr noundef nonnull @xs_init.file) #4
  %23 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.22, ptr noundef nonnull @boot_mro, ptr noundef nonnull @xs_init.file) #4
  %24 = tail call ptr @Perl_newXS(ptr noundef nonnull @.str.23, ptr noundef nonnull @boot_re, ptr noundef nonnull @xs_init.file) #4
  ret void
}

; Function Attrs: optsize
declare i32 @perl_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_rsignal_state(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_rsignal(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @perl_destruct(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @perl_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sys_term() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_newXS(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @boot_DynaLoader(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Cwd(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Data__Dumper(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Devel__Peek(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Digest__MD5(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Digest__SHA(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_File__Glob(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_IO(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Hash__Util(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Hash__Util__FieldHash(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_HTML__Parser(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_List__Util(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_MIME__Base64(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Opcode(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_PerlIO__scalar(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_PerlIO__via(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Storable(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Sys__Hostname(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Tie__Hash__NamedCapture(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_Time__HiRes(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_arybase(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_attributes(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_mro(ptr noundef) #1

; Function Attrs: optsize
declare void @boot_re(ptr noundef) #1

attributes #0 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!45}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491971510}
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
!23 = !{i32 950000, i64 21523442, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 63, i32 4652}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @main, ptr @Perl_sys_init3, i64 1}
!36 = !{ptr @main, ptr @perl_alloc, i64 1}
!37 = !{ptr @main, ptr @perl_parse, i64 1}
!38 = !{ptr @main, ptr @perl_run, i64 1}
!39 = !{ptr @main, ptr @Perl_rsignal_state, i64 6}
!40 = !{ptr @main, ptr @perl_destruct, i64 1}
!41 = !{ptr @main, ptr @perl_free, i64 1}
!42 = !{ptr @main, ptr @Perl_sys_term, i64 1}
!43 = !{ptr @main, ptr @exit, i64 1}
!44 = !{ptr @xs_init, ptr @Perl_newXS, i64 24}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !49, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"_Bool", !49, i64 0}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!"branch_weights", i32 2, i32 1}
!58 = !{!"branch_weights", i32 1, i32 2}
!59 = !{!49, !49, i64 0}
!60 = !{!"branch_weights", i32 1, i32 127}
!61 = !{!"branch_weights", i32 1, i32 16}
!62 = !{!"branch_weights", i32 127, i32 897}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"perlmain.c:xs_init"}
