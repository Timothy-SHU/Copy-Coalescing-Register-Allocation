; ModuleID = 'ldecod_src/io_raw.c'
source_filename = "ldecod_src/io_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [75 x i8] c"read_one_frame: cannot advance file pointer in input file beyond frame %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"read_one_frame: cannot fseek to (Header size) in input file\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divisible by 8\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"read_one_frame: cannot read %d bytes from input file, unexpected EOF!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ReadFrameConcatenated(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 13, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !43
  %15 = shl i32 %14, 1
  %16 = add i32 %15, %12
  %17 = mul i32 %16, %10
  %18 = sext i32 %17 to i64
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 20
  %21 = load i32, ptr %20, align 8, !tbaa !44
  %22 = add nsw i32 %21, %2
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %18, %23
  %25 = add nsw i64 %24, %19
  %26 = tail call i64 @lseek(i32 noundef %8, i64 noundef %25, i32 noundef 0) #6
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i32, ptr %20, align 8, !tbaa !44
  %30 = add nsw i32 %29, %2
  %31 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str, i32 noundef %30) #6
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef -1) #6
  br label %32

32:                                               ; preds = %28, %6
  %33 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 18
  %34 = load i32, ptr %33, align 4, !tbaa !46
  %35 = and i32 %34, 7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %93

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 3
  %39 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !43
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i32, ptr %38, align 8, !tbaa !43
  %44 = load i32, ptr %9, align 8, !tbaa !42
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  br label %47

47:                                               ; preds = %42, %52
  %48 = phi i32 [ 0, %42 ], [ %54, %52 ]
  %49 = phi ptr [ %5, %42 ], [ %53, %52 ]
  %50 = tail call i64 @read(i32 noundef %8, ptr noundef %49, i64 noundef %46) #6
  %51 = icmp eq i64 %50, %46
  br i1 %51, label %52, label %87

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, ptr %49, i64 %46
  %54 = add nuw nsw i32 %48, 1
  %55 = load i32, ptr %39, align 4, !tbaa !43
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %47, label %57, !llvm.loop !47

57:                                               ; preds = %52, %37
  %58 = phi ptr [ %5, %37 ], [ %53, %52 ]
  %59 = load i32, ptr %4, align 8, !tbaa !50
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %9, align 8, !tbaa !42
  %63 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 3, i64 1
  %64 = load i32, ptr %63, align 4, !tbaa !43
  %65 = mul nsw i32 %64, %62
  %66 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 4, i64 1
  %67 = sext i32 %65 to i64
  br label %68

68:                                               ; preds = %61, %83
  %69 = phi i32 [ 0, %61 ], [ %85, %83 ]
  %70 = phi ptr [ %58, %61 ], [ %84, %83 ]
  %71 = load i32, ptr %66, align 4, !tbaa !43
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68, %78
  %74 = phi i32 [ %80, %78 ], [ 0, %68 ]
  %75 = phi ptr [ %79, %78 ], [ %70, %68 ]
  %76 = tail call i64 @read(i32 noundef %8, ptr noundef %75, i64 noundef %67) #6
  %77 = icmp eq i64 %76, %67
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = getelementptr inbounds i8, ptr %75, i64 %67
  %80 = add nuw nsw i32 %74, 1
  %81 = load i32, ptr %66, align 4, !tbaa !43
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %73, label %83, !llvm.loop !51

83:                                               ; preds = %78, %68
  %84 = phi ptr [ %70, %68 ], [ %79, %78 ]
  %85 = add nuw nsw i32 %69, 1
  %86 = icmp eq i32 %69, 0
  br i1 %86, label %68, label %91, !llvm.loop !52

87:                                               ; preds = %73, %47
  %88 = phi ptr [ %38, %47 ], [ %63, %73 ]
  %89 = load i32, ptr %88, align 4, !tbaa !43
  %90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %89)
  br label %91

91:                                               ; preds = %83, %87, %57
  %92 = phi i32 [ 1, %57 ], [ 0, %87 ], [ 1, %83 ]
  ret i32 %92

93:                                               ; preds = %32
  %94 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  tail call void @exit(i32 noundef -1) #7
  unreachable
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ReadFrameSeparate(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.video_data_file, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = add nsw i32 %10, %2
  tail call void @OpenFrameFile(ptr noundef %1, i32 noundef %11) #6
  %12 = sext i32 %3 to i64
  %13 = tail call i64 @lseek(i32 noundef %8, i64 noundef %12, i32 noundef 0) #6
  %14 = icmp eq i64 %13, %12
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.2, i32 noundef -1) #6
  br label %16

