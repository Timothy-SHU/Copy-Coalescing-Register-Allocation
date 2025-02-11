; ModuleID = 'ggc-page.c'
source_filename = "ggc-page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.globals = type { [84 x ptr], [84 x ptr], ptr, i64, i64, i64, i64, i64, i64, i64, i16, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr }
%struct.anon = type { i64, i32 }
%struct.page_entry = type { ptr, ptr, i64, ptr, ptr, i64, i16, i16, i16, i8, [1 x i64] }
%struct.page_group = type { ptr, ptr, i64, i32 }
%struct.page_table_chain = type { ptr, i64, [256 x ptr] }
%struct.ggc_statistics = type { i32 }
%struct.ggc_pch_data = type { %struct.ggc_pch_ondisk, [84 x i64], [84 x i64] }
%struct.ggc_pch_ondisk = type { [84 x i32] }

@.str = private unnamed_addr constant [19 x i8] c"Head=%p, Tail=%p:\0A\00", align 1
@G = internal unnamed_addr global %struct.globals zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%p(%1d|%3d) -> \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@size_lookup = internal unnamed_addr global [512 x i8] c"\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", align 16
@object_size_table = internal unnamed_addr global [84 x i64] zeroinitializer, align 16
@timevar_ggc_mem_total = external local_unnamed_addr global i64, align 8
@objects_per_page_table = internal unnamed_addr global [84 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"ggc-page.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@inverse_table = internal unnamed_addr global [84 x %struct.anon] zeroinitializer, align 16
@extra_order_size_table = internal unnamed_addr constant [20 x i64] [i64 24, i64 40, i64 48, i64 56, i64 72, i64 80, i64 88, i64 96, i64 104, i64 112, i64 120, i64 184, i64 152, i64 136, i64 160, i64 168, i64 144, i64 104, i64 312, i64 152], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [62 x i8] c"Memory still allocated at the end of the compilation process\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%-5s %10s  %10s  %10s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Allocated\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Used\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Overhead\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"%-5lu %10lu%c %10lu%c %10lu%c\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%-5s %10lu%c %10lu%c %10lu%c\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@ggc_pch_write_object.emptyBytes = internal constant [256 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [25 x i8] c"can't write PCH file: %m\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"can't write PCH file\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"can't read PCH file: %m\00", align 1
@str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_print_page_list(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %4, ptr noundef %6) #17
  %8 = load ptr, ptr %3, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %19, %10 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 6
  %13 = load i16, ptr %12, align 8, !tbaa !10
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 7
  %16 = load i16, ptr %15, align 2, !tbaa !14
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %11, i32 noundef %14, i32 noundef %17) #17
  %19 = load ptr, ptr %11, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !15

21:                                               ; preds = %10, %1
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %23 = load ptr, ptr @stdout, align 8, !tbaa !6
  %24 = tail call i32 @fflush(ptr noundef %23) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ggc_alloc_typed_stat(i32 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef %1) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ggc_alloc_stat(i64 noundef %0) local_unnamed_addr #3 {
  %2 = icmp ult i64 %0, 512
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %0
  %5 = load i8, ptr %4, align 1, !tbaa !17
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !18
  br label %15

9:                                                ; preds = %1, %9
  %10 = phi i64 [ %14, %9 ], [ 10, %1 ]
  %11 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !18
  %13 = icmp ult i64 %12, %0
  %14 = add i64 %10, 1
  br i1 %13, label %9, label %15, !llvm.loop !19

15:                                               ; preds = %9, %3
  %16 = phi i64 [ %8, %3 ], [ %12, %9 ]
  %17 = phi i64 [ %6, %3 ], [ %10, %9 ]
  %18 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 7
  %23 = load i16, ptr %22, align 2, !tbaa !14
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %21, %15
  %26 = trunc i64 %17 to i32
  %27 = tail call fastcc ptr @alloc_page(i32 noundef %26) #17
  %28 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !20
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.page_entry, ptr %27, i64 0, i32 5
  store i64 %29, ptr %30, align 8, !tbaa !23
  tail call fastcc void @push_by_depth(ptr noundef %27) #17
  %31 = getelementptr inbounds %struct.page_entry, ptr %27, i64 0, i32 6
  %32 = load i16, ptr %31, align 8, !tbaa !10
  %33 = zext i16 %32 to i32
  %34 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !24
  %35 = icmp ugt i32 %34, %33
  br i1 %35, label %43, label %36

36:                                               ; preds = %25, %36
  %37 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !20
  %38 = add i32 %37, -1
  tail call fastcc void @push_depth(i32 noundef %38) #17
  %39 = load i16, ptr %31, align 8, !tbaa !10
  %40 = zext i16 %39 to i32
  %41 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !24
  %42 = icmp ugt i32 %41, %40
  br i1 %42, label %43, label %36, !llvm.loop !25

43:                                               ; preds = %36, %25
  %44 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 1
  %45 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %17
  %46 = select i1 %20, ptr %45, ptr %44
  store ptr %27, ptr %46, align 8, !tbaa !6
  store ptr %19, ptr %27, align 8, !tbaa !26
  %47 = getelementptr inbounds %struct.page_entry, ptr %27, i64 0, i32 1
  store ptr null, ptr %47, align 8, !tbaa !27
  store ptr %27, ptr %18, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.page_entry, ptr %27, i64 0, i32 8
  store i16 1, ptr %48, align 4, !tbaa !28
  %49 = getelementptr inbounds %struct.page_entry, ptr %27, i64 0, i32 7
  %50 = load i16, ptr %49, align 2, !tbaa !14
  br label %88

51:                                               ; preds = %21
  %52 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 8
  %53 = load i16, ptr %52, align 4, !tbaa !28
  %54 = zext i16 %53 to i32
  %55 = lshr i32 %54, 6
  %56 = zext nneg i32 %55 to i64
  %57 = and i32 %54, 63
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 10, i64 %56
  %60 = load i64, ptr %59, align 8, !tbaa !18
  %61 = shl nuw i64 1, %58
  %62 = and i64 %61, %60
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %51, %64
  %65 = phi i64 [ %69, %64 ], [ 0, %51 ]
  %66 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 10, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !18
  %68 = icmp eq i64 %67, -1
  %69 = add i64 %65, 1
  br i1 %68, label %64, label %70, !llvm.loop !29

70:                                               ; preds = %64, %70
  %71 = phi i64 [ %75, %70 ], [ 0, %64 ]
  %72 = shl nuw i64 1, %71
  %73 = and i64 %72, %67
  %74 = icmp eq i64 %73, 0
  %75 = add i64 %71, 1
  br i1 %74, label %76, label %70, !llvm.loop !30

76:                                               ; preds = %70
  %77 = shl i64 %65, 6
  %78 = add i64 %71, %77
  %79 = trunc i64 %78 to i32
  br label %80

80:                                               ; preds = %76, %51
  %81 = phi i64 [ %71, %76 ], [ %58, %51 ]
  %82 = phi i64 [ %65, %76 ], [ %56, %51 ]
  %83 = phi i32 [ %79, %76 ], [ %54, %51 ]
  %84 = trunc i32 %83 to i16
  %85 = add i16 %84, 1
  store i16 %85, ptr %52, align 4, !tbaa !28
  %86 = zext i32 %83 to i64
  %87 = mul i64 %16, %86
  br label %88

88:                                               ; preds = %80, %43
  %89 = phi i16 [ %50, %43 ], [ %23, %80 ]
  %90 = phi i64 [ 0, %43 ], [ %81, %80 ]
  %91 = phi i64 [ 0, %43 ], [ %87, %80 ]
  %92 = phi ptr [ %27, %43 ], [ %19, %80 ]
  %93 = phi i64 [ 0, %43 ], [ %82, %80 ]
  %94 = shl nuw i64 1, %90
  %95 = getelementptr inbounds %struct.page_entry, ptr %92, i64 0, i32 10, i64 %93
  %96 = load i64, ptr %95, align 8, !tbaa !18
  %97 = or i64 %96, %94
  store i64 %97, ptr %95, align 8, !tbaa !18
  %98 = getelementptr inbounds %struct.page_entry, ptr %92, i64 0, i32 7
  %99 = add i16 %89, -1
  store i16 %99, ptr %98, align 2, !tbaa !14
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %88
  %102 = load ptr, ptr %92, align 8, !tbaa !26
  %103 = icmp eq ptr %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.page_entry, ptr %102, i64 0, i32 7
  %106 = load i16, ptr %105, align 2, !tbaa !14
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  store ptr %102, ptr %18, align 8, !tbaa !6
  %109 = load ptr, ptr %92, align 8, !tbaa !26
  %110 = getelementptr inbounds %struct.page_entry, ptr %109, i64 0, i32 1
  store ptr null, ptr %110, align 8, !tbaa !27
  store ptr null, ptr %92, align 8, !tbaa !26
  %111 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %17
  %112 = load ptr, ptr %111, align 8, !tbaa !6
  %113 = getelementptr inbounds %struct.page_entry, ptr %92, i64 0, i32 1
  store ptr %112, ptr %113, align 8, !tbaa !27
  store ptr %92, ptr %112, align 8, !tbaa !26
  store ptr %92, ptr %111, align 8, !tbaa !6
  br label %114

114:                                              ; preds = %108, %104, %101, %88
  %115 = getelementptr inbounds %struct.page_entry, ptr %92, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !31
  %117 = getelementptr inbounds i8, ptr %116, i64 %91
  %118 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !32
  %119 = add i64 %118, %16
  store i64 %119, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !32
  %120 = load i64, ptr @timevar_ggc_mem_total, align 8, !tbaa !18
  %121 = add i64 %120, %16
  store i64 %121, ptr @timevar_ggc_mem_total, align 8, !tbaa !18
  ret ptr %117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @alloc_page(i32 noundef %0) unnamed_addr #3 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [84 x i32], ptr @objects_per_page_table, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !33
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 64
  %7 = lshr i64 %6, 3
  %8 = and i64 %7, 1073741816
  %9 = add nuw nsw i64 %8, 56
  %10 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %2
  %11 = load i64, ptr %10, align 8, !tbaa !18
  %12 = mul i64 %11, %5
  %13 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !34
  %14 = tail call i64 @llvm.umax.i64(i64 %12, i64 %13)
  br label %15

15:                                               ; preds = %19, %1
  %16 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), %1 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.page_entry, ptr %17, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !35
  %22 = icmp eq i64 %21, %14
  br i1 %22, label %23, label %15, !llvm.loop !36

