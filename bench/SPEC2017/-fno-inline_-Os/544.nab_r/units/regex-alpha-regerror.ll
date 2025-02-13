; ModuleID = 'regex-alpha/regerror.c'
source_filename = "regex-alpha/regerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rerr = type { i32, ptr, ptr }
%struct.regex_t = type { i32, i64, ptr, ptr }

@rerrs = internal unnamed_addr constant [18 x %struct.rerr] [%struct.rerr { i32 0, ptr @.str.1, ptr @.str.2 }, %struct.rerr { i32 1, ptr @.str.3, ptr @.str.4 }, %struct.rerr { i32 2, ptr @.str.5, ptr @.str.6 }, %struct.rerr { i32 3, ptr @.str.7, ptr @.str.8 }, %struct.rerr { i32 4, ptr @.str.9, ptr @.str.10 }, %struct.rerr { i32 5, ptr @.str.11, ptr @.str.12 }, %struct.rerr { i32 6, ptr @.str.13, ptr @.str.14 }, %struct.rerr { i32 7, ptr @.str.15, ptr @.str.16 }, %struct.rerr { i32 8, ptr @.str.17, ptr @.str.18 }, %struct.rerr { i32 9, ptr @.str.19, ptr @.str.20 }, %struct.rerr { i32 10, ptr @.str.21, ptr @.str.22 }, %struct.rerr { i32 11, ptr @.str.23, ptr @.str.24 }, %struct.rerr { i32 12, ptr @.str.25, ptr @.str.26 }, %struct.rerr { i32 13, ptr @.str.27, ptr @.str.28 }, %struct.rerr { i32 14, ptr @.str.29, ptr @.str.30 }, %struct.rerr { i32 15, ptr @.str.31, ptr @.str.32 }, %struct.rerr { i32 16, ptr @.str.33, ptr @.str.34 }, %struct.rerr { i32 -1, ptr @.str.35, ptr @.str.36 }], align 16
@.str = private unnamed_addr constant [9 x i8] c"REG_0x%x\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"REG_OKAY\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"no errors detected\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"REG_NOMATCH\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"regexec() failed to match\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"REG_BADPAT\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"invalid regular expression\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"REG_ECOLLATE\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"invalid collating element\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"REG_ECTYPE\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"invalid character class\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"REG_EESCAPE\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"trailing backslash (\\)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"REG_ESUBREG\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"invalid backreference number\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"REG_EBRACK\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"brackets ([ ]) not balanced\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"REG_EPAREN\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"parentheses not balanced\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"REG_EBRACE\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"braces not balanced\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"REG_BADBR\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"invalid repetition count(s)\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"REG_ERANGE\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"invalid character range\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"REG_ESPACE\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"REG_BADRPT\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"repetition-operator operand invalid\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"REG_EMPTY\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"empty (sub)expression\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"REG_ASSERT\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"\22can't happen\22 -- you found a bug\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"REG_INVARG\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"invalid argument to regex routine\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"*** unknown regexp error code ***\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i64 @regerror(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = alloca [50 x i8], align 16
  %6 = and i32 %0, -257
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #5
  %7 = icmp eq i32 %0, 255
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call fastcc ptr @regatoi(ptr noundef %1, ptr noundef nonnull %5) #6
  br label %31

10:                                               ; preds = %4, %10
  %11 = phi ptr [ %16, %10 ], [ @rerrs, %4 ]
  %12 = load i32, ptr %11, align 8, !tbaa !35
  %13 = icmp slt i32 %12, 0
  %14 = icmp eq i32 %12, %6
  %15 = or i1 %13, %14
  %16 = getelementptr inbounds %struct.rerr, ptr %11, i64 1
  br i1 %15, label %17, label %10, !llvm.loop !41

17:                                               ; preds = %10
  %18 = and i32 %0, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = icmp sgt i32 %12, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.rerr, ptr %11, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %24) #7
  br label %31

26:                                               ; preds = %20
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6) #7
  br label %31

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.rerr, ptr %11, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  br label %31

31:                                               ; preds = %22, %26, %28, %8
  %32 = phi ptr [ %9, %8 ], [ %30, %28 ], [ %5, %26 ], [ %5, %22 ]
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #8
  %34 = add i64 %33, 1
  %35 = icmp eq i64 %3, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = icmp ult i64 %34, %3
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %32) #7
  br label %44

40:                                               ; preds = %36
  %41 = add i64 %3, -1
  %42 = call ptr @strncpy(ptr noundef %2, ptr noundef %32, i64 noundef %41) #7
  %43 = getelementptr inbounds i8, ptr %2, i64 %41
  store i8 0, ptr %43, align 1, !tbaa !45
  br label %44

44:                                               ; preds = %38, %40, %31
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #5
  ret i64 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef ptr @regatoi(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #0 !prof !34 !PGOFuncName !46 {
  %3 = getelementptr inbounds %struct.regex_t, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.1, ptr noundef nonnull dereferenceable(1) %4) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2, %12
  %8 = phi ptr [ %9, %12 ], [ @rerrs, %2 ]
  %9 = getelementptr inbounds %struct.rerr, ptr %8, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !35
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %20, !llvm.loop !50

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rerr, ptr %8, i64 1, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %4) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %7, !llvm.loop !50

17:                                               ; preds = %12, %2
  %18 = phi i32 [ 0, %2 ], [ %10, %12 ]
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %18) #7
  br label %20

20:                                               ; preds = %7, %17
  %21 = phi ptr [ %1, %17 ], [ @.str.37, %7 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 36494405452}
!4 = !{!"MaxCount", i64 7149406114}
!5 = !{!"MaxInternalCount", i64 7149406114}
!6 = !{!"MaxFunctionCount", i64 1283723375}
!7 = !{!"NumCounts", i64 1914}
!8 = !{!"NumFunctions", i64 240}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7149406114, i32 1}
!14 = !{i32 100000, i64 7149406114, i32 1}
!15 = !{i32 200000, i64 7140152539, i32 2}
!16 = !{i32 300000, i64 7140152539, i32 2}
!17 = !{i32 400000, i64 3344610218, i32 4}
!18 = !{i32 500000, i64 3344610218, i32 4}
!19 = !{i32 600000, i64 2054445201, i32 5}
!20 = !{i32 700000, i64 2041548705, i32 10}
!21 = !{i32 800000, i64 2041548705, i32 10}
!22 = !{i32 900000, i64 2041548705, i32 10}
!23 = !{i32 950000, i64 855650904, i32 12}
!24 = !{i32 990000, i64 428072471, i32 14}
!25 = !{i32 999000, i64 9072759, i32 28}
!26 = !{i32 999900, i64 104986, i32 54}
!27 = !{i32 999990, i64 19030, i32 143}
!28 = !{i32 999999, i64 2509, i32 165}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"rerr", !37, i64 0, !40, i64 8, !40, i64 16}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!36, !40, i64 8}
!44 = !{!36, !40, i64 16}
!45 = !{!38, !38, i64 0}
!46 = !{!"regerror.c:regatoi"}
!47 = !{!48, !40, i64 16}
!48 = !{!"", !37, i64 0, !49, i64 8, !40, i64 16, !40, i64 24}
!49 = !{!"long", !38, i64 0}
!50 = distinct !{!50, !42}
