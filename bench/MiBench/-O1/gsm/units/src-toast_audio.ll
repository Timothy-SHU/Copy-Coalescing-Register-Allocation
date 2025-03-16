; ModuleID = 'src/toast_audio.c'
source_filename = "src/toast_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@in = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [100 x i8] c"%s: bad (missing?) header in Sun audio file \22%s\22;\0A\09Try one of -u, -a, -l instead (%s -h for help).\0A\00", align 1
@progname = external local_unnamed_addr global ptr, align 8
@inname = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@input = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"%s: warning: file format #%lu for %s not implemented, defaulting to u-law.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".snd\00", align 1
@out = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @audio_init_input() local_unnamed_addr #0 {
  %1 = load ptr, ptr @in, align 8, !tbaa !5
  %2 = tail call i32 @fgetc(ptr noundef %1)
  %3 = icmp eq i32 %2, 46
  br i1 %3, label %4, label %102

4:                                                ; preds = %0
  %5 = load ptr, ptr @in, align 8, !tbaa !5
  %6 = tail call i32 @fgetc(ptr noundef %5)
  %7 = icmp eq i32 %6, 115
  br i1 %7, label %8, label %102

8:                                                ; preds = %4
  %9 = load ptr, ptr @in, align 8, !tbaa !5
  %10 = tail call i32 @fgetc(ptr noundef %9)
  %11 = icmp eq i32 %10, 110
  br i1 %11, label %12, label %102

12:                                               ; preds = %8
  %13 = load ptr, ptr @in, align 8, !tbaa !5
  %14 = tail call i32 @fgetc(ptr noundef %13)
  %15 = icmp eq i32 %14, 100
  br i1 %15, label %16, label %102

