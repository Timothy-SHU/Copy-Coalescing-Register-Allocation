; ModuleID = 'binpos.c'
source_filename = "binpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [40 x i8] c"Couldn't read magic number from BINPOS\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fxyz\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"bad magic number \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"malloc error in binpos\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Could only read %d of %d atoms requested\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @readbinposhdr(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #9
  %3 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 4, ptr noundef %0) #10
  %4 = icmp eq i64 %3, 4
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !tbaa !35
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 39, i64 1, ptr %6) #11
  tail call void @exit(i32 noundef -1) #12
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds [10 x i8], ptr %2, i64 0, i64 4
  store i8 0, ptr %9, align 1, !tbaa !39
  %10 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %2, ptr noundef nonnull dereferenceable(5) @.str.1, i64 5)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @stderr, align 8, !tbaa !35
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #13
  call void @exit(i32 noundef -1) #12
  unreachable

15:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @readbinposfrm(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !40
  %5 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %2) #10
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4, !tbaa !40
  %9 = mul nsw i32 %8, 3
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !tbaa !35
  %16 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 23, i64 1, ptr %15) #11
  tail call void @exit(i32 noundef 1) #12
  unreachable

17:                                               ; preds = %7
  %18 = tail call i64 @fread(ptr noundef nonnull %12, i64 noundef 4, i64 noundef %10, ptr noundef %2) #10
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %9, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = icmp sgt i32 %8, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %21
  %24 = tail call i32 @llvm.smax.i32(i32 %9, i32 1)
  %25 = zext nneg i32 %24 to i64
  br label %30

26:                                               ; preds = %17
  %27 = load ptr, ptr @stderr, align 8, !tbaa !35
  %28 = sdiv i32 %19, 3
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.4, i32 noundef %28, i32 noundef %8) #13
  tail call void @exit(i32 noundef -1) #12
  unreachable

30:                                               ; preds = %23, %30
  %31 = phi i64 [ 0, %23 ], [ %36, %30 ]
  %32 = getelementptr inbounds float, ptr %12, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !42
  %34 = fpext float %33 to double
  %35 = getelementptr inbounds double, ptr %1, i64 %31
  store double %34, ptr %35, align 8, !tbaa !44
  %36 = add nuw nsw i64 %31, 1
  %37 = icmp eq i64 %36, %25
  br i1 %37, label %38, label %30, !llvm.loop !46

38:                                               ; preds = %30, %21
  tail call void @free(ptr noundef nonnull %12) #15
  br label %39

39:                                               ; preds = %3, %38
  %40 = phi i32 [ 1, %38 ], [ 0, %3 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @writebinposhdr(ptr nocapture noundef %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @fwrite(ptr noundef nonnull @.str.1, i64 noundef 4, i64 noundef 1, ptr noundef %0) #10
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @writebinposfrm(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !40
  %5 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %2) #10
  %6 = load i32, ptr %4, align 4, !tbaa !40
  %7 = mul nsw i32 %6, 3
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = icmp sgt i32 %6, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %12
  %15 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %16 = zext nneg i32 %15 to i64
  br label %20

17:                                               ; preds = %3
  %18 = load ptr, ptr @stderr, align 8, !tbaa !35
  %19 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 23, i64 1, ptr %18) #11
  tail call void @exit(i32 noundef 1) #12
  unreachable

20:                                               ; preds = %14, %20
  %21 = phi i64 [ 0, %14 ], [ %26, %20 ]
  %22 = getelementptr inbounds double, ptr %1, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !44
  %24 = fptrunc double %23 to float
  %25 = getelementptr inbounds float, ptr %10, i64 %21
  store float %24, ptr %25, align 4, !tbaa !42
  %26 = add nuw nsw i64 %21, 1
  %27 = icmp eq i64 %26, %16
  br i1 %27, label %28, label %20, !llvm.loop !48

28:                                               ; preds = %20, %12
  %29 = tail call i64 @fwrite(ptr noundef nonnull %10, i64 noundef 4, i64 noundef %8, ptr noundef %2) #10
  tail call void @free(ptr noundef nonnull %10) #15
  %30 = tail call i32 @fflush(ptr noundef %2) #10
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind optsize }
attributes #13 = { cold optsize }
attributes #14 = { nounwind optsize allocsize(0) }
attributes #15 = { nounwind optsize }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!37, !37, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !37, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"double", !37, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
