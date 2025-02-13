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
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !37 {
  %3 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !38

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 512) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

7:                                                ; preds = %2
  %8 = icmp sgt i32 %0, 1
  br i1 %8, label %9, label %42, !prof !39

9:                                                ; preds = %7
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq i32 %0, 2
  br i1 %12, label %42, label %13, !prof !44

13:                                               ; preds = %9
  %14 = getelementptr inbounds ptr, ptr %1, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = tail call i64 @strtol(ptr nocapture noundef %15, ptr noundef null, i32 noundef 10) #11
  %17 = icmp ugt i32 %0, 3
  br i1 %17, label %18, label %42, !prof !45

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %1, i64 3
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #12
  %22 = and i64 %21, 4611686018427387903
  %23 = icmp eq i64 %22, 128
  br i1 %23, label %27, label %24, !prof !39

24:                                               ; preds = %18
  %25 = load ptr, ptr @stderr, align 8, !tbaa !40
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.1, i32 noundef 512) #13
  tail call void @exit(i32 noundef 1) #10
  unreachable

27:                                               ; preds = %18
  %28 = tail call ptr @sum_str_to_hex(ptr noundef %20, i32 noundef 512) #11
  %29 = icmp eq i32 %0, 4
  br i1 %29, label %42, label %30, !prof !44

30:                                               ; preds = %27
  %31 = getelementptr inbounds ptr, ptr %1, i64 4
  %32 = load ptr, ptr %31, align 8, !tbaa !40
  %33 = tail call i64 @strtol(ptr nocapture noundef %32, ptr noundef null, i32 noundef 10) #11
  %34 = icmp ugt i32 %0, 5
  br i1 %34, label %35, label %42, !prof !45

35:                                               ; preds = %30
  %36 = getelementptr inbounds ptr, ptr %1, i64 5
  %37 = load ptr, ptr %36, align 8, !tbaa !40
  %38 = tail call i64 @strtol(ptr nocapture noundef %37, ptr noundef null, i32 noundef 10) #11
  %39 = freeze i64 %38
  %40 = icmp slt i64 %39, 0
  %41 = select i1 %40, i64 %33, i64 %39, !prof !46
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
  br i1 %58, label %59, label %62, !prof !47

59:                                               ; preds = %42
  %60 = load ptr, ptr %1, align 8, !tbaa !40
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %60, i32 noundef 512) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

62:                                               ; preds = %42
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %44, i64 noundef %45) #9
  %64 = tail call ptr @spec_mem_alloc_fds(i32 noundef 3) #11
  store ptr %64, ptr @spec_fd, align 8, !tbaa !40
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69, !prof !38

66:                                               ; preds = %62
  %67 = load ptr, ptr @stderr, align 8, !tbaa !40
  %68 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 44, i64 1, ptr %67) #14
  tail call void @exit(i32 noundef 1) #10
  unreachable

69:                                               ; preds = %62
  %70 = shl nsw i64 %45, 20
  %71 = icmp ult i64 %45, 254
  %72 = select i1 %71, i64 266338304, i64 %70, !prof !39
  %73 = getelementptr inbounds %struct.spec_fd_t, ptr %64, i64 1
  store i64 %72, ptr %73, align 8
  store i64 %72, ptr %64, align 8, !tbaa !48
  %74 = tail call i32 @spec_mem_init(ptr noundef nonnull %64, i32 noundef 3, i32 noundef 1) #11
  %75 = tail call i32 @debug_time() #11
  %76 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %77 = load ptr, ptr @spec_fd, align 8, !tbaa !40
  %78 = tail call ptr @spec_mem_load(ptr noundef %77, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %44, i64 noundef %70, i32 noundef 1, ptr noundef nonnull %43, i32 noundef 512) #11
  %79 = load ptr, ptr @spec_fd, align 8, !tbaa !40
  %80 = getelementptr inbounds %struct.spec_fd_t, ptr %79, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !52
  %82 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i64 noundef %81) #9
  %83 = load ptr, ptr @spec_fd, align 8, !tbaa !40
  %84 = getelementptr inbounds %struct.spec_fd_t, ptr %83, i64 2, i32 3
  store i32 1, ptr %84, align 8, !tbaa !53
  %85 = getelementptr inbounds %struct.spec_fd_t, ptr %83, i64 1, i32 3
  store i32 1, ptr %85, align 8, !tbaa !53
  %86 = getelementptr inbounds %struct.spec_fd_t, ptr %83, i64 0, i32 3
  store i32 1, ptr %86, align 8, !tbaa !53
  tail call void (...) @spec_initbufs() #11
  %87 = icmp ugt i32 %0, 6
  br i1 %87, label %88, label %173, !prof !54

88:                                               ; preds = %69, %160
  %89 = phi i64 [ %171, %160 ], [ 6, %69 ]
  %90 = getelementptr inbounds ptr, ptr %1, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !40
  %92 = load i8, ptr %91, align 1, !tbaa !55
  %93 = add i8 %92, -58
  %94 = icmp ult i8 %93, -10
  br i1 %94, label %95, label %99, !prof !56

95:                                               ; preds = %88
  %96 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %91) #9
  %97 = load ptr, ptr %1, align 8, !tbaa !40
  %98 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %97, i32 noundef 512) #9
  tail call void @exit(i32 noundef 1) #10
  unreachable