23:                                               ; preds = %19
  %24 = load ptr, ptr %17, align 8, !tbaa !26
  store ptr %24, ptr %16, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.page_entry, ptr %17, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  %27 = getelementptr inbounds %struct.page_entry, ptr %17, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !37
  %29 = getelementptr inbounds %struct.page_entry, ptr %17, i64 0, i32 9
  %30 = load i8, ptr %29, align 2, !tbaa !38
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, %0
  br i1 %32, label %97, label %33

33:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %17) #17
  br label %98

34:                                               ; preds = %15
  %35 = icmp ult i64 %13, %12
  %36 = shl i64 %13, 4
  %37 = add i64 %13, -1
  %38 = add i64 %37, %14
  %39 = select i1 %35, i64 %38, i64 %36
  %40 = tail call ptr @xmalloc(i64 noundef %39) #18
  %41 = ptrtoint ptr %40 to i64
  %42 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8
  %43 = add i64 %42, -1
  %44 = add i64 %43, %41
  %45 = sub i64 0, %42
  %46 = and i64 %44, %45
  %47 = inttoptr i64 %46 to ptr
  %48 = sub i64 %46, %41
  %49 = add i64 %36, %41
  %50 = and i64 %49, %43
  %51 = sub i64 %37, %48
  %52 = select i1 %35, i64 %51, i64 %50
  %53 = getelementptr inbounds i8, ptr %40, i64 %39
  %54 = sub i64 0, %52
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  %56 = icmp ugt i64 %48, 31
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = getelementptr inbounds %struct.page_group, ptr %47, i64 -1
  br label %66

59:                                               ; preds = %34
  %60 = icmp eq i64 %52, 0
  %61 = select i1 %60, i64 %45, i64 0
  %62 = getelementptr inbounds i8, ptr %55, i64 %61
  %63 = select i1 %60, i64 %42, i64 %52
  %64 = icmp ugt i64 %63, 31
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 847, ptr noundef nonnull @.str.4) #18
  br label %66

66:                                               ; preds = %65, %59, %57
  %67 = phi ptr [ %58, %57 ], [ %62, %59 ], [ %62, %65 ]
  %68 = phi ptr [ %55, %57 ], [ %62, %59 ], [ %62, %65 ]
  %69 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), align 8, !tbaa !39
  store ptr %69, ptr %67, align 8, !tbaa !40
  %70 = getelementptr inbounds %struct.page_group, ptr %67, i64 0, i32 1
  store ptr %40, ptr %70, align 8, !tbaa !42
  %71 = getelementptr inbounds %struct.page_group, ptr %67, i64 0, i32 2
  store i64 %39, ptr %71, align 8, !tbaa !43
  %72 = getelementptr inbounds %struct.page_group, ptr %67, i64 0, i32 3
  store i32 0, ptr %72, align 8, !tbaa !44
  store ptr %67, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), align 8, !tbaa !39
  %73 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !45
  %74 = add i64 %73, %39
  store i64 %74, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !45
  br i1 %35, label %98, label %75

75:                                               ; preds = %66
  %76 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), align 8, !tbaa !46
  %77 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !34
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i8, ptr %68, i64 %78
  %80 = icmp eq ptr %79, %47
  br i1 %80, label %95, label %81

81:                                               ; preds = %75
  %82 = trunc i32 %0 to i8
  br label %83

83:                                               ; preds = %81, %83
  %84 = phi ptr [ %76, %81 ], [ %86, %83 ]
  %85 = phi ptr [ %79, %81 ], [ %93, %83 ]
  %86 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %9) #18
  %87 = getelementptr inbounds %struct.page_entry, ptr %86, i64 0, i32 9
  store i8 %82, ptr %87, align 2, !tbaa !38
  %88 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !34
  %89 = getelementptr inbounds %struct.page_entry, ptr %86, i64 0, i32 2
  store i64 %88, ptr %89, align 8, !tbaa !35
  %90 = getelementptr inbounds %struct.page_entry, ptr %86, i64 0, i32 3
  store ptr %85, ptr %90, align 8, !tbaa !31
  %91 = getelementptr inbounds %struct.page_entry, ptr %86, i64 0, i32 4
  store ptr %67, ptr %91, align 8, !tbaa !37
  store ptr %84, ptr %86, align 8, !tbaa !26
  %92 = sub i64 0, %88
  %93 = getelementptr inbounds i8, ptr %85, i64 %92
  %94 = icmp eq ptr %93, %47
  br i1 %94, label %95, label %83, !llvm.loop !47

