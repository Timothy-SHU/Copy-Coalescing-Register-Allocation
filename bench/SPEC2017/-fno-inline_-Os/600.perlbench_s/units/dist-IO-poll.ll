; ModuleID = 'dist/IO/poll.c'
source_filename = "dist/IO/poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.pollfd = type { i32, i16, i16 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_my_poll(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = alloca %struct.fd_set, align 8
  %5 = alloca %struct.fd_set, align 8
  %6 = alloca %struct.fd_set, align 8
  %7 = alloca %struct.fd_set, align 8
  %8 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i64 128, i1 false), !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false), !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, i8 0, i64 128, i1 false), !tbaa !36
  %9 = trunc i64 %1 to i32
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %61, label %11

11:                                               ; preds = %3
  %12 = and i64 %1, 4294967295
  br label %13

13:                                               ; preds = %11, %55
  %14 = phi i64 [ 0, %11 ], [ %57, %55 ]
  %15 = phi i32 [ 0, %11 ], [ %56, %55 ]
  %16 = getelementptr inbounds %struct.pollfd, ptr %0, i64 %14
  %17 = getelementptr inbounds %struct.pollfd, ptr %0, i64 %14, i32 1
  %18 = load i16, ptr %17, align 4, !tbaa !40
  %19 = zext i16 %18 to i32
  %20 = load i32, ptr %16, align 4, !tbaa !44
  %21 = getelementptr inbounds %struct.pollfd, ptr %0, i64 %14, i32 2
  store i16 0, ptr %21, align 2, !tbaa !45
  %22 = icmp slt i32 %20, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %13
  %24 = lshr i32 %20, 6
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [16 x i64], ptr %7, i64 0, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !36
  %28 = and i32 %20, 63
  %29 = zext nneg i32 %28 to i64
  %30 = shl nuw i64 1, %29
  %31 = and i64 %27, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %23
  %34 = tail call i32 @llvm.smax.i32(i32 %20, i32 %15)
  %35 = and i32 %19, 65
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds [16 x i64], ptr %4, i64 0, i64 %25
  %39 = load i64, ptr %38, align 8, !tbaa !36
  %40 = or i64 %39, %30
  store i64 %40, ptr %38, align 8, !tbaa !36
  br label %41

41:                                               ; preds = %37, %33
  %42 = and i32 %19, 260
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds [16 x i64], ptr %5, i64 0, i64 %25
  %46 = load i64, ptr %45, align 8, !tbaa !36
  %47 = or i64 %46, %30
  store i64 %47, ptr %45, align 8, !tbaa !36
  br label %48

48:                                               ; preds = %44, %41
  %49 = and i32 %19, 130
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds [16 x i64], ptr %6, i64 0, i64 %25
  %53 = load i64, ptr %52, align 8, !tbaa !36
  %54 = or i64 %53, %30
  store i64 %54, ptr %52, align 8, !tbaa !36
  br label %55

55:                                               ; preds = %48, %51, %13, %23
  %56 = phi i32 [ %15, %23 ], [ %15, %13 ], [ %34, %51 ], [ %34, %48 ]
  %57 = add nuw nsw i64 %14, 1
  %58 = icmp eq i64 %57, %12
  br i1 %58, label %59, label %13, !llvm.loop !46

59:                                               ; preds = %55
  %60 = add nuw nsw i32 %56, 1
  br label %61

61:                                               ; preds = %59, %3
  %62 = phi i32 [ 1, %3 ], [ %60, %59 ]
  %63 = icmp sgt i32 %2, -1
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = udiv i32 %2, 1000
  %66 = zext nneg i32 %65 to i64
  store i64 %66, ptr %8, align 8, !tbaa !48
  %67 = urem i32 %2, 1000
  %68 = mul nuw nsw i32 %67, 1000
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds %struct.timeval, ptr %8, i64 0, i32 1
  store i64 %69, ptr %70, align 8, !tbaa !50
  br label %71

