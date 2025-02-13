; ModuleID = 'x264_src/output/flv_bytestream.c'
source_filename = "x264_src/output/flv_bytestream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.flv_buffer = type { ptr, i32, i32, ptr, i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @dbl2int(double noundef %0) local_unnamed_addr #0 {
  %2 = bitcast double %0 to i64
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_put_byte(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1, !tbaa !34
  %4 = call i32 @flv_append_data(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #10, !range !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @flv_append_data(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !38
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !44
  br label %23

12:                                               ; preds = %3, %12
  %13 = phi i32 [ %15, %12 ], [ 16, %3 ]
  %14 = icmp ugt i32 %6, %13
  %15 = shl i32 %13, 1
  br i1 %14, label %12, label %16, !llvm.loop !45

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !44
  %18 = zext i32 %13 to i64
  %19 = tail call ptr @realloc(ptr noundef %17, i64 noundef %18) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  store ptr %19, ptr %0, align 8, !tbaa !44
  store i32 %13, ptr %7, align 4, !tbaa !43
  %22 = load i32, ptr %4, align 8, !tbaa !38
  br label %23

23:                                               ; preds = %10, %21
  %24 = phi i32 [ %5, %10 ], [ %22, %21 ]
  %25 = phi ptr [ %11, %10 ], [ %19, %21 ]
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  %28 = zext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr align 1 %1, i64 %28, i1 false)
  store i32 %6, ptr %4, align 8, !tbaa !38
  br label %29

29:                                               ; preds = %16, %23
  %30 = phi i32 [ 0, %23 ], [ -1, %16 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_put_be32(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = lshr i32 %1, 24
  %4 = trunc i32 %3 to i8
  tail call void @x264_put_byte(ptr noundef %0, i8 noundef zeroext %4) #10
  %5 = lshr i32 %1, 16
  %6 = trunc i32 %5 to i8
  tail call void @x264_put_byte(ptr noundef %0, i8 noundef zeroext %6) #10
  %7 = lshr i32 %1, 8
  %8 = trunc i32 %7 to i8
  tail call void @x264_put_byte(ptr noundef %0, i8 noundef zeroext %8) #10
  %9 = trunc i32 %1 to i8
  tail call void @x264_put_byte(ptr noundef %0, i8 noundef zeroext %9) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_put_be64(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = lshr i64 %1, 32
  %4 = trunc i64 %3 to i32
  tail call void @x264_put_be32(ptr noundef %0, i32 noundef %4) #10
  %5 = trunc i64 %1 to i32
  tail call void @x264_put_be32(ptr noundef %0, i32 noundef %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_put_be16(ptr nocapture noundef %0, i16 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = lshr i16 %1, 8
  %4 = trunc i16 %3 to i8
  tail call void @x264_put_byte(ptr noundef %0, i8 noundef zeroext %4) #10
  %5 = trunc i16 %1 to i8
  tail call void @x264_put_byte(ptr noundef %0, i8 noundef zeroext %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_put_be24(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = lshr i32 %1, 8
  %4 = trunc i32 %3 to i16
  tail call void @x264_put_be16(ptr noundef %0, i16 noundef zeroext %4) #10
  %5 = trunc i32 %1 to i8
  tail call void @x264_put_byte(ptr noundef %0, i8 noundef zeroext %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_put_tag(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load i8, ptr %1, align 1, !tbaa !34
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2, %5
  %6 = phi i8 [ %9, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %8, %5 ], [ %1, %2 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  tail call void @x264_put_byte(ptr noundef %0, i8 noundef zeroext %6) #10
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %5, !llvm.loop !47

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_put_amf_string(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %4 = trunc i64 %3 to i16
  tail call void @x264_put_be16(ptr noundef %0, i16 noundef zeroext %4) #10
  %5 = trunc i64 %3 to i32
  %6 = and i32 %5, 65535
  %7 = tail call i32 @flv_append_data(ptr noundef %0, ptr noundef %1, i32 noundef %6) #10, !range !37
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_put_amf_double(ptr nocapture noundef %0, double noundef %1) local_unnamed_addr #1 {
  tail call void @x264_put_byte(ptr noundef %0, i8 noundef zeroext 0) #10
  %3 = tail call i64 @dbl2int(double noundef %1) #10
  tail call void @x264_put_be64(ptr noundef %0, i64 noundef %3) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @flv_create_writer(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load ptr, ptr @stdout, align 8, !tbaa !48
  br label %11

9:                                                ; preds = %4
  %10 = tail call noalias ptr @fopen64(ptr noundef %0, ptr noundef nonnull @.str.1) #10
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  %13 = getelementptr inbounds %struct.flv_buffer, ptr %2, i64 0, i32 3
  store ptr %12, ptr %13, align 8
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %2) #13
  br label %16

16:                                               ; preds = %11, %1, %15
  %17 = phi ptr [ null, %15 ], [ null, %1 ], [ %2, %11 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @rewrite_amf_be24(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = lshr i32 %1, 16
  %5 = trunc i32 %4 to i8
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  store i8 %5, ptr %8, align 1, !tbaa !34
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %0, align 8, !tbaa !44
  %12 = getelementptr inbounds i8, ptr %11, i64 %7
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %10, ptr %13, align 1, !tbaa !34
  %14 = trunc i32 %1 to i8
  %15 = load ptr, ptr %0, align 8, !tbaa !44
  %16 = getelementptr inbounds i8, ptr %15, i64 %7
  %17 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %14, ptr %17, align 1, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef i32 @flv_flush_data(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call i64 @fwrite(ptr noundef %6, i64 noundef %7, i64 noundef 1, ptr noundef %9) #10
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = load i32, ptr %2, align 8, !tbaa !38
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.flv_buffer, ptr %0, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !50
  %17 = add i64 %16, %14
  store i64 %17, ptr %15, align 8, !tbaa !50
  store i32 0, ptr %2, align 8, !tbaa !38
  br label %18

18:                                               ; preds = %5, %1, %12
  %19 = phi i32 [ 0, %12 ], [ 0, %1 ], [ -1, %5 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize allocsize(1) }
attributes #12 = { nounwind optsize willreturn memory(read) }
attributes #13 = { nounwind optsize }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{i32 -1, i32 1}
!38 = !{!39, !41, i64 8}
!39 = !{!"flv_buffer", !40, i64 0, !41, i64 8, !41, i64 12, !40, i64 16, !42, i64 24}
!40 = !{!"any pointer", !35, i64 0}
!41 = !{!"int", !35, i64 0}
!42 = !{!"long", !35, i64 0}
!43 = !{!39, !41, i64 12}
!44 = !{!39, !40, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = !{!40, !40, i64 0}
!49 = !{!39, !40, i64 16}
!50 = !{!39, !42, i64 24}