95:                                               ; preds = %83, %75
  %96 = phi ptr [ %76, %75 ], [ %86, %83 ]
  store ptr %96, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), align 8, !tbaa !46
  br label %98

97:                                               ; preds = %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %17, i8 0, i64 %9, i1 false)
  br label %102

98:                                               ; preds = %33, %95, %66
  %99 = phi ptr [ %67, %66 ], [ %67, %95 ], [ %28, %33 ]
  %100 = phi ptr [ %47, %66 ], [ %47, %95 ], [ %26, %33 ]
  %101 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %9) #18
  br label %102

102:                                              ; preds = %97, %98
  %103 = phi ptr [ %100, %98 ], [ %26, %97 ]
  %104 = phi ptr [ %99, %98 ], [ %28, %97 ]
  %105 = phi ptr [ %101, %98 ], [ %17, %97 ]
  %106 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 2
  store i64 %14, ptr %106, align 8, !tbaa !35
  %107 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 3
  store ptr %103, ptr %107, align 8, !tbaa !31
  %108 = load i16, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !48
  %109 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 6
  store i16 %108, ptr %109, align 8, !tbaa !10
  %110 = trunc i32 %0 to i8
  %111 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 9
  store i8 %110, ptr %111, align 2, !tbaa !38
  %112 = trunc i32 %4 to i16
  %113 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 7
  store i16 %112, ptr %113, align 2, !tbaa !14
  %114 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 8
  store i16 1, ptr %114, align 4, !tbaa !28
  %115 = zext nneg i16 %108 to i64
  %116 = shl nuw i64 1, %115
  %117 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 8), align 8, !tbaa !49
  %118 = or i64 %117, %116
  store i64 %118, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 8), align 8, !tbaa !49
  %119 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 4
  store ptr %104, ptr %119, align 8, !tbaa !37
  tail call fastcc void @set_page_group_in_use(ptr noundef %104, ptr noundef %103) #17
  %120 = and i64 %5, 63
  %121 = shl nuw i64 1, %120
  %122 = lshr i64 %5, 6
  %123 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 10, i64 %122
  store i64 %121, ptr %123, align 8, !tbaa !18
  tail call fastcc void @set_page_table_entry(ptr noundef %103, ptr noundef %105) #17
  ret ptr %105
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_by_depth(ptr noundef %0) unnamed_addr #3 {
  %2 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !20
  %3 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !50
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = shl i32 %3, 1
  store i32 %6, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !50
  %7 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !51
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %9) #18
  store ptr %10, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !51
  %11 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !52
  %12 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !50
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = tail call ptr @xrealloc(ptr noundef %11, i64 noundef %14) #18
  store ptr %15, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !52
  %16 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !20
  br label %17

17:                                               ; preds = %5, %1
  %18 = phi i32 [ %16, %5 ], [ %2, %1 ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !51
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  store ptr %0, ptr %21, align 8, !tbaa !6
  %22 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !52
  %23 = add i32 %18, 1
  store i32 %23, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !20
  %24 = getelementptr inbounds ptr, ptr %22, i64 %20
  store ptr null, ptr %24, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_depth(i32 noundef %0) unnamed_addr #3 {
  %2 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !24
  %3 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 15), align 4, !tbaa !53
  %4 = icmp ult i32 %2, %3
  %5 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !54
  br i1 %4, label %12, label %6

6:                                                ; preds = %1
  %7 = shl i32 %3, 1
  store i32 %7, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 15), align 4, !tbaa !53
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = tail call ptr @xrealloc(ptr noundef %5, i64 noundef %9) #18
  store ptr %10, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !54
  %11 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !24
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %11, %6 ], [ %2, %1 ]
  %14 = phi ptr [ %10, %6 ], [ %5, %1 ]
  %15 = add i32 %13, 1
  store i32 %15, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !24
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  store i32 %0, ptr %17, align 4, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_page_group_in_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.page_group, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = tail call fastcc i64 @page_group_index(ptr noundef %4, ptr noundef %1) #17
  %6 = trunc i64 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.page_group, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = or i32 %7, %9
  store i32 %10, ptr %8, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_page_table_entry(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, -4294967296
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.page_table_chain, ptr %7, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !55
  %12 = icmp eq i64 %11, %4
  br i1 %12, label %17, label %5, !llvm.loop !57

13:                                               ; preds = %5
  %14 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 2064) #18
  %15 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), align 8, !tbaa !58
  store ptr %15, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.page_table_chain, ptr %14, i64 0, i32 1
  store i64 %4, ptr %16, align 8, !tbaa !55
  store ptr %14, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), align 8, !tbaa !58
  br label %17

17:                                               ; preds = %9, %13
  %18 = phi ptr [ %14, %13 ], [ %7, %9 ]
  %19 = getelementptr inbounds %struct.page_table_chain, ptr %18, i64 0, i32 2
  %20 = lshr i64 %3, 24
  %21 = and i64 %20, 255
  %22 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !60
  %23 = sub i64 24, %22
  %24 = getelementptr inbounds ptr, ptr %19, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = shl nuw i64 1, %23
  %29 = tail call ptr @xcalloc(i64 noundef %28, i64 noundef 8) #18
  store ptr %29, ptr %24, align 8, !tbaa !6
  br label %30

30:                                               ; preds = %27, %17
  %31 = phi ptr [ %29, %27 ], [ %25, %17 ]
  %32 = lshr i64 %3, %22
  %33 = trunc i64 %23 to i32
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  %36 = zext nneg i32 %35 to i64
  %37 = and i64 %32, %36
  %38 = getelementptr inbounds ptr, ptr %31, i64 %37
  store ptr %1, ptr %38, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i64 @page_group_index(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !60
  %7 = lshr i64 %5, %6
  ret i64 %7
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_S(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @ggc_allocated_p(ptr noundef nonnull %0) #17, !range !61
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @lookup_page_table_entry(ptr noundef nonnull %0) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1294, ptr noundef nonnull @.str.4) #18
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = ptrtoint ptr %0 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 9
  %17 = load i8, ptr %16, align 2, !tbaa !38
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !18
  %21 = urem i64 %15, %20
  switch i64 %21, label %22 [
    i64 0, label %26
    i64 28, label %23
  ]

22:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1306, ptr noundef nonnull @.str.4) #18
  br label %23

23:                                               ; preds = %10, %22
  %24 = sub i64 0, %21
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %25) #18
  br label %47

26:                                               ; preds = %10
  %27 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %18
  %28 = load i64, ptr %27, align 16, !tbaa !62
  %29 = mul i64 %28, %15
  %30 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %18, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !64
  %32 = zext nneg i32 %31 to i64
  %33 = lshr i64 %29, %32
  %34 = lshr i64 %33, 6
  %35 = and i64 %33, 63
  %36 = shl nuw i64 1, %35
  %37 = and i64 %34, 67108863
  %38 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 10, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !18
  %40 = and i64 %36, %39
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = or i64 %36, %39
  store i64 %43, ptr %38, align 8, !tbaa !18
  %44 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 7
  %45 = load i16, ptr %44, align 2, !tbaa !14
  %46 = add i16 %45, -1
  store i16 %46, ptr %44, align 2, !tbaa !14
  br label %47