16:                                               ; preds = %12
  %17 = load ptr, ptr @in, align 8, !tbaa !5
  %18 = tail call i32 @getc(ptr noundef %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @getc(ptr noundef %17)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @getc(ptr noundef %17)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @getc(ptr noundef %17)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = shl i32 %18, 24
  %31 = shl i32 %21, 16
  %32 = and i32 %31, 16711680
  %33 = or disjoint i32 %32, %30
  %34 = shl i32 %24, 8
  %35 = and i32 %34, 65280
  %36 = or disjoint i32 %35, %33
  %37 = and i32 %27, 255
  %38 = or disjoint i32 %37, %36
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %39, -16
  br label %41

41:                                               ; preds = %16, %20, %23, %26, %29
  %42 = phi i64 [ undef, %16 ], [ undef, %20 ], [ undef, %23 ], [ undef, %26 ], [ %40, %29 ]
  %43 = phi i1 [ false, %16 ], [ false, %20 ], [ false, %23 ], [ false, %26 ], [ true, %29 ]
  br i1 %43, label %44, label %102

44:                                               ; preds = %41
  %45 = load ptr, ptr @in, align 8, !tbaa !5
  %46 = tail call i32 @getc(ptr noundef %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %68, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @getc(ptr noundef %45)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @getc(ptr noundef %45)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %68, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @getc(ptr noundef %45)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = shl i32 %46, 24
  %59 = shl i32 %49, 16
  %60 = and i32 %59, 16711680
  %61 = or disjoint i32 %60, %58
  %62 = shl i32 %52, 8
  %63 = and i32 %62, 65280
  %64 = or disjoint i32 %63, %61
  %65 = and i32 %55, 255
  %66 = or disjoint i32 %65, %64
  %67 = zext i32 %66 to i64
  br label %68

68:                                               ; preds = %44, %48, %51, %54, %57
  %69 = phi i64 [ undef, %44 ], [ undef, %48 ], [ undef, %51 ], [ undef, %54 ], [ %67, %57 ]
  %70 = phi i1 [ false, %44 ], [ false, %48 ], [ false, %51 ], [ false, %54 ], [ true, %57 ]
  br i1 %70, label %71, label %102

71:                                               ; preds = %68
  %72 = load ptr, ptr @in, align 8, !tbaa !5
  %73 = tail call i32 @getc(ptr noundef %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %95, label %75

75:                                               ; preds = %71
  %76 = tail call i32 @getc(ptr noundef %72)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %95, label %78

78:                                               ; preds = %75
  %79 = tail call i32 @getc(ptr noundef %72)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %95, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @getc(ptr noundef %72)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %95, label %84

84:                                               ; preds = %81
  %85 = shl i32 %73, 24
  %86 = shl i32 %76, 16
  %87 = and i32 %86, 16711680
  %88 = or disjoint i32 %87, %85
  %89 = shl i32 %79, 8
  %90 = and i32 %89, 65280
  %91 = or disjoint i32 %90, %88
  %92 = and i32 %82, 255
  %93 = or disjoint i32 %92, %91
  %94 = zext i32 %93 to i64
  br label %95

95:                                               ; preds = %71, %75, %78, %81, %84
  %96 = phi i64 [ %69, %71 ], [ %69, %75 ], [ %69, %78 ], [ %69, %81 ], [ %94, %84 ]
  %97 = phi i1 [ false, %71 ], [ false, %75 ], [ false, %78 ], [ false, %81 ], [ true, %84 ]
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load ptr, ptr @in, align 8, !tbaa !5
  %100 = tail call i32 @fseek(ptr noundef %99, i64 noundef %42, i32 noundef 1)
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98, %95, %68, %41, %12, %8, %4, %0
  %103 = load ptr, ptr @stderr, align 8, !tbaa !5
  %104 = load ptr, ptr @progname, align 8, !tbaa !5
  %105 = load ptr, ptr @inname, align 8
  %106 = icmp eq ptr %105, null
  %107 = select i1 %106, ptr @.str.1, ptr %105
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str, ptr noundef %104, ptr noundef nonnull %107, ptr noundef %104) #3
  br label %118

109:                                              ; preds = %98
  switch i64 %96, label %113 [
    i64 1, label %110
    i64 2, label %111
    i64 3, label %112
  ]

110:                                              ; preds = %109
  store ptr @ulaw_input, ptr @input, align 8, !tbaa !5
  br label %118

111:                                              ; preds = %109
  store ptr @alaw_input, ptr @input, align 8, !tbaa !5
  br label %118

112:                                              ; preds = %109
  store ptr @linear_input, ptr @input, align 8, !tbaa !5
  br label %118

113:                                              ; preds = %109
  %114 = load ptr, ptr @stderr, align 8, !tbaa !5
  %115 = load ptr, ptr @progname, align 8, !tbaa !5
  %116 = load ptr, ptr @inname, align 8, !tbaa !5
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.2, ptr noundef %115, i64 noundef %96, ptr noundef %116) #3
  store ptr @ulaw_input, ptr @input, align 8, !tbaa !5
  br label %118

118:                                              ; preds = %110, %111, %112, %113, %102
  %119 = phi i32 [ -1, %102 ], [ 0, %113 ], [ 0, %112 ], [ 0, %111 ], [ 0, %110 ]
  ret i32 %119
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @ulaw_input(ptr noundef) #2

declare i32 @alaw_input(ptr noundef) #2

declare i32 @linear_input(ptr noundef) #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @audio_init_output() local_unnamed_addr #0 {
  %1 = load ptr, ptr @out, align 8, !tbaa !5
  %2 = tail call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef %1)
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %69, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @out, align 8, !tbaa !5
  %6 = tail call i32 @putc(i32 noundef 0, ptr noundef %5)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %69, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @putc(i32 noundef 0, ptr noundef %5)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %69, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @putc(i32 noundef 0, ptr noundef %5)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %69, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @putc(i32 noundef 32, ptr noundef %5)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %69, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @out, align 8, !tbaa !5
  %19 = tail call i32 @putc(i32 noundef -1, ptr noundef %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %69, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @putc(i32 noundef -1, ptr noundef %18)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %69, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @putc(i32 noundef -1, ptr noundef %18)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %69, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @putc(i32 noundef -1, ptr noundef %18)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %69, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @out, align 8, !tbaa !5
  %32 = tail call i32 @putc(i32 noundef 0, ptr noundef %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %69, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @putc(i32 noundef 0, ptr noundef %31)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %69, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @putc(i32 noundef 0, ptr noundef %31)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %69, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @putc(i32 noundef 1, ptr noundef %31)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %69, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @out, align 8, !tbaa !5
  %45 = tail call i32 @putc(i32 noundef 0, ptr noundef %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %69, label %47

47:                                               ; preds = %43
  %48 = tail call i32 @putc(i32 noundef 0, ptr noundef %44)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %69, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @putc(i32 noundef 31, ptr noundef %44)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @putc(i32 noundef 64, ptr noundef %44)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @out, align 8, !tbaa !5
  %58 = tail call fastcc i32 @put_u32(ptr noundef %57, i64 noundef 1), !range !9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load ptr, ptr @out, align 8, !tbaa !5
  %62 = tail call fastcc i32 @put_u32(ptr noundef %61, i64 noundef 0), !range !9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load ptr, ptr @out, align 8, !tbaa !5
  %66 = tail call fastcc i32 @put_u32(ptr noundef %65, i64 noundef 0), !range !9
  %67 = icmp ne i32 %66, 0
  %68 = sext i1 %67 to i32
  br label %69

69:                                               ; preds = %50, %47, %43, %37, %34, %30, %24, %21, %17, %11, %8, %4, %64, %0, %14, %27, %40, %53, %56, %60
  %70 = phi i32 [ -1, %60 ], [ -1, %56 ], [ -1, %53 ], [ -1, %40 ], [ -1, %27 ], [ -1, %14 ], [ -1, %0 ], [ %68, %64 ], [ -1, %4 ], [ -1, %8 ], [ -1, %11 ], [ -1, %17 ], [ -1, %21 ], [ -1, %24 ], [ -1, %30 ], [ -1, %34 ], [ -1, %37 ], [ -1, %43 ], [ -1, %47 ], [ -1, %50 ]
  ret i32 %70
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @put_u32(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = ashr i32 %3, 24
  %5 = tail call i32 @putc(i32 noundef %4, ptr noundef %0)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = shl i32 %3, 8
  %9 = ashr i32 %8, 24
  %10 = tail call i32 @putc(i32 noundef %9, ptr noundef %0)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = shl i32 %3, 16
  %14 = ashr i32 %13, 24
  %15 = tail call i32 @putc(i32 noundef %14, ptr noundef %0)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = shl i32 %3, 24
  %19 = ashr exact i32 %18, 24
  %20 = tail call i32 @putc(i32 noundef %19, ptr noundef %0)
  %21 = icmp eq i32 %20, -1
  %22 = sext i1 %21 to i32
  br label %23

23:                                               ; preds = %17, %2, %7, %12
  %24 = phi i32 [ -1, %12 ], [ -1, %7 ], [ -1, %2 ], [ %22, %17 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i32 -1, i32 1}
