; ModuleID = 'ldecod_src/decoder_test.c'
source_filename = "ldecod_src/decoder_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.decodedpic_t = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"Open encoder failed: 0x%x!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Error in decoding process: 0x%x\0A\00", align 1
@p_Dec = external local_unnamed_addr global ptr, align 8
@cfgparams = dso_local local_unnamed_addr global %struct.inp_par zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"test.264\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"test_dec.yuv\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"test_rec.yuv\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [70 x i8] c"----------------------------- JM %s %s -----------------------------\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"17.1\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"(FRExt)\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"--------------------------------------------------------------------------\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c" Input H.264 bitstream                  : %s \0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c" Output decoded YUV                     : %s \0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c" Input reference file                   : %s \0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"POC must = frame# or field# for SNRs to be correct\0A\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"  Frame          POC  Pic#   QP    SnrY     SnrU     SnrV   Y:U:V Time(ms)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !annotation !34 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.inp_par, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 4016, ptr nonnull %4) #7
  %5 = getelementptr inbounds i8, ptr %4, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4007) %5, i8 0, i64 4007, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false) #7
  %6 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %6, ptr noundef nonnull align 1 dereferenceable(13) @.str.3, i64 13, i1 false) #7
  %7 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(13) %7, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false) #7
  %8 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 3
  store i32 0, ptr %8, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 5
  store i32 2, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 7
  store i32 0, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 8
  store i32 0, ptr %12, align 4, !tbaa !47
  %13 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 24
  store i32 0, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 6
  store i32 1, ptr %14, align 4, !tbaa !49
  %15 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 17
  store i32 0, ptr %15, align 4, !tbaa !50
  %16 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 18
  store i32 2, ptr %16, align 8, !tbaa !51
  %17 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 19
  store i32 2, ptr %17, align 4, !tbaa !52
  call void @ParseCommand(ptr noundef nonnull %4, i32 noundef %0, ptr noundef %1) #7
  %18 = load ptr, ptr @stdout, align 8, !tbaa !53
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
  %20 = getelementptr inbounds %struct.inp_par, ptr %4, i64 0, i32 25
  %21 = load i32, ptr %20, align 4, !tbaa !54
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load ptr, ptr @stdout, align 8, !tbaa !53
  %25 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %24)
  %26 = load ptr, ptr @stdout, align 8, !tbaa !53
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.9, ptr noundef nonnull %4)
  %28 = load ptr, ptr @stdout, align 8, !tbaa !53
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.10, ptr noundef nonnull %6)
  %30 = load ptr, ptr @stdout, align 8, !tbaa !53
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.11, ptr noundef nonnull %7)
  %32 = load ptr, ptr @stdout, align 8, !tbaa !53
  %33 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %32)
  br label %34

34:                                               ; preds = %23, %2
  %35 = load i32, ptr %11, align 8, !tbaa !46
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load ptr, ptr @stdout, align 8, !tbaa !53
  %39 = call i64 @fwrite(ptr nonnull @.str.12, i64 51, i64 1, ptr %38)
  %40 = load ptr, ptr @stdout, align 8, !tbaa !53
  %41 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %40)
  %42 = load ptr, ptr @stdout, align 8, !tbaa !53
  %43 = call i64 @fwrite(ptr nonnull @.str.13, i64 75, i64 1, ptr %42)
  %44 = load ptr, ptr @stdout, align 8, !tbaa !53
  %45 = call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %44)
  br label %46

46:                                               ; preds = %34, %37
  %47 = call i32 @OpenDecoder(ptr noundef nonnull %4) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @stderr, align 8, !tbaa !53
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str, i32 noundef %47) #8
  br label %113

52:                                               ; preds = %46, %79
  %53 = phi i32 [ %78, %79 ], [ 0, %46 ]
  %54 = call i32 @DecodeOneFrame(ptr noundef nonnull %3) #7
  %55 = icmp eq i32 %54, 0
  %56 = icmp ult i32 %54, 2
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load ptr, ptr %3, align 8, !tbaa !53
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.decodedpic_t, ptr %58, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !55
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, ptr %58, align 8, !tbaa !57
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  br i1 %63, label %72, label %68

68:                                               ; preds = %60, %67
  %69 = load i32, ptr %58, align 8, !tbaa !57
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %64
  store i32 0, ptr %58, align 8, !tbaa !57
  br label %72

72:                                               ; preds = %71, %57, %67, %68
  %73 = add nsw i32 %53, 1
  br label %77

74:                                               ; preds = %52
  %75 = load ptr, ptr @stderr, align 8, !tbaa !53
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.1, i32 noundef %54) #8
  br label %77