47:                                               ; preds = %26, %1, %3, %42, %23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @ggc_allocated_p(ptr noundef %0) unnamed_addr #9 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4294967296
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %1 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !55
  %11 = icmp eq i64 %10, %3
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 2
  %14 = lshr i64 %2, 24
  %15 = and i64 %14, 255
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %12
  %20 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !60
  %21 = lshr i64 %2, %20
  %22 = trunc i64 %20 to i32
  %23 = sub i32 24, %22
  %24 = shl nsw i32 -1, %23
  %25 = xor i32 %24, -1
  %26 = zext nneg i32 %25 to i64
  %27 = and i64 %21, %26
  %28 = getelementptr inbounds ptr, ptr %17, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp ne ptr %29, null
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %4, %12, %19
  %33 = phi i32 [ 0, %12 ], [ %31, %19 ], [ 0, %4 ]
  ret i32 %33
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @lookup_page_table_entry(ptr noundef %0) unnamed_addr #9 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4294967296
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %1 ], [ %6, %4 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !55
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %10, label %4, !llvm.loop !65

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 2
  %12 = lshr i64 %2, 24
  %13 = and i64 %12, 255
  %14 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !60
  %15 = lshr i64 %2, %14
  %16 = trunc i64 %14 to i32
  %17 = sub i32 24, %16
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = zext nneg i32 %19 to i64
  %21 = and i64 %15, %20
  %22 = getelementptr inbounds ptr, ptr %11, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  ret ptr %25
}

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ggc_set_mark(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call fastcc ptr @lookup_page_table_entry(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1344, ptr noundef nonnull @.str.4) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = ptrtoint ptr %0 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 9
  %12 = load i8, ptr %11, align 2, !tbaa !38
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %13
  %15 = load i64, ptr %14, align 16, !tbaa !62
  %16 = mul i64 %10, %15
  %17 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %13, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = zext nneg i32 %18 to i64
  %20 = lshr i64 %16, %19
  %21 = lshr i64 %20, 6
  %22 = and i64 %20, 63
  %23 = shl nuw i64 1, %22
  %24 = and i64 %21, 67108863
  %25 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 10, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !18
  %27 = and i64 %23, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %5
  %30 = or i64 %23, %26
  store i64 %30, ptr %25, align 8, !tbaa !18
  %31 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 7
  %32 = load i16, ptr %31, align 2, !tbaa !14
  %33 = add i16 %32, -1
  store i16 %33, ptr %31, align 2, !tbaa !14
  br label %34

34:                                               ; preds = %5, %29
  %35 = phi i32 [ 0, %29 ], [ 1, %5 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ggc_marked_p(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call fastcc ptr @lookup_page_table_entry(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1380, ptr noundef nonnull @.str.4) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = ptrtoint ptr %0 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 9
  %12 = load i8, ptr %11, align 2, !tbaa !38
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %13
  %15 = load i64, ptr %14, align 16, !tbaa !62
  %16 = mul i64 %10, %15
  %17 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %13, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = zext nneg i32 %18 to i64
  %20 = lshr i64 %16, %19
  %21 = lshr i64 %20, 6
  %22 = and i64 %20, 63
  %23 = shl nuw i64 1, %22
  %24 = and i64 %21, 67108863
  %25 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 10, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !18
  %27 = and i64 %23, %26
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @ggc_get_size(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = tail call fastcc ptr @lookup_page_table_entry(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 9
  %4 = load i8, ptr %3, align 2, !tbaa !38
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !18
  ret i64 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ggc_free(ptr noundef %0) local_unnamed_addr #10 {
  %2 = tail call fastcc ptr @lookup_page_table_entry(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 9
  %4 = load i8, ptr %3, align 2, !tbaa !38
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !18
  %8 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !32
  %9 = sub i64 %8, %7
  store i64 %9, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !32
  %10 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = ptrtoint ptr %0 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %5
  %16 = load i64, ptr %15, align 16, !tbaa !62
  %17 = mul i64 %14, %16
  %18 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %5, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !64
  %20 = zext nneg i32 %19 to i64
  %21 = lshr i64 %17, %20
  %22 = lshr i64 %21, 6
  %23 = and i64 %21, 63
  %24 = shl nuw i64 1, %23
  %25 = xor i64 %24, -1
  %26 = and i64 %22, 67108863
  %27 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 10, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !18
  %29 = and i64 %28, %25
  store i64 %29, ptr %27, align 8, !tbaa !18
  %30 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 7
  %31 = load i16, ptr %30, align 2, !tbaa !14
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 2, !tbaa !14
  %33 = icmp eq i16 %31, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !27
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.page_entry, ptr %36, i64 0, i32 7
  %40 = load i16, ptr %39, align 2, !tbaa !14
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 8, !tbaa !26
  store ptr %43, ptr %36, align 8, !tbaa !26
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct.page_entry, ptr %43, i64 0, i32 1
  %46 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %5
  %47 = select i1 %44, ptr %46, ptr %45
  store ptr %36, ptr %47, align 8, !tbaa !6
  %48 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %5
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  store ptr %49, ptr %2, align 8, !tbaa !26
  store ptr null, ptr %35, align 8, !tbaa !27
  %50 = load ptr, ptr %48, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 1
  store ptr %2, ptr %51, align 8, !tbaa !27
  store ptr %2, ptr %48, align 8, !tbaa !6
  br label %52

52:                                               ; preds = %42, %38, %34
  %53 = trunc i64 %21 to i16
  %54 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 8
  store i16 %53, ptr %54, align 4, !tbaa !28
  br label %55

55:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_ggc() local_unnamed_addr #3 {
  store i64 4096, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !34
  %1 = tail call i32 @exact_log2(i64 noundef 4096) #18
  %2 = sext i32 %1 to i64
  store i64 %2, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !60
  %3 = load ptr, ptr @stdout, align 8, !tbaa !6
  store ptr %3, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 13), align 8, !tbaa !66
  br label %4

4:                                                ; preds = %4, %0
  %5 = phi i64 [ 0, %0 ], [ %9, %4 ]
  %6 = phi <2 x i64> [ <i64 0, i64 1>, %0 ], [ %10, %4 ]
  %7 = shl nuw <2 x i64> <i64 1, i64 1>, %6
  %8 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %5
  store <2 x i64> %7, ptr %8, align 16, !tbaa !18
  %9 = add nuw i64 %5, 2
  %10 = add <2 x i64> %6, <i64 2, i64 2>
  %11 = icmp eq i64 %9, 64
  br i1 %11, label %12, label %4, !llvm.loop !67

12:                                               ; preds = %4, %12
  %13 = phi i64 [ %20, %12 ], [ 0, %4 ]
  %14 = add i64 %13, 64
  %15 = getelementptr inbounds [20 x i64], ptr @extra_order_size_table, i64 0, i64 %13
  %16 = load <2 x i64>, ptr %15, align 16, !tbaa !18
  %17 = add <2 x i64> %16, <i64 7, i64 7>
  %18 = and <2 x i64> %17, <i64 -8, i64 -8>
  %19 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %14
  store <2 x i64> %18, ptr %19, align 16, !tbaa !18
  %20 = add nuw i64 %13, 2
  %21 = icmp eq i64 %20, 20
  br i1 %21, label %22, label %12, !llvm.loop !70

22:                                               ; preds = %12, %22
  %23 = phi i64 [ %32, %22 ], [ 0, %12 ]
  %24 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !34
  %25 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %23
  %26 = load i64, ptr %25, align 8, !tbaa !18
  %27 = udiv i64 %24, %26
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds [84 x i32], ptr @objects_per_page_table, i64 0, i64 %23
  %30 = tail call i32 @llvm.umax.i32(i32 %28, i32 1)
  store i32 %30, ptr %29, align 4, !tbaa !33
  %31 = trunc i64 %23 to i32
  tail call fastcc void @compute_inverse(i32 noundef %31) #17
  %32 = add nuw nsw i64 %23, 1
  %33 = icmp eq i64 %32, 84
  br i1 %33, label %34, label %22, !llvm.loop !71

34:                                               ; preds = %22, %53
  %35 = phi i64 [ %54, %53 ], [ 64, %22 ]
  %36 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !18
  %38 = trunc i64 %37 to i32
  %39 = icmp sgt i32 %38, 511
  br i1 %39, label %53, label %40

40:                                               ; preds = %34
  %41 = shl i64 %37, 32
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !17
  %45 = trunc i64 %35 to i8
  br label %46

46:                                               ; preds = %40, %46
  %47 = phi i64 [ %42, %40 ], [ %49, %46 ]
  %48 = phi ptr [ %43, %40 ], [ %50, %46 ]
  store i8 %45, ptr %48, align 1, !tbaa !17
  %49 = add i64 %47, -1
  %50 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !17
  %52 = icmp eq i8 %44, %51
  br i1 %52, label %46, label %53, !llvm.loop !72

53:                                               ; preds = %46, %34
  %54 = add nuw nsw i64 %35, 1
  %55 = icmp eq i64 %54, 84
  br i1 %55, label %56, label %34, !llvm.loop !73

56:                                               ; preds = %53
  store i32 0, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !24
  store i32 10, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 15), align 4, !tbaa !53
  %57 = tail call ptr @xmalloc(i64 noundef 40) #18
  store ptr %57, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !54
  store i32 0, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !20
  store i32 128, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !50
  %58 = tail call ptr @xmalloc(i64 noundef 1024) #18
  store ptr %58, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !51
  %59 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !50
  %60 = zext i32 %59 to i64
  %61 = shl nuw nsw i64 %60, 3
  %62 = tail call ptr @xmalloc(i64 noundef %61) #18
  store ptr %62, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @compute_inverse(i32 noundef %0) unnamed_addr #11 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %2
  %4 = load i64, ptr %3, align 8, !tbaa !18
  %5 = and i64 %4, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %12, %1
  %8 = phi i64 [ %4, %1 ], [ %16, %12 ]
  %9 = phi i32 [ 0, %1 ], [ %15, %12 ]
  %10 = mul i64 %8, %8
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %26, label %19

12:                                               ; preds = %1, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %1 ]
  %14 = phi i64 [ %16, %12 ], [ %4, %1 ]
  %15 = add i32 %13, 1
  %16 = lshr exact i64 %14, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %7, !llvm.loop !74

19:                                               ; preds = %7, %19
  %20 = phi i64 [ %24, %19 ], [ %10, %7 ]
  %21 = phi i64 [ %23, %19 ], [ %8, %7 ]
  %22 = sub i64 2, %20
  %23 = mul i64 %22, %21
  %24 = mul i64 %23, %8
  %25 = icmp eq i64 %24, 1
  br i1 %25, label %26, label %19, !llvm.loop !75

26:                                               ; preds = %19, %7
  %27 = phi i64 [ %8, %7 ], [ %23, %19 ]
  %28 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %2
  store i64 %27, ptr %28, align 16, !tbaa !62
  %29 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %2, i32 1
  store i32 %9, ptr %29, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @new_ggc_zone(ptr nocapture noundef readnone %0) local_unnamed_addr #12 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @destroy_ggc_zone(ptr nocapture noundef readnone %0) local_unnamed_addr #12 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ggc_collect() local_unnamed_addr #12 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_print_statistics() local_unnamed_addr #3 {
  %1 = alloca %struct.ggc_statistics, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  store i32 0, ptr %1, align 4
  store i64 0, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 6), align 8, !tbaa !76
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  call void @ggc_print_common_statistics(ptr noundef %2, ptr noundef nonnull %1) #18
  call fastcc void @release_pages() #17
  %3 = load ptr, ptr @stderr, align 8, !tbaa !6
  %4 = call i64 @fwrite(ptr nonnull @.str.5, i64 61, i64 1, ptr %3) #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !6
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #21
  br label %7

7:                                                ; preds = %0, %68
  %8 = phi i64 [ 0, %0 ], [ %70, %68 ]
  %9 = phi i64 [ 0, %0 ], [ %69, %68 ]
  %10 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %8
  %15 = load i64, ptr %14, align 8, !tbaa !18
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %40, %16 ]
  %18 = phi i64 [ 0, %13 ], [ %35, %16 ]
  %19 = phi i64 [ 0, %13 ], [ %23, %16 ]
  %20 = phi ptr [ %11, %13 ], [ %41, %16 ]
  %21 = getelementptr inbounds %struct.page_entry, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !35
  %23 = add i64 %22, %19
  %24 = getelementptr inbounds %struct.page_entry, ptr %20, i64 0, i32 9
  %25 = load i8, ptr %24, align 2, !tbaa !38
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !18
  %29 = udiv i64 %22, %28
  %30 = getelementptr inbounds %struct.page_entry, ptr %20, i64 0, i32 7
  %31 = load i16, ptr %30, align 2, !tbaa !14
  %32 = zext i16 %31 to i64
  %33 = sub i64 %29, %32
  %34 = mul i64 %33, %15
  %35 = add i64 %34, %18
  %36 = add i64 %29, 64
  %37 = lshr i64 %36, 3
  %38 = and i64 %37, 2305843009213693944
  %39 = add i64 %17, 56
  %40 = add i64 %39, %38
  %41 = load ptr, ptr %20, align 8, !tbaa !26
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16, !llvm.loop !77

43:                                               ; preds = %16
  %44 = load ptr, ptr @stderr, align 8, !tbaa !6
  %45 = icmp ult i64 %23, 10240
  %46 = icmp ult i64 %23, 10485760
  %47 = select i1 %46, i64 10, i64 20
  %48 = select i1 %45, i64 0, i64 %47
  %49 = lshr i64 %23, %48
  %50 = select i1 %46, i32 107, i32 77
  %51 = select i1 %45, i32 32, i32 %50
  %52 = icmp ult i64 %35, 10240
  %53 = icmp ult i64 %35, 10485760
  %54 = select i1 %53, i64 10, i64 20
  %55 = select i1 %52, i64 0, i64 %54
  %56 = lshr i64 %35, %55
  %57 = select i1 %53, i32 107, i32 77
  %58 = select i1 %52, i32 32, i32 %57
  %59 = icmp ult i64 %40, 10240
  %60 = icmp ult i64 %40, 10485760
  %61 = select i1 %60, i64 10, i64 20
  %62 = select i1 %59, i64 0, i64 %61
  %63 = lshr i64 %40, %62
  %64 = select i1 %60, i32 107, i32 77
  %65 = select i1 %59, i32 32, i32 %64
  %66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.11, i64 noundef %15, i64 noundef %49, i32 noundef %51, i64 noundef %56, i32 noundef %58, i64 noundef %63, i32 noundef %65) #21
  %67 = add i64 %40, %9
  br label %68

