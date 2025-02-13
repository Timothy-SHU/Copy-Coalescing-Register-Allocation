; ModuleID = 'getpwd.c'
source_filename = "getpwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@getpwd.pwd = internal unnamed_addr global ptr null, align 8
@getpwd.failure_errno = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @getpwd() local_unnamed_addr #0 !prof !41 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca %struct.stat, align 8
  %3 = load ptr, ptr @getpwd.pwd, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %50, !prof !46

5:                                                ; preds = %0
  %6 = load i32, ptr @getpwd.failure_errno, align 4, !tbaa !47
  %7 = tail call ptr @__errno_location() #7
  store i32 %6, ptr %7, align 4, !tbaa !47
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %50, !prof !46

9:                                                ; preds = %5
  %10 = tail call ptr @getenv(ptr noundef nonnull @.str) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12, !prof !49

12:                                               ; preds = %9
  %13 = load i8, ptr %10, align 1, !tbaa !50
  %14 = icmp eq i8 %13, 47
  br i1 %14, label %15, label %31, !prof !46

15:                                               ; preds = %12
  %16 = call i32 @stat(ptr noundef nonnull %10, ptr noundef nonnull %2) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31, !prof !46

18:                                               ; preds = %15
  %19 = call i32 @stat(ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31, !prof !46

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.stat, ptr %1, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !51
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %31, !prof !46

27:                                               ; preds = %21
  %28 = load i64, ptr %1, align 8, !tbaa !55
  %29 = load i64, ptr %2, align 8, !tbaa !55
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %48, label %31, !prof !46

31:                                               ; preds = %27, %21, %18, %15, %12, %9
  %32 = tail call ptr @xmalloc(i64 noundef 4097) #7
  %33 = tail call ptr @getcwd(ptr noundef %32, i64 noundef 4097) #7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %48

35:                                               ; preds = %40
  %36 = shl i64 %42, 1
  %37 = tail call ptr @xmalloc(i64 noundef %36) #7
  %38 = tail call ptr @getcwd(ptr noundef %37, i64 noundef %36) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %48, !llvm.loop !56

40:                                               ; preds = %31, %35
  %41 = phi ptr [ %37, %35 ], [ %32, %31 ]
  %42 = phi i64 [ %36, %35 ], [ 4097, %31 ]
  %43 = tail call ptr @__errno_location() #7
  %44 = load i32, ptr %43, align 4, !tbaa !47
  tail call void @free(ptr noundef %41) #8
  %45 = icmp eq i32 %44, 34
  br i1 %45, label %35, label %46

46:                                               ; preds = %40
  store i32 %44, ptr @getpwd.failure_errno, align 4, !tbaa !47
  %47 = tail call ptr @__errno_location() #7
  store i32 %44, ptr %47, align 4, !tbaa !47
  br label %48

48:                                               ; preds = %35, %31, %46, %27
  %49 = phi ptr [ %10, %27 ], [ null, %46 ], [ %32, %31 ], [ %37, %35 ]
  store ptr %49, ptr @getpwd.pwd, align 8, !tbaa !42
  br label %50

50:                                               ; preds = %48, %5, %0
  %51 = phi ptr [ %3, %0 ], [ null, %5 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %1) #6
  ret ptr %51
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @getpwd, ptr @__errno_location, i64 3}
!37 = !{ptr @getpwd, ptr @xmalloc, i64 2}
!38 = !{ptr @getpwd, ptr @getcwd, i64 2}
!39 = !{ptr @getpwd, ptr @free, i64 2}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 1}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"branch_weights", i32 2, i32 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !44, i64 0}
!49 = !{!"branch_weights", i32 1, i32 2}
!50 = !{!44, !44, i64 0}
!51 = !{!52, !53, i64 8}
!52 = !{!"stat", !53, i64 0, !53, i64 8, !53, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !54, i64 72, !54, i64 88, !54, i64 104, !44, i64 120}
!53 = !{!"long", !44, i64 0}
!54 = !{!"timespec", !53, i64 0, !53, i64 8}
!55 = !{!52, !53, i64 0}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
