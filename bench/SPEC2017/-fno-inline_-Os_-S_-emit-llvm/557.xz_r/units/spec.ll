; ModuleID = 'spec.c'
source_filename = "spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.spec_fd_t = type { i64, i64, i64, i32, ptr }

@.str = private unnamed_addr constant [46 x i8] c"main: Error mallocing memory for SHA-%d sum!\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"Error: Supplied original hash value is not the correct length to be SHA-%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [127 x i8] c"Usage: %s <input filename> <input size> <input raw SHA-%d> <compressed minimum> <compressed maximum> <compression level, ...>\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"SPEC CPU XZ driver: input=%s insize=%ld\0A\00", align 1
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Error allocating in-memory file descriptors\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Input data %ld bytes in length\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Error: compression level '%s' is not valid\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Compressing Input Data, level %d%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" (extreme)\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Compressed data %ld bytes in length\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Compressed data length is %ld bytes in length\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Compressed data is between %ld and %ld bytes in length\0A\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"Compressed data length of %ld does not match expected length of %ld bytes\0A\00", align 1
@.str.15 = private unnamed_addr constant [82 x i8] c"Compressed data length of %ld is outside the allowable range of %ld to %ld bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Uncompressed data %ld bytes in length\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"Computed SHA-%d sum for decompression step did not match expected\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"  Generated: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"   Expected: \00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Tested %ld MiB buffer: OK!\0A\00", align 1
@str = private unnamed_addr constant [19 x i8] c"Loading Input Data\00", align 1
@str.25 = private unnamed_addr constant [26 x i8] c"Finished compressing data\00", align 1
@str.26 = private unnamed_addr constant [41 x i8] c"Uncompressing previously compressed data\00", align 1
@str.27 = private unnamed_addr constant [37 x i8] c"Uncompressed data compared correctly\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 512) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

7:                                                ; preds = %2
  %8 = icmp sgt i32 %0, 1
  br i1 %8, label %9, label %42

9:                                                ; preds = %7
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq i32 %0, 2
  br i1 %12, label %42, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds ptr, ptr %1, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = tail call i64 @strtol(ptr nocapture noundef %15, ptr noundef null, i32 noundef 10) #11
  %17 = icmp ugt i32 %0, 3
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %1, i64 3
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #12
  %22 = and i64 %21, 4611686018427387903
  %23 = icmp eq i64 %22, 128
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr @stderr, align 8, !tbaa !5
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.1, i32 noundef 512) #13
  tail call void @exit(i32 noundef 1) #10
  unreachable

27:                                               ; preds = %18
  %28 = tail call ptr @sum_str_to_hex(ptr noundef %20, i32 noundef 512) #11
  %29 = icmp eq i32 %0, 4
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds ptr, ptr %1, i64 4
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = tail call i64 @strtol(ptr nocapture noundef %32, ptr noundef null, i32 noundef 10) #11
  %34 = icmp ugt i32 %0, 5
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = getelementptr inbounds ptr, ptr %1, i64 5
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = tail call i64 @strtol(ptr nocapture noundef %37, ptr noundef null, i32 noundef 10) #11
  %39 = freeze i64 %38
  %40 = icmp slt i64 %39, 0
  %41 = select i1 %40, i64 %33, i64 %39
  br label %42

42:                                               ; preds = %35, %7, %9, %13, %27, %30
  %43 = phi ptr [ %28, %30 ], [ %28, %27 ], [ null, %13 ], [ null, %9 ], [ null, %7 ], [ %28, %35 ]
  %44 = phi ptr [ %11, %30 ], [ %11, %27 ], [ %11, %13 ], [ %11, %9 ], [ null, %7 ], [ %11, %35 ]
  %45 = phi i64 [ %16, %30 ], [ %16, %27 ], [ %16, %13 ], [ 0, %9 ], [ 0, %7 ], [ %16, %35 ]
  %46 = phi i64 [ %33, %30 ], [ -1, %27 ], [ -1, %13 ], [ -1, %9 ], [ -1, %7 ], [ %33, %35 ]
  %47 = phi i64 [ %33, %30 ], [ -1, %27 ], [ -1, %13 ], [ -1, %9 ], [ -1, %7 ], [ %41, %35 ]
  %48 = icmp eq ptr %44, null
  %49 = icmp slt i64 %45, 1
  %50 = select i1 %48, i1 true, i1 %49
  %51 = icmp eq ptr %43, null
  %52 = select i1 %50, i1 true, i1 %51
  %53 = icmp eq i64 %46, 0
  %54 = select i1 %52, i1 true, i1 %53
  %55 = icmp eq i64 %47, 0
  %56 = select i1 %54, i1 true, i1 %55
  %57 = icmp slt i32 %0, 6
  %58 = or i1 %57, %56
  br i1 %58, label %59, label %62

