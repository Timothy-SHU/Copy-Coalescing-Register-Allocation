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

; Function Attrs: cold nofree nounwind uwtable
define dso_local i64 @regerror(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = alloca [50 x i8], align 16
  %6 = and i32 %0, -257
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #5
  %7 = icmp eq i32 %0, 255
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.regex_t, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.1, ptr noundef nonnull dereferenceable(1) %10) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8, %18
  %14 = phi ptr [ %15, %18 ], [ @rerrs, %8 ]
  %15 = getelementptr inbounds %struct.rerr, ptr %14, i64 1
  %16 = load i32, ptr %15, align 8, !tbaa !42
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %23, !llvm.loop !44

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rerr, ptr %14, i64 1, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %10) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %13, !llvm.loop !44

23:                                               ; preds = %13, %18, %8
  %24 = phi i32 [ 0, %8 ], [ %16, %18 ], [ %16, %13 ]
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %23
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %24) #5
  br label %49

28:                                               ; preds = %4, %28
  %29 = phi ptr [ %34, %28 ], [ @rerrs, %4 ]
  %30 = load i32, ptr %29, align 8, !tbaa !42
  %31 = icmp slt i32 %30, 0
  %32 = icmp eq i32 %30, %6
  %33 = or i1 %31, %32
  %34 = getelementptr inbounds %struct.rerr, ptr %29, i64 1
  br i1 %33, label %35, label %28, !llvm.loop !48

35:                                               ; preds = %28
  %36 = and i32 %0, 256
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = icmp sgt i32 %30, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.rerr, ptr %29, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  %43 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %42) #5
  br label %49

44:                                               ; preds = %38
  %45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6) #5
  br label %49

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.rerr, ptr %29, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  br label %49

49:                                               ; preds = %26, %23, %40, %44, %46
  %50 = phi ptr [ %48, %46 ], [ %5, %44 ], [ %5, %40 ], [ %5, %26 ], [ @.str.37, %23 ]
  %51 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #6
  %52 = add i64 %51, 1
  %53 = icmp eq i64 %3, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = icmp ult i64 %52, %3
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %50) #5
  br label %62

58:                                               ; preds = %54
  %59 = add i64 %3, -1
  %60 = call ptr @strncpy(ptr noundef %2, ptr noundef %50, i64 noundef %59) #5
  %61 = getelementptr inbounds i8, ptr %2, i64 %59
  store i8 0, ptr %61, align 1, !tbaa !50
  br label %62

62:                                               ; preds = %56, %58, %49
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #5
  ret i64 %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 71759502456}
!8 = !{!"MaxCount", i64 6437746295}
!9 = !{!"MaxInternalCount", i64 6437746295}
!10 = !{!"MaxFunctionCount", i64 4086992896}
!11 = !{!"NumCounts", i64 3105}
!12 = !{!"NumFunctions", i64 247}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6437746295, i32 1}
!18 = !{i32 100000, i64 6429262894, i32 2}
!19 = !{i32 200000, i64 6273947450, i32 3}
!20 = !{i32 300000, i64 4086992896, i32 5}
!21 = !{i32 400000, i64 4086990118, i32 7}
!22 = !{i32 500000, i64 3500958832, i32 9}
!23 = !{i32 600000, i64 2110410321, i32 10}
!24 = !{i32 700000, i64 2043496448, i32 13}
!25 = !{i32 800000, i64 2030599974, i32 17}
!26 = !{i32 900000, i64 778157900, i32 22}
!27 = !{i32 950000, i64 477845251, i32 29}
!28 = !{i32 990000, i64 428072471, i32 35}
!29 = !{i32 999000, i64 4254510, i32 72}
!30 = !{i32 999900, i64 290502, i32 105}
!31 = !{i32 999990, i64 19030, i32 222}
!32 = !{i32 999999, i64 3606, i32 249}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !41, i64 16}
!36 = !{!"", !37, i64 0, !40, i64 8, !41, i64 16, !41, i64 24}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{!43, !37, i64 0}
!43 = !{!"rerr", !37, i64 0, !41, i64 8, !41, i64 16}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!43, !41, i64 8}
!48 = distinct !{!48, !45, !46}
!49 = !{!43, !41, i64 16}
!50 = !{!38, !38, i64 0}