77:                                               ; preds = %72, %74
  %78 = phi i32 [ %73, %72 ], [ %53, %74 ]
  br i1 %55, label %79, label %87

79:                                               ; preds = %77
  %80 = load ptr, ptr @p_Dec, align 8, !tbaa !53
  %81 = load ptr, ptr %80, align 8, !tbaa !58
  %82 = getelementptr inbounds %struct.inp_par, ptr %81, i64 0, i32 24
  %83 = load i32, ptr %82, align 8, !tbaa !48
  %84 = icmp eq i32 %83, 0
  %85 = icmp slt i32 %78, %83
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %52, label %87, !llvm.loop !61

87:                                               ; preds = %79, %77
  %88 = call i32 @FinitDecoder(ptr noundef nonnull %3) #7
  %89 = load ptr, ptr %3, align 8, !tbaa !53
  %90 = icmp eq ptr %89, null
  br i1 %90, label %111, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.decodedpic_t, ptr %89, i64 0, i32 4
  %93 = load i32, ptr %92, align 8, !tbaa !55
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, ptr %89, align 8, !tbaa !57
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  br i1 %94, label %111, label %99

99:                                               ; preds = %91, %98
  %100 = load i32, ptr %89, align 8, !tbaa !57
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %111

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %108
  %104 = phi ptr [ %106, %108 ], [ %89, %102 ]
  store i32 0, ptr %104, align 8, !tbaa !57
  %105 = getelementptr inbounds %struct.decodedpic_t, ptr %104, i64 0, i32 14
  %106 = load ptr, ptr %105, align 8, !tbaa !64
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, ptr %106, align 8, !tbaa !57
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %103, !llvm.loop !65

111:                                              ; preds = %103, %108, %87, %98, %99
  %112 = call i32 (...) @CloseDecoder() #7
  br label %113

113:                                              ; preds = %111, %49
  %114 = phi i32 [ -1, %49 ], [ 0, %111 ]
  call void @llvm.lifetime.end.p0(i64 4016, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %114
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @OpenDecoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare i32 @DecodeOneFrame(ptr noundef) local_unnamed_addr #2

declare i32 @FinitDecoder(ptr noundef) local_unnamed_addr #2

declare i32 @CloseDecoder(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @ParseCommand(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }

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
!34 = !{!"instr_prof_hash_mismatch"}
!35 = !{!36, !39, i64 768}
!36 = !{!"inp_par", !37, i64 0, !37, i64 255, !37, i64 510, !39, i64 768, !39, i64 772, !39, i64 776, !39, i64 780, !39, i64 784, !39, i64 788, !40, i64 792, !40, i64 928, !39, i64 1064, !39, i64 1068, !42, i64 1072, !42, i64 2040, !42, i64 3008, !39, i64 3976, !39, i64 3980, !39, i64 3984, !39, i64 3988, !39, i64 3992, !39, i64 3996, !39, i64 4000, !39, i64 4004, !39, i64 4008, !39, i64 4012}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"frame_format", !39, i64 0, !39, i64 4, !41, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!41 = !{!"double", !37, i64 0}
!42 = !{!"video_data_file", !37, i64 0, !37, i64 255, !37, i64 510, !39, i64 768, !39, i64 772, !40, i64 776, !39, i64 912, !39, i64 916, !39, i64 920, !39, i64 924, !39, i64 928, !39, i64 932, !39, i64 936, !39, i64 940, !39, i64 944, !39, i64 948, !39, i64 952, !43, i64 960}
!43 = !{!"any pointer", !37, i64 0}
!44 = !{!36, !39, i64 772}
!45 = !{!36, !39, i64 776}
!46 = !{!36, !39, i64 784}
!47 = !{!36, !39, i64 788}
!48 = !{!36, !39, i64 4008}
!49 = !{!36, !39, i64 780}
!50 = !{!36, !39, i64 3980}
!51 = !{!36, !39, i64 3984}
!52 = !{!36, !39, i64 3988}
!53 = !{!43, !43, i64 0}
!54 = !{!36, !39, i64 4012}
!55 = !{!56, !39, i64 16}
!56 = !{!"decodedpic_t", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !43, i64 24, !43, i64 32, !43, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !43, i64 72}
!57 = !{!56, !39, i64 0}
!58 = !{!59, !43, i64 0}
!59 = !{!"decoder_params", !43, i64 0, !43, i64 8, !60, i64 16, !39, i64 24, !43, i64 32, !39, i64 40}
!60 = !{!"long", !37, i64 0}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!56, !43, i64 72}
!65 = distinct !{!65, !62, !63}