99:                                               ; preds = %88
  %100 = icmp sgt i64 %46, 0
  %101 = getelementptr inbounds i8, ptr %91, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !55
  %103 = icmp eq i8 %102, 101
  %104 = select i1 %103, i32 -2147483648, i32 0, !prof !38
  %105 = zext nneg i8 %92 to i32
  %106 = add nsw i32 %105, -48
  %107 = tail call i32 @debug_time() #11
  %108 = select i1 %103, ptr @.str.9, ptr @.str.10
  %109 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %106, ptr noundef nonnull %108) #9
  %110 = or disjoint i32 %104, %106
  tail call void @spec_compress(i32 noundef 0, i32 noundef 1, i32 noundef %110) #11
  %111 = tail call i32 @debug_time() #11
  %112 = load ptr, ptr @stderr, align 8, !tbaa !40
  %113 = load ptr, ptr @spec_fd, align 8, !tbaa !40
  %114 = getelementptr inbounds %struct.spec_fd_t, ptr %113, i64 1, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !52
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.11, i64 noundef %115) #13
  br i1 %100, label %117, label %135, !prof !39

117:                                              ; preds = %99
  %118 = icmp eq i64 %46, %47
  %119 = load ptr, ptr @spec_fd, align 8, !tbaa !40
  %120 = getelementptr inbounds %struct.spec_fd_t, ptr %119, i64 1, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !52
  %122 = icmp slt i64 %121, %46
  %123 = icmp sgt i64 %121, %47
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %130, label %125, !prof !56

125:                                              ; preds = %117
  br i1 %118, label %126, label %128, !prof !38

126:                                              ; preds = %125
  %127 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %46) #9
  br label %135

128:                                              ; preds = %125
  %129 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %46, i64 noundef %47) #9
  br label %135

130:                                              ; preds = %117
  br i1 %118, label %131, label %133

131:                                              ; preds = %130
  %132 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i64 noundef %121, i64 noundef %46) #9
  br label %135

133:                                              ; preds = %130
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %121, i64 noundef %46, i64 noundef %47) #9
  br label %135

135:                                              ; preds = %128, %126, %133, %131, %99
  %136 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  %137 = load ptr, ptr @spec_fd, align 8, !tbaa !40
  %138 = tail call i32 @spec_mem_reset(ptr noundef %137, i32 noundef 3, i32 noundef 0) #11
  %139 = load ptr, ptr @spec_fd, align 8, !tbaa !40
  %140 = tail call i32 @spec_mem_rewind(ptr noundef %139, i32 noundef 3, i32 noundef 1) #11
  %141 = tail call i32 @debug_time() #11
  %142 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  tail call void @spec_uncompress(i32 noundef 1, i32 noundef 0) #11
  %143 = tail call i32 @debug_time() #11
  %144 = load ptr, ptr @spec_fd, align 8, !tbaa !40
  %145 = getelementptr inbounds %struct.spec_fd_t, ptr %144, i64 0, i32 1
  %146 = load i64, ptr %145, align 8, !tbaa !52
  %147 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %146) #9
  %148 = load ptr, ptr @spec_fd, align 8, !tbaa !40
  %149 = tail call ptr @spec_mem_sum(ptr noundef %148, ptr noundef nonnull %3, i32 noundef 512) #11
  %150 = tail call i32 @compare_sum(ptr noundef %78, ptr noundef nonnull %3, i32 noundef 512) #11
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %160, label %152, !prof !39

152:                                              ; preds = %135
  %153 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef 512) #9
  %154 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20) #9
  %155 = load ptr, ptr @stdout, align 8, !tbaa !40
  tail call void @print_sum(ptr noundef %155, ptr noundef nonnull %3, i32 noundef 512) #11
  %156 = tail call i32 @putchar(i32 10)
  %157 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22) #9
  %158 = load ptr, ptr @stdout, align 8, !tbaa !40
  tail call void @print_sum(ptr noundef %158, ptr noundef %78, i32 noundef 512) #11
  %159 = tail call i32 @putchar(i32 10)
  tail call void @exit(i32 noundef 0) #10
  unreachable

160:                                              ; preds = %135
  %161 = zext nneg i32 %0 to i64
  %162 = tail call i32 @debug_time() #11
  %163 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %164 = load ptr, ptr @spec_fd, align 8, !tbaa !40
  %165 = tail call i32 @spec_mem_reset(ptr noundef %164, i32 noundef 3, i32 noundef 1) #11
  %166 = load ptr, ptr @spec_fd, align 8, !tbaa !40
  %167 = tail call i32 @spec_mem_rewind(ptr noundef %166, i32 noundef 3, i32 noundef 0) #11
  %168 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i64 noundef %45) #9
  %169 = load ptr, ptr @stdout, align 8, !tbaa !40
  %170 = tail call i32 @fflush(ptr noundef %169) #9
  %171 = add nuw nsw i64 %89, 1
  %172 = icmp eq i64 %171, %161
  br i1 %172, label %173, label %88, !prof !54, !llvm.loop !57

173:                                              ; preds = %160, %69
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @main, ptr @malloc, i64 1}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 1}
!38 = !{!"branch_weights", i32 1, i32 2}
!39 = !{!"branch_weights", i32 2, i32 1}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"branch_weights", i32 0, i32 -2147483648}
!45 = !{!"branch_weights", i32 -2147483648, i32 0}
!46 = !{!"branch_weights", i32 1817554748, i32 329928900}
!47 = !{!"branch_weights", i32 665, i32 64}
!48 = !{!49, !50, i64 0}
!49 = !{!"", !50, i64 0, !50, i64 8, !50, i64 16, !51, i64 24, !41, i64 32}
!50 = !{!"long", !42, i64 0}
!51 = !{!"int", !42, i64 0}
!52 = !{!49, !50, i64 8}
!53 = !{!49, !51, i64 24}
!54 = !{!"branch_weights", i32 127, i32 1}
!55 = !{!42, !42, i64 0}
!56 = !{!"branch_weights", i32 5, i32 4}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