59:                                               ; preds = %42
  %60 = load ptr, ptr %1, align 8, !tbaa !5
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %60, i32 noundef 512) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

62:                                               ; preds = %42
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %44, i64 noundef %45) #9
  %64 = tail call ptr @spec_mem_alloc_fds(i32 noundef 3) #11
  store ptr %64, ptr @spec_fd, align 8, !tbaa !5
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load ptr, ptr @stderr, align 8, !tbaa !5
  %68 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 44, i64 1, ptr %67) #14
  tail call void @exit(i32 noundef 1) #10
  unreachable

69:                                               ; preds = %62
  %70 = shl nsw i64 %45, 20
  %71 = icmp ult i64 %45, 254
  %72 = select i1 %71, i64 266338304, i64 %70
  %73 = getelementptr inbounds %struct.spec_fd_t, ptr %64, i64 1
  store i64 %72, ptr %73, align 8
  store i64 %72, ptr %64, align 8, !tbaa !9
  %74 = tail call i32 @spec_mem_init(ptr noundef nonnull %64, i32 noundef 3, i32 noundef 1) #11
  %75 = tail call i32 @debug_time() #11
  %76 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %77 = load ptr, ptr @spec_fd, align 8, !tbaa !5
  %78 = tail call ptr @spec_mem_load(ptr noundef %77, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %44, i64 noundef %70, i32 noundef 1, ptr noundef nonnull %43, i32 noundef 512) #11
  %79 = load ptr, ptr @spec_fd, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.spec_fd_t, ptr %79, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !13
  %82 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %81) #9
  %83 = load ptr, ptr @spec_fd, align 8, !tbaa !5
  %84 = getelementptr inbounds %struct.spec_fd_t, ptr %83, i64 2, i32 3
  store i32 1, ptr %84, align 8, !tbaa !14
  %85 = getelementptr inbounds %struct.spec_fd_t, ptr %83, i64 1, i32 3
  store i32 1, ptr %85, align 8, !tbaa !14
  %86 = getelementptr inbounds %struct.spec_fd_t, ptr %83, i64 0, i32 3
  store i32 1, ptr %86, align 8, !tbaa !14
  tail call void (...) @spec_initbufs() #11
  %87 = icmp ugt i32 %0, 6
  br i1 %87, label %88, label %174

88:                                               ; preds = %69
  %89 = icmp sgt i64 %46, 0
  %90 = icmp eq i64 %46, %47
  %91 = zext nneg i32 %0 to i64
  br label %92

92:                                               ; preds = %88, %162
  %93 = phi i64 [ 6, %88 ], [ %172, %162 ]
  %94 = getelementptr inbounds ptr, ptr %1, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = load i8, ptr %95, align 1, !tbaa !15
  %97 = add i8 %96, -58
  %98 = icmp ult i8 %97, -10
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %95) #9
  %101 = load ptr, ptr %1, align 8, !tbaa !5
  %102 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %101, i32 noundef 512) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

103:                                              ; preds = %92
  %104 = getelementptr inbounds i8, ptr %95, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !15
  %106 = icmp eq i8 %105, 101
  %107 = select i1 %106, i32 -2147483648, i32 0
  %108 = zext nneg i8 %96 to i32
  %109 = add nsw i32 %108, -48
  %110 = tail call i32 @debug_time() #11
  %111 = select i1 %106, ptr @.str.9, ptr @.str.10
  %112 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %109, ptr noundef nonnull %111) #9
  %113 = or disjoint i32 %107, %109
  tail call void @spec_compress(i32 noundef 0, i32 noundef 1, i32 noundef %113) #11
  %114 = tail call i32 @debug_time() #11
  %115 = load ptr, ptr @stderr, align 8, !tbaa !5
  %116 = load ptr, ptr @spec_fd, align 8, !tbaa !5
  %117 = getelementptr inbounds %struct.spec_fd_t, ptr %116, i64 1, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !13
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.11, i64 noundef %118) #13
  br i1 %89, label %120, label %137