68:                                               ; preds = %7, %43
  %69 = phi i64 [ %67, %43 ], [ %9, %7 ]
  %70 = add nuw nsw i64 %8, 1
  %71 = icmp eq i64 %70, 84
  br i1 %71, label %72, label %7, !llvm.loop !78

72:                                               ; preds = %68
  %73 = load ptr, ptr @stderr, align 8, !tbaa !6
  %74 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8
  %75 = icmp ult i64 %74, 10240
  %76 = icmp ult i64 %74, 10485760
  %77 = select i1 %76, i64 10, i64 20
  %78 = select i1 %75, i64 0, i64 %77
  %79 = lshr i64 %74, %78
  %80 = select i1 %76, i32 107, i32 77
  %81 = select i1 %75, i32 32, i32 %80
  %82 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8
  %83 = icmp ult i64 %82, 10240
  %84 = icmp ult i64 %82, 10485760
  %85 = select i1 %84, i64 10, i64 20
  %86 = select i1 %83, i64 0, i64 %85
  %87 = lshr i64 %82, %86
  %88 = select i1 %84, i32 107, i32 77
  %89 = select i1 %83, i32 32, i32 %88
  %90 = icmp ult i64 %69, 10240
  %91 = icmp ult i64 %69, 10485760
  %92 = select i1 %91, i64 10, i64 20
  %93 = select i1 %90, i64 0, i64 %92
  %94 = lshr i64 %69, %93
  %95 = select i1 %91, i32 107, i32 77
  %96 = select i1 %90, i32 32, i32 %95
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef %79, i32 noundef %81, i64 noundef %87, i32 noundef %89, i64 noundef %94, i32 noundef %96) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #19
  ret void
}

