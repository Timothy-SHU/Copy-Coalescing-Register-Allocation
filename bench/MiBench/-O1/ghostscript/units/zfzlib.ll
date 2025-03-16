; ModuleID = 'zfzlib.c'
source_filename = "zfzlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_zlib_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.z_stream_s }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }

@zfzlib_op_defs.op_defs_ = internal constant [6 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zzlibE }, %struct.op_def { ptr @.str.2, ptr @zzlibD }, %struct.op_def { ptr @.str.3, ptr @zFlateE }, %struct.op_def { ptr @.str.4, ptr @zFlateD }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"1zlibEncode\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"1zlibDecode\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"1FlateEncode\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"1FlateDecode\00", align 1
@s_zlibE_template = external constant %struct.stream_template_s, align 8
@s_zlibD_template = external constant %struct.stream_template_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfzlib_op_defs() local_unnamed_addr #0 {
  ret ptr @zfzlib_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zzlibE(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_zlib_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #4
  %3 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_zlibE_template, i64 0, i32 6), align 8, !tbaa !5
  call void %3(ptr noundef nonnull %2) #4
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = icmp eq i8 %5, 2
  %7 = zext i1 %6 to i32
  %8 = call i32 @filter_write(ptr noundef %0, i32 noundef %7, ptr noundef nonnull @s_zlibE_template, ptr noundef nonnull %2, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zzlibD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_zlib_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #4
  %3 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_zlibD_template, i64 0, i32 6), align 8, !tbaa !5
  call void %3(ptr noundef nonnull %2) #4
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = icmp eq i8 %5, 2
  %7 = zext i1 %6 to i32
  %8 = call i32 @filter_read(ptr noundef %0, i32 noundef %7, ptr noundef nonnull @s_zlibD_template, ptr noundef nonnull %2, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zFlateE(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_zlib_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #4
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = load i16, ptr %8, align 8, !tbaa !12
  %10 = and i16 %9, 32
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1, %6
  %13 = phi i32 [ 1, %6 ], [ 0, %1 ]
  %14 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_zlibE_template, i64 0, i32 6), align 8, !tbaa !5
  call void %14(ptr noundef nonnull %2) #4
  %15 = call i32 @filter_write_predictor(ptr noundef %0, i32 noundef %13, ptr noundef nonnull @s_zlibE_template, ptr noundef nonnull %2) #4
  br label %16

16:                                               ; preds = %6, %12
  %17 = phi i32 [ %15, %12 ], [ -7, %6 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zFlateD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_zlib_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #4
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = load i16, ptr %8, align 8, !tbaa !12
  %10 = and i16 %9, 32
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1, %6
  %13 = phi i32 [ 1, %6 ], [ 0, %1 ]
  %14 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_zlibD_template, i64 0, i32 6), align 8, !tbaa !5
  call void %14(ptr noundef nonnull %2) #4
  %15 = call i32 @filter_read_predictor(ptr noundef %0, i32 noundef %13, ptr noundef nonnull @s_zlibD_template, ptr noundef nonnull %2) #4
  br label %16

16:                                               ; preds = %6, %12
  %17 = phi i32 [ %15, %12 ], [ -7, %6 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #4
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @filter_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @filter_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @filter_write_predictor(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @filter_read_predictor(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 40}
!6 = !{!"stream_template_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !7, i64 40, !7, i64 48}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!13, !16, i64 0}
!13 = !{!"dict_s", !14, i64 0, !14, i64 16, !14, i64 32, !14, i64 48}
!14 = !{!"ref_s", !15, i64 0, !8, i64 8}
!15 = !{!"tas_s", !16, i64 0, !16, i64 2}
!16 = !{!"short", !8, i64 0}
