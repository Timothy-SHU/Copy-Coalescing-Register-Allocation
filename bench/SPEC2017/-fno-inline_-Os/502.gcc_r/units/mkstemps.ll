; ModuleID = 'mkstemps.c'
source_filename = "mkstemps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@mkstemps.letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16
@mkstemps.value = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mkstemps(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %5 = trunc i64 %4 to i32
  %6 = add nsw i32 %1, 6
  %7 = icmp sgt i32 %6, %5
  br i1 %7, label %74, label %8

8:                                                ; preds = %2
  %9 = sext i32 %1 to i64
  %10 = sub i64 %4, %9
  %11 = getelementptr i8, ptr %0, i64 %10
  %12 = getelementptr i8, ptr %11, i64 -6
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(7) @.str, i64 noundef 6) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %74

15:                                               ; preds = %8
  %16 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #7
  %17 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !35
  %19 = shl i64 %18, 16
  %20 = load i64, ptr %3, align 8, !tbaa !40
  %21 = xor i64 %19, %20
  %22 = tail call i32 @getpid() #8
  %23 = sext i32 %22 to i64
  %24 = xor i64 %21, %23
  %25 = load i64, ptr @mkstemps.value, align 8, !tbaa !41
  %26 = add i64 %24, %25
  store i64 %26, ptr @mkstemps.value, align 8, !tbaa !41
  %27 = getelementptr i8, ptr %11, i64 -5
  %28 = getelementptr i8, ptr %11, i64 -4
  %29 = getelementptr i8, ptr %11, i64 -3
  %30 = getelementptr i8, ptr %11, i64 -2
  %31 = getelementptr i8, ptr %11, i64 -1
  br label %32

32:                                               ; preds = %15, %68
  %33 = phi i64 [ %26, %15 ], [ %70, %68 ]
  %34 = phi i32 [ 0, %15 ], [ %71, %68 ]
  %35 = urem i64 %33, 62
  %36 = getelementptr inbounds [63 x i8], ptr @mkstemps.letters, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !43
  store i8 %37, ptr %12, align 1, !tbaa !43
  %38 = udiv i64 %33, 62
  %39 = urem i64 %38, 62
  %40 = getelementptr inbounds [63 x i8], ptr @mkstemps.letters, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !43
  store i8 %41, ptr %27, align 1, !tbaa !43
  %42 = udiv i64 %33, 3844
  %43 = urem i64 %42, 62
  %44 = getelementptr inbounds [63 x i8], ptr @mkstemps.letters, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !43
  store i8 %45, ptr %28, align 1, !tbaa !43
  %46 = udiv i64 %33, 238328
  %47 = urem i64 %46, 62
  %48 = getelementptr inbounds [63 x i8], ptr @mkstemps.letters, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !43
  store i8 %49, ptr %29, align 1, !tbaa !43
  %50 = udiv i64 %33, 14776336
  %51 = urem i64 %50, 62
  %52 = getelementptr inbounds [63 x i8], ptr @mkstemps.letters, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !43
  store i8 %53, ptr %30, align 1, !tbaa !43
  %54 = udiv i64 %33, 916132832
  %55 = urem i64 %54, 62
  %56 = getelementptr inbounds [63 x i8], ptr @mkstemps.letters, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !43
  store i8 %57, ptr %31, align 1, !tbaa !43
  %58 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 194, i32 noundef 384) #8
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %74, label %60

60:                                               ; preds = %32
  %61 = tail call ptr @__errno_location() #8
  %62 = load i32, ptr %61, align 4, !tbaa !44
  %63 = icmp eq i32 %62, 17
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @__errno_location() #8
  %66 = load i32, ptr %65, align 4, !tbaa !44
  %67 = icmp eq i32 %66, 21
  br i1 %67, label %68, label %73

68:                                               ; preds = %60, %64
  %69 = load i64, ptr @mkstemps.value, align 8, !tbaa !41
  %70 = add i64 %69, 7777
  store i64 %70, ptr @mkstemps.value, align 8, !tbaa !41
  %71 = add nuw nsw i32 %34, 1
  %72 = icmp eq i32 %71, 238328
  br i1 %72, label %73, label %32, !llvm.loop !46

73:                                               ; preds = %64, %68
  store i8 0, ptr %0, align 1, !tbaa !43
  br label %74

74:                                               ; preds = %32, %2, %8, %73
  %75 = phi i32 [ -1, %73 ], [ -1, %8 ], [ -1, %2 ], [ %58, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %75
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @getpid() local_unnamed_addr #4

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 8}
!36 = !{!"timeval", !37, i64 0, !37, i64 8}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!36, !37, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"long long", !38, i64 0}
!43 = !{!38, !38, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !38, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
