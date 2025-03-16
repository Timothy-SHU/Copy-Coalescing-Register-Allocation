; ModuleID = 'gsargs.c'
source_filename = "gsargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.arg_list_s = type { i32, ptr, ptr, ptr, i32, i32, [513 x i8], [10 x %struct.arg_source_s] }
%struct.arg_source_s = type { i32, %union._u }
%union._u = type { ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"gsargs.c\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Too much nesting of @-files.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Command too long: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unterminated quote in @-file: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Unable to open command line file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"arg_copy\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @arg_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  store i32 1, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !12
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !13
  %10 = add nsw i32 %2, -1
  %11 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %12, align 4, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @arg_push_string(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !15
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !16
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 47) #9
  %9 = load ptr, ptr @stderr, align 8, !tbaa !16
  %10 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 29, i64 1, ptr %9) #9
  tail call void @gs_exit(i32 noundef 1) #10
  br label %11

11:                                               ; preds = %6, %2
  %12 = load i32, ptr %3, align 4, !tbaa !15
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 7, i64 %13
  store i32 0, ptr %14, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 7, i64 %13, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !19
  %16 = add nsw i32 %12, 1
  store i32 %16, ptr %3, align 4, !tbaa !15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare void @gs_exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @arg_finit(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %16
  %6 = phi i32 [ %17, %16 ], [ %3, %1 ]
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %2, align 4, !tbaa !15
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 7, i64 %8
  %10 = load i32, ptr %9, align 8, !tbaa !17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 7, i64 %8, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = tail call i32 @fclose(ptr noundef %14)
  br label %16

16:                                               ; preds = %12, %5
  %17 = load i32, ptr %2, align 4, !tbaa !15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %5, !llvm.loop !20

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @arg_next(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 6, i64 511
  %6 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %63, %1
  %10 = phi ptr [ null, %1 ], [ %64, %63 ]
  %11 = load i32, ptr %3, align 4, !tbaa !15
  %12 = add nsw i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 7, i64 %13
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load i32, ptr %2, align 8, !tbaa !14
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %151, label %19

19:                                               ; preds = %16
  %20 = add nsw i32 %17, -1
  store i32 %20, ptr %2, align 8, !tbaa !14
  %21 = load ptr, ptr %6, align 8, !tbaa !13
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  store ptr %22, ptr %6, align 8, !tbaa !13
  %23 = load ptr, ptr %21, align 8, !tbaa !16
  br label %121

24:                                               ; preds = %9
  %25 = load i32, ptr %14, align 8, !tbaa !17
  %26 = icmp ne i32 %25, 0
  %27 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 7, i64 %13, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = select i1 %26, ptr %28, ptr null
  %30 = select i1 %26, ptr %10, ptr %28
  %31 = sext i1 %26 to i32
  %32 = tail call ptr @__ctype_b_loc() #11
  %33 = icmp eq ptr %29, null
  br label %34

34:                                               ; preds = %45, %24
  %35 = phi ptr [ %30, %24 ], [ %46, %45 ]
  %36 = load ptr, ptr %32, align 8, !tbaa !16
  br i1 %33, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8, ptr %35, align 1, !tbaa !19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = sext i8 %38 to i32
  %42 = getelementptr inbounds i8, ptr %35, i64 1
  br label %45

43:                                               ; preds = %34
  %44 = tail call i32 @fgetc(ptr noundef nonnull %29)
  br label %45

45:                                               ; preds = %40, %37, %43
  %46 = phi ptr [ %42, %40 ], [ %35, %37 ], [ %35, %43 ]
  %47 = phi i32 [ %41, %40 ], [ 0, %37 ], [ %44, %43 ]
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, ptr %36, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !22
  %51 = and i16 %50, 8192
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %34, !llvm.loop !24

53:                                               ; preds = %45
  %54 = icmp eq i32 %47, %31
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = icmp ne ptr %29, null
  br label %65

57:                                               ; preds = %53
  br i1 %33, label %60, label %58

58:                                               ; preds = %57
  %59 = tail call i32 @fclose(ptr noundef nonnull %29)
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i32, ptr %3, align 4, !tbaa !15
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr %3, align 4, !tbaa !15
  br label %63

63:                                               ; preds = %60, %146
  %64 = phi ptr [ %122, %146 ], [ %46, %60 ]
  br label %9

65:                                               ; preds = %55, %107
  %66 = phi ptr [ %97, %107 ], [ %46, %55 ]
  %67 = phi i32 [ %98, %107 ], [ %47, %55 ]
  %68 = phi i32 [ %86, %107 ], [ 0, %55 ]
  %69 = phi i32 [ %87, %107 ], [ 0, %55 ]
  %70 = icmp eq i32 %68, 511
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  store i8 0, ptr %5, align 1, !tbaa !19
  %72 = load ptr, ptr @stdout, align 8, !tbaa !16
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.3, ptr noundef nonnull %4)
  tail call void @gs_exit(i32 noundef 1) #10
  br label %74

74:                                               ; preds = %71, %65
  %75 = icmp eq i32 %67, 34
  %76 = and i1 %56, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = icmp eq i32 %69, 0
  %79 = zext i1 %78 to i32
  br label %85

80:                                               ; preds = %74
  %81 = trunc i32 %67 to i8
  %82 = add nsw i32 %68, 1
  %83 = sext i32 %68 to i64
  %84 = getelementptr inbounds i8, ptr %4, i64 %83
  store i8 %81, ptr %84, align 1, !tbaa !19
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi i32 [ %68, %77 ], [ %82, %80 ]
  %87 = phi i32 [ %79, %77 ], [ %69, %80 ]
  br i1 %33, label %88, label %94

88:                                               ; preds = %85
  %89 = load i8, ptr %66, align 1, !tbaa !19
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = sext i8 %89 to i32
  %93 = getelementptr inbounds i8, ptr %66, i64 1
  br label %96

94:                                               ; preds = %85
  %95 = tail call i32 @fgetc(ptr noundef nonnull %29)
  br label %96

96:                                               ; preds = %91, %88, %94
  %97 = phi ptr [ %93, %91 ], [ %66, %88 ], [ %66, %94 ]
  %98 = phi i32 [ %92, %91 ], [ 0, %88 ], [ %95, %94 ]
  %99 = icmp eq i32 %98, %31
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = icmp eq i32 %87, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %100
  %103 = sext i32 %86 to i64
  %104 = getelementptr inbounds i8, ptr %4, i64 %103
  store i8 0, ptr %104, align 1, !tbaa !19
  %105 = load ptr, ptr @stdout, align 8, !tbaa !16
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.4, ptr noundef nonnull %4)
  tail call void @gs_exit(i32 noundef 1) #10
  br label %116

