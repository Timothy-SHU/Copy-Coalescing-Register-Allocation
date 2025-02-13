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
define dso_local ptr @getpwd() local_unnamed_addr #0 !prof !40 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca %struct.stat, align 8
  %3 = load ptr, ptr @getpwd.pwd, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %1) #6
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %50, !prof !45

5:                                                ; preds = %0
  %6 = load i32, ptr @getpwd.failure_errno, align 4, !tbaa !46
  %7 = tail call ptr @__errno_location() #7
  store i32 %6, ptr %7, align 4, !tbaa !46
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %50, !prof !45

9:                                                ; preds = %5
  %10 = tail call ptr @getenv(ptr noundef nonnull @.str) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12, !prof !48

12:                                               ; preds = %9
  %13 = load i8, ptr %10, align 1, !tbaa !49
  %14 = icmp eq i8 %13, 47
  br i1 %14, label %15, label %31, !prof !45

15:                                               ; preds = %12
  %16 = call i32 @stat(ptr noundef nonnull %10, ptr noundef nonnull %2) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31, !prof !45

18:                                               ; preds = %15
  %19 = call i32 @stat(ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31, !prof !45

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.stat, ptr %1, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !50
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %31, !prof !45

27:                                               ; preds = %21
  %28 = load i64, ptr %1, align 8, !tbaa !54
  %29 = load i64, ptr %2, align 8, !tbaa !54
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %48, label %31, !prof !45

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
  br i1 %39, label %40, label %48, !llvm.loop !55

40:                                               ; preds = %31, %35
  %41 = phi ptr [ %37, %35 ], [ %32, %31 ]
  %42 = phi i64 [ %36, %35 ], [ 4097, %31 ]
  %43 = tail call ptr @__errno_location() #7
  %44 = load i32, ptr %43, align 4, !tbaa !46
  tail call void @free(ptr noundef %41) #8
  %45 = icmp eq i32 %44, 34
  br i1 %45, label %35, label %46

46:                                               ; preds = %40
  store i32 %44, ptr @getpwd.failure_errno, align 4, !tbaa !46
  %47 = tail call ptr @__errno_location() #7
  store i32 %44, ptr %47, align 4, !tbaa !46
  br label %48

48:                                               ; preds = %35, %31, %46, %27
  %49 = phi ptr [ %10, %27 ], [ null, %46 ], [ %32, %31 ], [ %37, %35 ]
  store ptr %49, ptr @getpwd.pwd, align 8, !tbaa !41
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @getpwd, ptr @__errno_location, i64 3}
!36 = !{ptr @getpwd, ptr @xmalloc, i64 2}
!37 = !{ptr @getpwd, ptr @getcwd, i64 2}
!38 = !{ptr @getpwd, ptr @free, i64 2}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!"branch_weights", i32 2, i32 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !43, i64 0}
!48 = !{!"branch_weights", i32 1, i32 2}
!49 = !{!43, !43, i64 0}
!50 = !{!51, !52, i64 8}
!51 = !{!"stat", !52, i64 0, !52, i64 8, !52, i64 16, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !53, i64 72, !53, i64 88, !53, i64 104, !43, i64 120}
!52 = !{!"long", !43, i64 0}
!53 = !{!"timespec", !52, i64 0, !52, i64 8}
!54 = !{!51, !52, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