16:                                               ; preds = %15, %6
  %17 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 18
  %18 = load i32, ptr %17, align 4, !tbaa !46
  %19 = and i32 %18, 7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 19
  %23 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 3
  %24 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !43
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load i32, ptr %23, align 8, !tbaa !43
  %29 = load i32, ptr %22, align 8, !tbaa !42
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  br label %32

32:                                               ; preds = %27, %37
  %33 = phi i32 [ 0, %27 ], [ %39, %37 ]
  %34 = phi ptr [ %5, %27 ], [ %38, %37 ]
  %35 = tail call i64 @read(i32 noundef %8, ptr noundef %34, i64 noundef %31) #6
  %36 = icmp eq i64 %35, %31
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %34, i64 %31
  %39 = add nuw nsw i32 %33, 1
  %40 = load i32, ptr %24, align 4, !tbaa !43
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %32, label %42, !llvm.loop !47

42:                                               ; preds = %37, %21
  %43 = phi ptr [ %5, %21 ], [ %38, %37 ]
  %44 = load i32, ptr %4, align 8, !tbaa !50
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %22, align 8, !tbaa !42
  %48 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 3, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !43
  %50 = mul nsw i32 %49, %47
  %51 = getelementptr inbounds %struct.frame_format, ptr %4, i64 0, i32 4, i64 1
  %52 = sext i32 %50 to i64
  br label %53

53:                                               ; preds = %46, %68
  %54 = phi i32 [ 0, %46 ], [ %70, %68 ]
  %55 = phi ptr [ %43, %46 ], [ %69, %68 ]
  %56 = load i32, ptr %51, align 4, !tbaa !43
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53, %63
  %59 = phi i32 [ %65, %63 ], [ 0, %53 ]
  %60 = phi ptr [ %64, %63 ], [ %55, %53 ]
  %61 = tail call i64 @read(i32 noundef %8, ptr noundef %60, i64 noundef %52) #6
  %62 = icmp eq i64 %61, %52
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, ptr %60, i64 %52
  %65 = add nuw nsw i32 %59, 1
  %66 = load i32, ptr %51, align 4, !tbaa !43
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %58, label %68, !llvm.loop !51

68:                                               ; preds = %63, %53
  %69 = phi ptr [ %55, %53 ], [ %64, %63 ]
  %70 = add nuw nsw i32 %54, 1
  %71 = icmp eq i32 %54, 0
  br i1 %71, label %53, label %76, !llvm.loop !52

72:                                               ; preds = %58, %32
  %73 = phi ptr [ %23, %32 ], [ %48, %58 ]
  %74 = load i32, ptr %73, align 4, !tbaa !43
  %75 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %74)
  br label %76

76:                                               ; preds = %68, %72, %42
  %77 = phi i32 [ 1, %42 ], [ 0, %72 ], [ 1, %68 ]
  %78 = icmp eq i32 %8, -1
  br i1 %78, label %83, label %81

79:                                               ; preds = %16
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  tail call void @exit(i32 noundef -1) #7
  unreachable

81:                                               ; preds = %76
  %82 = tail call i32 @close(i32 noundef %8) #6
  br label %83

83:                                               ; preds = %81, %76
  ret i32 %77
}

declare void @OpenFrameFile(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !38, i64 768}
!35 = !{!"video_data_file", !36, i64 0, !36, i64 255, !36, i64 510, !38, i64 768, !38, i64 772, !39, i64 776, !38, i64 912, !38, i64 916, !38, i64 920, !38, i64 924, !38, i64 928, !38, i64 932, !38, i64 936, !38, i64 940, !38, i64 944, !38, i64 948, !38, i64 952, !41, i64 960}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"int", !36, i64 0}
!39 = !{!"frame_format", !38, i64 0, !38, i64 4, !40, i64 8, !36, i64 16, !36, i64 28, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !36, i64 72, !38, i64 84, !36, i64 88, !36, i64 100, !36, i64 112, !38, i64 124, !38, i64 128}
!40 = !{!"double", !36, i64 0}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!39, !38, i64 128}
!43 = !{!38, !38, i64 0}
!44 = !{!45, !38, i64 3992}
!45 = !{!"inp_par", !36, i64 0, !36, i64 255, !36, i64 510, !38, i64 768, !38, i64 772, !38, i64 776, !38, i64 780, !38, i64 784, !38, i64 788, !39, i64 792, !39, i64 928, !38, i64 1064, !38, i64 1068, !35, i64 1072, !35, i64 2040, !35, i64 3008, !38, i64 3976, !38, i64 3980, !38, i64 3984, !38, i64 3988, !38, i64 3992, !38, i64 3996, !38, i64 4000, !38, i64 4004, !38, i64 4008, !38, i64 4012}
!46 = !{!39, !38, i64 124}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!39, !38, i64 0}
!51 = distinct !{!51, !48, !49}
!52 = distinct !{!52, !48, !49}