; Function Attrs: optsize
declare void @ggc_print_common_statistics(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @release_pages() unnamed_addr #3 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %16, %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %20

6:                                                ; preds = %0, %16
  %7 = phi ptr [ %18, %16 ], [ %1, %0 ]
  %8 = phi ptr [ %17, %16 ], [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), %0 ]
  %9 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.page_group, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !26
  store ptr %15, ptr %8, align 8, !tbaa !6
  tail call void @free(ptr noundef nonnull %7) #17
  br label %16

16:                                               ; preds = %6, %14
  %17 = phi ptr [ %8, %14 ], [ %7, %6 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %3, label %6, !llvm.loop !79

20:                                               ; preds = %3, %34
  %21 = phi ptr [ %36, %34 ], [ %4, %3 ]
  %22 = phi ptr [ %35, %34 ], [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), %3 ]
  %23 = getelementptr inbounds %struct.page_group, ptr %21, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !44
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load ptr, ptr %21, align 8, !tbaa !40
  store ptr %27, ptr %22, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.page_group, ptr %21, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !43
  %30 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !45
  %31 = sub i64 %30, %29
  store i64 %31, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.page_group, ptr %21, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  tail call void @free(ptr noundef %33) #17
  br label %34

34:                                               ; preds = %20, %26
  %35 = phi ptr [ %22, %26 ], [ %21, %20 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %20, !llvm.loop !80

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @init_ggc_pch() local_unnamed_addr #3 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 1680) #18
  ret ptr %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ggc_pch_count_object(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #13 {
  %6 = icmp ult i64 %2, 512
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %2
  %9 = load i8, ptr %8, align 1, !tbaa !17
  %10 = zext i8 %9 to i64
  br label %18

11:                                               ; preds = %5, %11
  %12 = phi i32 [ %17, %11 ], [ 10, %5 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !18
  %16 = icmp ult i64 %15, %2
  %17 = add i32 %12, 1
  br i1 %16, label %11, label %18, !llvm.loop !81

18:                                               ; preds = %11, %7
  %19 = phi i64 [ %10, %7 ], [ %13, %11 ]
  %20 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !33
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !33
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @ggc_pch_total_size(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !34
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %18, %3 ]
  %5 = phi i64 [ 0, %1 ], [ %17, %3 ]
  %6 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %4
  %7 = load i32, ptr %6, align 4, !tbaa !33
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %4
  %10 = load i64, ptr %9, align 8, !tbaa !18
  %11 = mul i64 %10, %8
  %12 = add i64 %11, %2
  %13 = freeze i64 %12
  %14 = add i64 %13, -1
  %15 = urem i64 %14, %2
  %16 = sub i64 %5, %15
  %17 = add i64 %16, %14
  %18 = add nuw nsw i64 %4, 1
  %19 = icmp eq i64 %18, 84
  br i1 %19, label %20, label %3, !llvm.loop !82

20:                                               ; preds = %3
  ret i64 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ggc_pch_this_base(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #13 {
  %3 = ptrtoint ptr %1 to i64
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %21, %4 ]
  %6 = phi i64 [ %3, %2 ], [ %20, %4 ]
  %7 = getelementptr inbounds %struct.ggc_pch_data, ptr %0, i64 0, i32 1, i64 %5
  store i64 %6, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %5
  %9 = load i32, ptr %8, align 4, !tbaa !33
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %5
  %12 = load i64, ptr %11, align 8, !tbaa !18
  %13 = mul i64 %12, %10
  %14 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !34
  %15 = add i64 %13, %14
  %16 = freeze i64 %15
  %17 = add i64 %16, -1
  %18 = urem i64 %17, %14
  %19 = sub i64 %6, %18
  %20 = add i64 %19, %17
  %21 = add nuw nsw i64 %5, 1
  %22 = icmp eq i64 %21, 84
  br i1 %22, label %23, label %4, !llvm.loop !83

23:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @ggc_pch_alloc_object(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #13 {
  %6 = icmp ult i64 %2, 512
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %2
  %9 = load i8, ptr %8, align 1, !tbaa !17
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !18
  br label %20

13:                                               ; preds = %5, %13
  %14 = phi i32 [ %19, %13 ], [ 10, %5 ]
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !18
  %18 = icmp ult i64 %17, %2
  %19 = add i32 %14, 1
  br i1 %18, label %13, label %20, !llvm.loop !84

20:                                               ; preds = %13, %7
  %21 = phi i64 [ %12, %7 ], [ %17, %13 ]
  %22 = phi i64 [ %10, %7 ], [ %15, %13 ]
  %23 = getelementptr inbounds %struct.ggc_pch_data, ptr %0, i64 0, i32 1, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !18
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %21, %24
  store i64 %26, ptr %23, align 8, !tbaa !18
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ggc_pch_prepare_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #12 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_pch_write_object(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readnone %3, i64 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #3 {
  %7 = icmp ult i64 %4, 512
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %4
  %10 = load i8, ptr %9, align 1, !tbaa !17
  %11 = zext i8 %10 to i32
  br label %19

12:                                               ; preds = %6, %12
  %13 = phi i32 [ %18, %12 ], [ 10, %6 ]
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !18
  %17 = icmp ult i64 %16, %4
  %18 = add i32 %13, 1
  br i1 %17, label %12, label %19, !llvm.loop !85

19:                                               ; preds = %12, %8
  %20 = phi i32 [ %11, %8 ], [ %13, %12 ]
  %21 = tail call i64 @fwrite(ptr noundef %2, i64 noundef %4, i64 noundef 1, ptr noundef %1) #17
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.14) #18
  br label %24

24:                                               ; preds = %23, %19
  %25 = zext i32 %20 to i64
  %26 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !18
  %28 = icmp eq i64 %27, %4
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = sub i64 %27, %4
  %31 = and i64 %30, 4294967295
  %32 = icmp ult i64 %31, 257
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr noundef nonnull @ggc_pch_write_object.emptyBytes, i64 noundef 1, i64 noundef %31, ptr noundef %1) #17
  %35 = icmp eq i64 %34, %31
  br i1 %35, label %40, label %39

36:                                               ; preds = %29
  %37 = tail call i32 @fseek(ptr noundef %1, i64 noundef %31, i32 noundef 1) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %33
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.15) #18
  br label %40

40:                                               ; preds = %39, %33, %36, %24
  %41 = getelementptr inbounds %struct.ggc_pch_data, ptr %0, i64 0, i32 2, i64 %25
  %42 = load i64, ptr %41, align 8, !tbaa !18
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8, !tbaa !18
  %44 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %25
  %45 = load i32, ptr %44, align 4, !tbaa !33
  %46 = zext i32 %45 to i64
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !34
  %50 = add i64 %49, -1
  %51 = load i64, ptr %26, align 8, !tbaa !18
  %52 = mul i64 %51, %43
  %53 = add i64 %52, %50
  %54 = urem i64 %53, %49
  %55 = sub i64 %50, %54
  %56 = tail call i32 @fseek(ptr noundef %1, i64 noundef %55, i32 noundef 1) #17
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.14) #18
  br label %59

