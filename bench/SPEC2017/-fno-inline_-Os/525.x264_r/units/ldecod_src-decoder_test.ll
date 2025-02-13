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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.inp_par, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4016, ptr nonnull %4) #8
  call fastcc void @Configure(ptr noundef nonnull %4, i32 noundef %0, ptr noundef %1) #9
  %5 = call i32 @OpenDecoder(ptr noundef nonnull %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !34
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %5) #11
  br label %33

10:                                               ; preds = %2, %20
  %11 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %12 = call i32 @DecodeOneFrame(ptr noundef nonnull %3) #10
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !34
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef %12) #11
  br label %29

17:                                               ; preds = %10
  %18 = icmp eq i32 %12, 0
  %19 = load ptr, ptr %3, align 8, !tbaa !34
  call fastcc void @WriteOneFrame(ptr noundef %19, i32 noundef 0) #9
  br i1 %18, label %20, label %29

20:                                               ; preds = %17
  %21 = add nuw nsw i32 %11, 1
  %22 = load ptr, ptr @p_Dec, align 8, !tbaa !34
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds %struct.inp_par, ptr %23, i64 0, i32 24
  %25 = load i32, ptr %24, align 8, !tbaa !42
  %26 = icmp eq i32 %25, 0
  %27 = icmp slt i32 %21, %25
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %10, label %29, !llvm.loop !47

29:                                               ; preds = %20, %17, %14
  %30 = call i32 @FinitDecoder(ptr noundef nonnull %3) #10
  %31 = load ptr, ptr %3, align 8, !tbaa !34
  call fastcc void @WriteOneFrame(ptr noundef %31, i32 noundef 1) #9
  %32 = call i32 (...) @CloseDecoder() #10
  br label %33

33:                                               ; preds = %29, %7
  %34 = phi i32 [ -1, %7 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 4016, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @Configure(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !49 {
  %4 = getelementptr i8, ptr %0, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4007) %4, i8 0, i64 4007, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 1 dereferenceable(9) @.str.2, i64 9, i1 false) #10
  %5 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %5, ptr noundef nonnull align 1 dereferenceable(13) @.str.3, i64 13, i1 false) #10
  %6 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %6, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false) #10
  %7 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !50
  %8 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 5
  store i32 2, ptr %8, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 8
  store i32 0, ptr %10, align 4, !tbaa !52
  %11 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 6
  store i32 1, ptr %11, align 4, !tbaa !53
  %12 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 18
  store i32 2, ptr %12, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 19
  store i32 2, ptr %13, align 4, !tbaa !55
  tail call void @ParseCommand(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10
  %14 = load ptr, ptr @stdout, align 8, !tbaa !34
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #9
  %16 = getelementptr inbounds %struct.inp_par, ptr %0, i64 0, i32 25
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load ptr, ptr @stdout, align 8, !tbaa !34
  %21 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %20)
  %22 = load ptr, ptr @stdout, align 8, !tbaa !34
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.9, ptr noundef nonnull %0) #9
  %24 = load ptr, ptr @stdout, align 8, !tbaa !34
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.10, ptr noundef nonnull %5) #9
  %26 = load ptr, ptr @stdout, align 8, !tbaa !34
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.11, ptr noundef nonnull %6) #9
  %28 = load ptr, ptr @stdout, align 8, !tbaa !34
  %29 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %28)
  br label %30

30:                                               ; preds = %19, %3
  %31 = load i32, ptr %9, align 8, !tbaa !57
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load ptr, ptr @stdout, align 8, !tbaa !34
  %35 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 51, i64 1, ptr %34)
  %36 = load ptr, ptr @stdout, align 8, !tbaa !34
  %37 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %36)
  %38 = load ptr, ptr @stdout, align 8, !tbaa !34
  %39 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 75, i64 1, ptr %38)
  %40 = load ptr, ptr @stdout, align 8, !tbaa !34
  %41 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 75, i64 1, ptr %40)
  br label %42

42:                                               ; preds = %33, %30
  ret void
}

; Function Attrs: optsize
declare i32 @OpenDecoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @DecodeOneFrame(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @WriteOneFrame(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !58 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.decodedpic_t, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 2
  %8 = load i32, ptr %0, align 8, !tbaa !61
  br i1 %7, label %9, label %11

9:                                                ; preds = %4
  %10 = icmp eq i32 %8, 3
  br i1 %10, label %13, label %24

11:                                               ; preds = %4
  %12 = icmp eq i32 %8, 1
  br i1 %12, label %13, label %24

13:                                               ; preds = %11, %9
  %14 = icmp ne i32 %1, 0
  br label %15

15:                                               ; preds = %20, %13
  %16 = phi ptr [ %0, %13 ], [ %18, %20 ]
  store i32 0, ptr %16, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.decodedpic_t, ptr %16, i64 0, i32 14
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %18, align 8, !tbaa !61
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %14, %22
  br i1 %23, label %15, label %24, !llvm.loop !63

24:                                               ; preds = %15, %20, %9, %11, %2
  ret void
}

; Function Attrs: optsize
declare i32 @FinitDecoder(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CloseDecoder(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @ParseCommand(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { cold optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"decoder_params", !35, i64 0, !35, i64 8, !40, i64 16, !41, i64 24, !35, i64 32, !41, i64 40}
!40 = !{!"long", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!43, !41, i64 4008}
!43 = !{!"inp_par", !36, i64 0, !36, i64 255, !36, i64 510, !41, i64 768, !41, i64 772, !41, i64 776, !41, i64 780, !41, i64 784, !41, i64 788, !44, i64 792, !44, i64 928, !41, i64 1064, !41, i64 1068, !46, i64 1072, !46, i64 2040, !46, i64 3008, !41, i64 3976, !41, i64 3980, !41, i64 3984, !41, i64 3988, !41, i64 3992, !41, i64 3996, !41, i64 4000, !41, i64 4004, !41, i64 4008, !41, i64 4012}
!44 = !{!"frame_format", !41, i64 0, !41, i64 4, !45, i64 8, !36, i64 16, !36, i64 28, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !36, i64 72, !41, i64 84, !36, i64 88, !36, i64 100, !36, i64 112, !41, i64 124, !41, i64 128}
!45 = !{!"double", !36, i64 0}
!46 = !{!"video_data_file", !36, i64 0, !36, i64 255, !36, i64 510, !41, i64 768, !41, i64 772, !44, i64 776, !41, i64 912, !41, i64 916, !41, i64 920, !41, i64 924, !41, i64 928, !41, i64 932, !41, i64 936, !41, i64 940, !41, i64 944, !41, i64 948, !41, i64 952, !35, i64 960}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"decoder_test.c:Configure"}
!50 = !{!43, !41, i64 772}
!51 = !{!43, !41, i64 776}
!52 = !{!43, !41, i64 788}
!53 = !{!43, !41, i64 780}
!54 = !{!43, !41, i64 3984}
!55 = !{!43, !41, i64 3988}
!56 = !{!43, !41, i64 4012}
!57 = !{!43, !41, i64 784}
!58 = !{!"decoder_test.c:WriteOneFrame"}
!59 = !{!60, !41, i64 16}
!60 = !{!"decodedpic_t", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !35, i64 24, !35, i64 32, !35, i64 40, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !35, i64 72}
!61 = !{!60, !41, i64 0}
!62 = !{!60, !35, i64 72}
!63 = distinct !{!63, !48}
