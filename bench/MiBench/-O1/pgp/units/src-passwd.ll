; ModuleID = 'src/passwd.c'
source_filename = "src/passwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MD5Context = type { [4 x i64], [2 x i64], [64 x i8] }

@showpass = dso_local local_unnamed_addr global i8 0, align 1
@pgpout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"\0AEnter pass phrase: \00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\0AEnter same pass phrase again: \00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"\0A\07Error: Pass phrases were different.  Try again.\00", align 1
@filter_mode = external local_unnamed_addr global i8, align 1
@quietmode = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define dso_local void @hashpass(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.MD5Context, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #6
  call void @MD5Init(ptr noundef nonnull %4) #6
  call void @MD5Update(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %1) #6
  call void @MD5Final(ptr noundef %2, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @MD5Init(ptr noundef) local_unnamed_addr #2

declare void @MD5Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @MD5Final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @GetHashedPassPhrase(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.MD5Context, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #6
  %6 = load i8, ptr @showpass, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i8 %1, i8 0
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i32
  %11 = icmp ult i8 %8, 2
  %12 = load ptr, ptr @pgpout, align 8, !tbaa !8
  %13 = tail call ptr @LANG(ptr noundef nonnull @.str) #6
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef %13)
  %15 = load ptr, ptr @pgpout, align 8, !tbaa !8
  %16 = tail call i32 @fflush(ptr noundef %15)
  %17 = call i32 @getstring(ptr noundef nonnull %4, i32 noundef 253, i32 noundef %10) #6
  br i1 %11, label %35, label %18

18:                                               ; preds = %2, %25
  %19 = load ptr, ptr @pgpout, align 8, !tbaa !8
  %20 = call ptr @LANG(ptr noundef nonnull @.str.1) #6
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef %20)
  %22 = call i32 @getstring(ptr noundef nonnull %5, i32 noundef 253, i32 noundef %10) #6
  %23 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr @pgpout, align 8, !tbaa !8
  %27 = call ptr @LANG(ptr noundef nonnull @.str.2) #6
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef %27)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false)
  %29 = load ptr, ptr @pgpout, align 8, !tbaa !8
  %30 = call ptr @LANG(ptr noundef nonnull @.str) #6
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef %30)
  %32 = load ptr, ptr @pgpout, align 8, !tbaa !8
  %33 = call i32 @fflush(ptr noundef %32)
  %34 = call i32 @getstring(ptr noundef nonnull %4, i32 noundef 253, i32 noundef %10) #6
  br i1 %11, label %35, label %18, !llvm.loop !10

35:                                               ; preds = %25, %18, %2
  br i1 %9, label %45, label %36

36:                                               ; preds = %35
  %37 = load i8, ptr @filter_mode, align 1, !tbaa !5
  %38 = icmp ne i8 %37, 0
  %39 = load i8, ptr @quietmode, align 1
  %40 = icmp ne i8 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load ptr, ptr @pgpout, align 8, !tbaa !8
  %44 = call i32 @putc(i32 noundef 10, ptr noundef %43)
  br label %45

45:                                               ; preds = %36, %42, %35
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #7
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #6
  call void @MD5Init(ptr noundef nonnull %3) #6
  call void @MD5Update(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %47) #6
  call void @MD5Final(ptr noundef %0, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false)
  br label %50

50:                                               ; preds = %45, %49
  %51 = phi i32 [ 1, %49 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #6
  ret i32 %51
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @LANG(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

declare i32 @getstring(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