59:                                               ; preds = %58, %48, %40
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_pch_finish(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = tail call i64 @fwrite(ptr noundef %0, i64 noundef 336, i64 noundef 1, ptr noundef %1) #17
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.14) #18
  br label %6

6:                                                ; preds = %5, %2
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_pch_read(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.ggc_pch_ondisk, align 4
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %3) #19
  %4 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !20
  tail call fastcc void @clear_marks() #17
  %5 = load i16, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !48
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2328, ptr noundef nonnull @.str.4) #18
  br label %8

8:                                                ; preds = %2, %7
  store i16 1, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !48
  br label %9

9:                                                ; preds = %8, %19
  %10 = phi i64 [ 0, %8 ], [ %20, %19 ]
  %11 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.page_entry, ptr %15, i64 0, i32 6
  store i16 1, ptr %16, align 8, !tbaa !10
  %17 = load ptr, ptr %15, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !86

19:                                               ; preds = %14, %9
  %20 = add nuw nsw i64 %10, 1
  %21 = icmp eq i64 %20, 84
  br i1 %21, label %22, label %9, !llvm.loop !87

22:                                               ; preds = %19
  %23 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 336, i64 noundef 1, ptr noundef %0) #17
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.16) #18
  br label %26

26:                                               ; preds = %25, %22
  br label %27

27:                                               ; preds = %26, %95
  %28 = phi i64 [ %97, %95 ], [ 0, %26 ]
  %29 = phi ptr [ %96, %95 ], [ %1, %26 ]
  %30 = getelementptr inbounds [84 x i32], ptr %3, i64 0, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !33
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %95, label %33

33:                                               ; preds = %27
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %28
  %36 = load i64, ptr %35, align 8, !tbaa !18
  %37 = mul i64 %36, %34
  %38 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !34
  %39 = add i64 %37, %38
  %40 = freeze i64 %39
  %41 = add i64 %40, -1
  %42 = urem i64 %41, %38
  %43 = sub nuw i64 %41, %42
  %44 = udiv i64 %43, %36
  %45 = add i64 %44, 1
  %46 = add i64 %44, 64
  %47 = lshr i64 %46, 3
  %48 = and i64 %47, 2305843009213693944
  %49 = add nuw nsw i64 %48, 56
  %50 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %49) #18
  %51 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 2
  store i64 %43, ptr %51, align 8, !tbaa !35
  %52 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 3
  store ptr %29, ptr %52, align 8, !tbaa !31
  %53 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 6
  store i16 0, ptr %53, align 8, !tbaa !10
  %54 = getelementptr inbounds i8, ptr %29, i64 %43
  %55 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 7
  store i16 0, ptr %55, align 2, !tbaa !14
  %56 = trunc i64 %28 to i8
  %57 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 9
  store i8 %56, ptr %57, align 2, !tbaa !38
  %58 = icmp ult i64 %45, 64
  br i1 %58, label %59, label %62

59:                                               ; preds = %62, %33
  %60 = phi i64 [ 0, %33 ], [ %63, %62 ]
  %61 = icmp ult i64 %60, %45
  br i1 %61, label %71, label %69

62:                                               ; preds = %33, %62
  %63 = phi i64 [ %67, %62 ], [ 64, %33 ]
  %64 = phi i64 [ %63, %62 ], [ 0, %33 ]
  %65 = lshr exact i64 %64, 6
  %66 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 10, i64 %65
  store i64 -1, ptr %66, align 8, !tbaa !18
  %67 = add nuw i64 %63, 64
  %68 = icmp ugt i64 %67, %45
  br i1 %68, label %59, label %62, !llvm.loop !88

69:                                               ; preds = %71, %59
  %70 = icmp sgt i64 %43, 0
  br i1 %70, label %81, label %89

71:                                               ; preds = %59, %71
  %72 = phi i64 [ %79, %71 ], [ %60, %59 ]
  %73 = and i64 %72, 63
  %74 = shl nuw i64 1, %73
  %75 = lshr i64 %72, 6
  %76 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 10, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !18
  %78 = or i64 %77, %74
  store i64 %78, ptr %76, align 8, !tbaa !18
  %79 = add nuw i64 %72, 1
  %80 = icmp ult i64 %79, %45
  br i1 %80, label %71, label %69, !llvm.loop !89

81:                                               ; preds = %69, %81
  %82 = phi ptr [ %84, %81 ], [ %29, %69 ]
  tail call fastcc void @set_page_table_entry(ptr noundef %82, ptr noundef nonnull %50) #17
  %83 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !34
  %84 = getelementptr inbounds i8, ptr %82, i64 %83
  %85 = load ptr, ptr %52, align 8, !tbaa !31
  %86 = load i64, ptr %51, align 8, !tbaa !35
  %87 = getelementptr inbounds i8, ptr %85, i64 %86
  %88 = icmp ult ptr %84, %87
  br i1 %88, label %81, label %89, !llvm.loop !90

89:                                               ; preds = %81, %69
  %90 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %28
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = icmp eq ptr %91, null
  %93 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %28
  %94 = select i1 %92, ptr %93, ptr %91
  store ptr %50, ptr %94, align 8, !tbaa !6
  store ptr %50, ptr %90, align 8, !tbaa !6
  tail call fastcc void @push_by_depth(ptr noundef nonnull %50) #17
  br label %95

95:                                               ; preds = %27, %89
  %96 = phi ptr [ %54, %89 ], [ %29, %27 ]
  %97 = add nuw nsw i64 %28, 1
  %98 = icmp eq i64 %97, 84
  br i1 %98, label %99, label %27, !llvm.loop !91