107:                                              ; preds = %96
  %108 = load ptr, ptr %32, align 8, !tbaa !16
  %109 = sext i32 %98 to i64
  %110 = getelementptr inbounds i16, ptr %108, i64 %109
  %111 = load i16, ptr %110, align 2, !tbaa !22
  %112 = and i16 %111, 8192
  %113 = icmp eq i16 %112, 0
  %114 = icmp ne i32 %87, 0
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %65, label %116, !llvm.loop !25

116:                                              ; preds = %107, %100, %102
  %117 = sext i32 %86 to i64
  %118 = getelementptr inbounds i8, ptr %4, i64 %117
  store i8 0, ptr %118, align 1, !tbaa !19
  br i1 %33, label %119, label %121

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.arg_list_s, ptr %0, i64 0, i32 7, i64 %13, i32 1
  store ptr %97, ptr %120, align 8, !tbaa !19
  br label %121

121:                                              ; preds = %116, %119, %19
  %122 = phi ptr [ %10, %19 ], [ %97, %119 ], [ %97, %116 ]
  %123 = phi ptr [ %23, %19 ], [ %4, %119 ], [ %4, %116 ]
  %124 = load i32, ptr %0, align 8, !tbaa !5
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %151, label %126

126:                                              ; preds = %121
  %127 = load i8, ptr %123, align 1, !tbaa !19
  %128 = icmp eq i8 %127, 64
  br i1 %128, label %129, label %151

129:                                              ; preds = %126
  %130 = load i32, ptr %3, align 4, !tbaa !15
  %131 = icmp eq i32 %130, 10
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load ptr, ptr @stderr, align 8, !tbaa !16
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 131) #9
  %135 = load ptr, ptr @stderr, align 8, !tbaa !16
  %136 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 29, i64 1, ptr %135) #9
  tail call void @gs_exit(i32 noundef 1) #10
  br label %137

137:                                              ; preds = %132, %129
  %138 = getelementptr inbounds i8, ptr %123, i64 1
  %139 = load ptr, ptr %7, align 8, !tbaa !11
  %140 = load ptr, ptr %8, align 8, !tbaa !12
  %141 = tail call ptr %139(ptr noundef nonnull %138, ptr noundef %140) #10
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load ptr, ptr @stdout, align 8, !tbaa !16
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.5, ptr noundef nonnull %138)
  tail call void @gs_exit(i32 noundef 1) #10
  br label %146

146:                                              ; preds = %143, %137
  %147 = load i32, ptr %3, align 4, !tbaa !15
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %3, align 4, !tbaa !15
  %149 = getelementptr inbounds %struct.arg_source_s, ptr %14, i64 1
  store i32 1, ptr %149, align 8, !tbaa !17
  %150 = getelementptr inbounds %struct.arg_source_s, ptr %14, i64 1, i32 1
  store ptr %141, ptr %150, align 8, !tbaa !19
  br label %63

151:                                              ; preds = %121, %126, %16
  %152 = phi ptr [ null, %16 ], [ %123, %126 ], [ %123, %121 ]
  ret ptr %152
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @arg_copy(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 8, !tbaa !26
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, 1
  %7 = tail call ptr %3(ptr noundef nonnull %1, i32 noundef %6, ptr noundef nonnull @.str.6) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !16
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 154) #9
  %12 = load ptr, ptr @stderr, align 8, !tbaa !16
  %13 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %12) #9
  tail call void @gs_exit(i32 noundef 1) #10
  br label %14

14:                                               ; preds = %9, %2
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #10
  ret ptr %7
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"arg_list_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !7, i64 36, !8, i64 40, !8, i64 560}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !10, i64 16}
!13 = !{!6, !10, i64 24}
!14 = !{!6, !7, i64 32}
!15 = !{!6, !7, i64 36}
!16 = !{!10, !10, i64 0}
!17 = !{!18, !7, i64 0}
!18 = !{!"arg_source_s", !7, i64 0, !8, i64 8}
!19 = !{!8, !8, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !8, i64 0}
!24 = distinct !{!24, !21}
!25 = distinct !{!25, !21}
!26 = !{!27, !10, i64 0}
!27 = !{!"gs_memory_s", !28, i64 0}
!28 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