71:                                               ; preds = %64, %61
  %72 = phi ptr [ %8, %64 ], [ null, %61 ]
  %73 = call i32 @select(i32 noundef %62, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %72) #6
  %74 = icmp slt i32 %73, 0
  %75 = or i1 %74, %10
  %76 = call i32 @llvm.smin.i32(i32 %73, i32 0)
  br i1 %75, label %129, label %77

77:                                               ; preds = %71
  %78 = and i64 %1, 4294967295
  br label %79

79:                                               ; preds = %77, %125
  %80 = phi i64 [ 0, %77 ], [ %127, %125 ]
  %81 = phi i32 [ 0, %77 ], [ %126, %125 ]
  %82 = getelementptr inbounds %struct.pollfd, ptr %0, i64 %80
  %83 = getelementptr inbounds %struct.pollfd, ptr %0, i64 %80, i32 1
  %84 = load i16, ptr %83, align 4, !tbaa !40
  %85 = and i16 %84, 455
  %86 = zext nneg i16 %85 to i32
  %87 = load i32, ptr %82, align 4, !tbaa !44
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %125, label %89

89:                                               ; preds = %79
  %90 = lshr i32 %87, 6
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds [16 x i64], ptr %7, i64 0, i64 %91
  %93 = load i64, ptr %92, align 8, !tbaa !36
  %94 = and i32 %87, 63
  %95 = zext nneg i32 %94 to i64
  %96 = shl nuw i64 1, %95
  %97 = and i64 %93, %96
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %89
  %100 = getelementptr inbounds [16 x i64], ptr %4, i64 0, i64 %91
  %101 = load i64, ptr %100, align 8, !tbaa !36
  %102 = and i64 %101, %96
  %103 = icmp eq i64 %102, 0
  %104 = and i32 %86, 390
  %105 = select i1 %103, i32 %104, i32 %86
  %106 = getelementptr inbounds [16 x i64], ptr %5, i64 0, i64 %91
  %107 = load i64, ptr %106, align 8, !tbaa !36
  %108 = and i64 %107, %96
  %109 = icmp eq i64 %108, 0
  %110 = and i32 %105, 195
  %111 = select i1 %109, i32 %110, i32 %105
  %112 = getelementptr inbounds [16 x i64], ptr %6, i64 0, i64 %91
  %113 = load i64, ptr %112, align 8, !tbaa !36
  %114 = and i64 %113, %96
  %115 = icmp eq i64 %114, 0
  %116 = and i32 %111, 325
  %117 = select i1 %115, i32 %116, i32 %111
  br label %118

118:                                              ; preds = %99, %89
  %119 = phi i32 [ 32, %89 ], [ %117, %99 ]
  %120 = trunc i32 %119 to i16
  %121 = getelementptr inbounds %struct.pollfd, ptr %0, i64 %80, i32 2
  store i16 %120, ptr %121, align 2, !tbaa !45
  %122 = icmp ne i32 %119, 0
  %123 = zext i1 %122 to i32
  %124 = add nsw i32 %81, %123
  br label %125

125:                                              ; preds = %79, %118
  %126 = phi i32 [ %124, %118 ], [ %81, %79 ]
  %127 = add nuw nsw i64 %80, 1
  %128 = icmp eq i64 %127, %78
  br i1 %128, label %129, label %79, !llvm.loop !51

129:                                              ; preds = %125, %71
  %130 = phi i32 [ %76, %71 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #5
  ret i32 %130
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !43, i64 4}
!41 = !{!"pollfd", !42, i64 0, !43, i64 4, !43, i64 6}
!42 = !{!"int", !38, i64 0}
!43 = !{!"short", !38, i64 0}
!44 = !{!41, !42, i64 0}
!45 = !{!41, !43, i64 6}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!49, !37, i64 0}
!49 = !{!"timeval", !37, i64 0, !37, i64 8}
!50 = !{!49, !37, i64 8}
!51 = distinct !{!51, !47}
