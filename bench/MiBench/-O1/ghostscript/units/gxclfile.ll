; ModuleID = 'gxclfile.c'
source_filename = "gxclfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@gp_scratch_file_name_prefix = external constant [0 x i8], align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [37 x i8] c"Could not open the scratch file %s.\0A\00", align 1
@gp_fmode_wb = external constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@gp_fmode_binary_suffix = external constant [0 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @clist_fopen(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = load i8, ptr %0, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i8, ptr %1, align 1, !tbaa !5
  %10 = icmp eq i8 %9, 114
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @gp_open_scratch_file(ptr noundef nonnull @gp_scratch_file_name_prefix, ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  br label %15

13:                                               ; preds = %5
  %14 = tail call ptr @gp_fopen(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %14, %13 ], [ %12, %11 ]
  store ptr %16, ptr %2, align 8, !tbaa !8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr @stderr, align 8, !tbaa !8
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull %0) #11
  br label %21

21:                                               ; preds = %15, %8, %18
  %22 = phi i32 [ -9, %18 ], [ -9, %8 ], [ 0, %15 ]
  ret i32 %22
}

declare ptr @gp_open_scratch_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gp_fopen(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @clist_fclose(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = tail call i32 @fclose(ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @unlink(ptr noundef %1)
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 0, i32 -12
  br label %12

12:                                               ; preds = %8, %6, %3
  %13 = phi i32 [ -12, %3 ], [ %11, %8 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @clist_unlink(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call i32 @unlink(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 0, i32 -12
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @clist_space_available(i64 noundef returned %0) local_unnamed_addr #4 {
  ret i64 %0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @clist_fwrite_chars(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = zext i32 %1 to i64
  %5 = tail call i64 @fwrite(ptr noundef %0, i64 noundef 1, i64 noundef %4, ptr noundef %2)
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @clist_fread_chars(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  switch i32 %1, label %4 [
    i32 8, label %8
    i32 7, label %12
    i32 6, label %17
    i32 5, label %22
    i32 4, label %27
    i32 3, label %32
    i32 2, label %37
    i32 1, label %42
  ]

4:                                                ; preds = %3
  %5 = zext i32 %1 to i64
  %6 = tail call i64 @fread(ptr noundef %0, i64 noundef 1, i64 noundef %5, ptr noundef %2)
  %7 = trunc i64 %6 to i32
  br label %46

8:                                                ; preds = %3
  %9 = tail call i32 @getc(ptr noundef %2)
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %10, ptr %0, align 1, !tbaa !5
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi ptr [ %0, %3 ], [ %11, %8 ]
  %14 = tail call i32 @getc(ptr noundef %2)
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %15, ptr %13, align 1, !tbaa !5
  br label %17

17:                                               ; preds = %3, %12
  %18 = phi ptr [ %0, %3 ], [ %16, %12 ]
  %19 = tail call i32 @getc(ptr noundef %2)
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 %20, ptr %18, align 1, !tbaa !5
  br label %22

22:                                               ; preds = %3, %17
  %23 = phi ptr [ %0, %3 ], [ %21, %17 ]
  %24 = tail call i32 @getc(ptr noundef %2)
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 %25, ptr %23, align 1, !tbaa !5
  br label %27

27:                                               ; preds = %3, %22
  %28 = phi ptr [ %0, %3 ], [ %26, %22 ]
  %29 = tail call i32 @getc(ptr noundef %2)
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %30, ptr %28, align 1, !tbaa !5
  br label %32

32:                                               ; preds = %3, %27
  %33 = phi ptr [ %0, %3 ], [ %31, %27 ]
  %34 = tail call i32 @getc(ptr noundef %2)
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %35, ptr %33, align 1, !tbaa !5
  br label %37

37:                                               ; preds = %3, %32
  %38 = phi ptr [ %0, %3 ], [ %36, %32 ]
  %39 = tail call i32 @getc(ptr noundef %2)
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %40, ptr %38, align 1, !tbaa !5
  br label %42

42:                                               ; preds = %3, %37
  %43 = phi ptr [ %0, %3 ], [ %41, %37 ]
  %44 = tail call i32 @getc(ptr noundef %2)
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %43, align 1, !tbaa !5
  br label %46

46:                                               ; preds = %42, %4
  %47 = phi i32 [ %7, %4 ], [ %1, %42 ]
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind memory(read) uwtable
define dso_local noundef i32 @clist_ferror_code(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = tail call i32 @ferror(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 0, i32 -12
  ret i32 %4
}

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @clist_ftell(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = tail call i64 @ftell(ptr noundef %0)
  ret i64 %2
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clist_rewind(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i8], align 1
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %7 = tail call ptr @freopen(ptr noundef %2, ptr noundef nonnull @gp_fmode_wb, ptr noundef %0) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false) #10
  %8 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @gp_fmode_binary_suffix) #10
  %9 = call ptr @freopen(ptr noundef %2, ptr noundef nonnull %4, ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %11

10:                                               ; preds = %3
  tail call void @rewind(ptr noundef %0)
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

declare ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @clist_fseek(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #3 {
  %5 = tail call i32 @fseek(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