120:                                              ; preds = %103
  %121 = load ptr, ptr @spec_fd, align 8, !tbaa !5
  %122 = getelementptr inbounds %struct.spec_fd_t, ptr %121, i64 1, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !13
  %124 = icmp slt i64 %123, %46
  %125 = icmp sgt i64 %123, %47
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %132, label %127

127:                                              ; preds = %120
  br i1 %90, label %128, label %130

128:                                              ; preds = %127
  %129 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %46) #9
  br label %137

130:                                              ; preds = %127
  %131 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %46, i64 noundef %47) #9
  br label %137

132:                                              ; preds = %120
  br i1 %90, label %133, label %135

133:                                              ; preds = %132
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i64 noundef %123, i64 noundef %46) #9
  br label %137

135:                                              ; preds = %132
  %136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %123, i64 noundef %46, i64 noundef %47) #9
  br label %137

137:                                              ; preds = %130, %128, %135, %133, %103
  %138 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  %139 = load ptr, ptr @spec_fd, align 8, !tbaa !5
  %140 = tail call i32 @spec_mem_reset(ptr noundef %139, i32 noundef 3, i32 noundef 0) #11
  %141 = load ptr, ptr @spec_fd, align 8, !tbaa !5
  %142 = tail call i32 @spec_mem_rewind(ptr noundef %141, i32 noundef 3, i32 noundef 1) #11
  %143 = tail call i32 @debug_time() #11
  %144 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  tail call void @spec_uncompress(i32 noundef 1, i32 noundef 0) #11
  %145 = tail call i32 @debug_time() #11
  %146 = load ptr, ptr @spec_fd, align 8, !tbaa !5
  %147 = getelementptr inbounds %struct.spec_fd_t, ptr %146, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !13
  %149 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %148) #9
  %150 = load ptr, ptr @spec_fd, align 8, !tbaa !5
  %151 = tail call ptr @spec_mem_sum(ptr noundef %150, ptr noundef nonnull %3, i32 noundef 512) #11
  %152 = tail call i32 @compare_sum(ptr noundef %78, ptr noundef nonnull %3, i32 noundef 512) #11
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %137
  %155 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef 512) #9
  %156 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20) #9
  %157 = load ptr, ptr @stdout, align 8, !tbaa !5
  tail call void @print_sum(ptr noundef %157, ptr noundef nonnull %3, i32 noundef 512) #11
  %158 = tail call i32 @putchar(i32 10)
  %159 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22) #9
  %160 = load ptr, ptr @stdout, align 8, !tbaa !5
  tail call void @print_sum(ptr noundef %160, ptr noundef %78, i32 noundef 512) #11
  %161 = tail call i32 @putchar(i32 10)
  tail call void @exit(i32 noundef 0) #10
  unreachable

162:                                              ; preds = %137
  %163 = tail call i32 @debug_time() #11
  %164 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %165 = load ptr, ptr @spec_fd, align 8, !tbaa !5
  %166 = tail call i32 @spec_mem_reset(ptr noundef %165, i32 noundef 3, i32 noundef 1) #11
  %167 = load ptr, ptr @spec_fd, align 8, !tbaa !5
  %168 = tail call i32 @spec_mem_rewind(ptr noundef %167, i32 noundef 3, i32 noundef 0) #11
  %169 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i64 noundef %45) #9
  %170 = load ptr, ptr @stdout, align 8, !tbaa !5
  %171 = tail call i32 @fflush(ptr noundef %170) #9
  %172 = add nuw nsw i64 %93, 1
  %173 = icmp eq i64 %172, %91
  br i1 %173, label %174, label %92, !llvm.loop !16

174:                                              ; preds = %162, %69
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sum_str_to_hex(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @spec_mem_alloc_fds(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @spec_mem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @debug_time() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @spec_mem_load(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @spec_initbufs(...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @spec_compress(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @spec_mem_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @spec_mem_rewind(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @spec_uncompress(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @spec_mem_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @compare_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @print_sum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind optsize allocsize(0) }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }
attributes #13 = { cold optsize }
attributes #14 = { cold }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !6, i64 32}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!10, !11, i64 8}
!14 = !{!10, !12, i64 24}
!15 = !{!7, !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