99:                                               ; preds = %95
  %100 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !20
  %101 = sub i32 %100, %4
  tail call fastcc void @move_ptes_to_front(i32 noundef %4, i32 noundef %101) #17
  %102 = ptrtoint ptr %96 to i64
  %103 = ptrtoint ptr %1 to i64
  %104 = sub i64 %102, %103
  store i64 %104, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 6), align 8, !tbaa !76
  store i64 %104, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_marks() unnamed_addr #3 {
  br label %1

1:                                                ; preds = %0, %60
  %2 = phi i64 [ 2, %0 ], [ %61, %60 ]
  %3 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %1, %50
  %7 = phi ptr [ %58, %50 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 9
  %11 = load i8, ptr %10, align 2, !tbaa !38
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !18
  %15 = udiv i64 %9, %14
  %16 = add i64 %15, 64
  %17 = lshr i64 %16, 3
  %18 = and i64 %17, 2305843009213693944
  %19 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  %21 = ptrtoint ptr %20 to i64
  %22 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !34
  %23 = add i64 %22, -1
  %24 = and i64 %23, %21
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1685, ptr noundef nonnull @.str.4) #18
  br label %27

27:                                               ; preds = %6, %26
  %28 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 6
  %29 = load i16, ptr %28, align 8, !tbaa !10
  %30 = load i16, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !48
  %31 = icmp ult i16 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !52
  %34 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !23
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = tail call ptr @xmalloc(i64 noundef %18) #18
  %41 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !52
  %42 = load i64, ptr %34, align 8, !tbaa !23
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  store ptr %40, ptr %43, align 8, !tbaa !6
  %44 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !52
  %45 = getelementptr inbounds ptr, ptr %44, i64 %42
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  br label %47

47:                                               ; preds = %39, %32
  %48 = phi ptr [ %46, %39 ], [ %37, %32 ]
  %49 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %48, ptr nonnull align 8 %49, i64 %18, i1 false)
  br label %50

50:                                               ; preds = %47, %27
  %51 = trunc i64 %15 to i16
  %52 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 7
  store i16 %51, ptr %52, align 2, !tbaa !14
  %53 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %53, i8 0, i64 %18, i1 false)
  %54 = and i64 %15, 63
  %55 = shl nuw i64 1, %54
  %56 = lshr i64 %15, 6
  %57 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 10, i64 %56
  store i64 %55, ptr %57, align 8, !tbaa !18
  %58 = load ptr, ptr %7, align 8, !tbaa !6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %6, !llvm.loop !92

60:                                               ; preds = %50, %1
  %61 = add nuw nsw i64 %2, 1
  %62 = icmp eq i64 %61, 84
  br i1 %62, label %63, label %1, !llvm.loop !93

63:                                               ; preds = %60
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_ptes_to_front(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !50
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 3
  %6 = tail call ptr @xmalloc(i64 noundef %5) #18
  %7 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !50
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = tail call ptr @xmalloc(i64 noundef %9) #18
  %11 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !51
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = sext i32 %1 to i64
  %15 = shl nsw i64 %14, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %13, i64 %15, i1 false)
  %16 = getelementptr inbounds ptr, ptr %6, i64 %14
  %17 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !51
  %18 = shl nsw i64 %12, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %17, i64 %18, i1 false)
  %19 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !52
  %20 = getelementptr inbounds ptr, ptr %19, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %20, i64 %15, i1 false)
  %21 = getelementptr inbounds ptr, ptr %10, i64 %14
  %22 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %22, i64 %18, i1 false)
  %23 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !51
  tail call void @free(ptr noundef %23) #17
  %24 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !52
  tail call void @free(ptr noundef %24) #17
  store ptr %6, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !51
  store ptr %10, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !52
  %25 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %2
  %28 = zext i32 %25 to i64
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %28, %27 ], [ %31, %29 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr inbounds ptr, ptr %6, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.page_entry, ptr %33, i64 0, i32 5
  store i64 %31, ptr %34, align 8, !tbaa !23
  %35 = icmp eq i64 %31, 0
  br i1 %35, label %36, label %29, !llvm.loop !94

36:                                               ; preds = %29, %2
  %37 = icmp eq i32 %0, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call fastcc void @push_depth(i32 noundef %1) #17
  br label %39

39:                                               ; preds = %38, %36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !13, i64 48}
!11 = !{!"page_entry", !7, i64 0, !7, i64 8, !12, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !13, i64 48, !13, i64 50, !13, i64 52, !8, i64 54, !8, i64 56}
!12 = !{!"long", !8, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!11, !13, i64 50}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!8, !8, i64 0}
!18 = !{!12, !12, i64 0}
!19 = distinct !{!19, !16}
!20 = !{!21, !22, i64 1456}
!21 = !{!"globals", !8, i64 0, !8, i64 672, !7, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !12, i64 1392, !12, i64 1400, !13, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !22, i64 1440, !22, i64 1444, !7, i64 1448, !22, i64 1456, !22, i64 1460, !7, i64 1464, !7, i64 1472}
!22 = !{!"int", !8, i64 0}
!23 = !{!11, !12, i64 40}
!24 = !{!21, !22, i64 1440}
!25 = distinct !{!25, !16}
!26 = !{!11, !7, i64 0}
!27 = !{!11, !7, i64 8}
!28 = !{!11, !13, i64 52}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = !{!11, !7, i64 24}
!32 = !{!21, !12, i64 1368}
!33 = !{!22, !22, i64 0}
!34 = !{!21, !12, i64 1352}
!35 = !{!11, !12, i64 16}
!36 = distinct !{!36, !16}
!37 = !{!11, !7, i64 32}
!38 = !{!11, !8, i64 54}
!39 = !{!21, !7, i64 1424}
!40 = !{!41, !7, i64 0}
!41 = !{!"page_group", !7, i64 0, !7, i64 8, !12, i64 16, !22, i64 24}
!42 = !{!41, !7, i64 8}
!43 = !{!41, !12, i64 16}
!44 = !{!41, !22, i64 24}
!45 = !{!21, !12, i64 1384}
!46 = !{!21, !7, i64 1416}
!47 = distinct !{!47, !16}
!48 = !{!21, !13, i64 1408}
!49 = !{!21, !12, i64 1392}
!50 = !{!21, !22, i64 1460}
!51 = !{!21, !7, i64 1464}
!52 = !{!21, !7, i64 1472}
!53 = !{!21, !22, i64 1444}
!54 = !{!21, !7, i64 1448}
!55 = !{!56, !12, i64 8}
!56 = !{!"page_table_chain", !7, i64 0, !12, i64 8, !8, i64 16}
!57 = distinct !{!57, !16}
!58 = !{!21, !7, i64 1344}
!59 = !{!56, !7, i64 0}
!60 = !{!21, !12, i64 1360}
!61 = !{i32 0, i32 2}
!62 = !{!63, !12, i64 0}
!63 = !{!"", !12, i64 0, !22, i64 8}
!64 = !{!63, !22, i64 8}
!65 = distinct !{!65, !16}
!66 = !{!21, !7, i64 1432}
!67 = distinct !{!67, !16, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = distinct !{!70, !16, !68, !69}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = !{!21, !12, i64 1376}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !16}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !16}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, !16}
!92 = distinct !{!92, !16}
!93 = distinct !{!93, !16}
!94 = distinct !{!94, !16}
