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
define dso_local void @debug_print_page_list(i32 noundef %0) local_unnamed_addr #0 !prof !54 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %4, ptr noundef %6) #17
  %8 = load ptr, ptr %3, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %19, %10 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 6
  %13 = load i16, ptr %12, align 8, !tbaa !59
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.page_entry, ptr %11, i64 0, i32 7
  %16 = load i16, ptr %15, align 2, !tbaa !63
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %11, i32 noundef %14, i32 noundef %17) #17
  %19 = load ptr, ptr %11, align 8, !tbaa !55
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !64

21:                                               ; preds = %10, %1
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %23 = load ptr, ptr @stdout, align 8, !tbaa !55
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
define dso_local ptr @ggc_alloc_typed_stat(i32 noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !54 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef %1) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ggc_alloc_stat(i64 noundef %0) local_unnamed_addr #3 !prof !66 {
  %2 = icmp ult i64 %0, 512
  br i1 %2, label %3, label %9, !prof !67

3:                                                ; preds = %1
  %4 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %0
  %5 = load i8, ptr %4, align 1, !tbaa !68
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !69
  br label %15

9:                                                ; preds = %1, %9
  %10 = phi i64 [ %14, %9 ], [ 10, %1 ]
  %11 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !69
  %13 = icmp ult i64 %12, %0
  %14 = add i64 %10, 1
  br i1 %13, label %9, label %15, !prof !70, !llvm.loop !71

15:                                               ; preds = %9, %3
  %16 = phi i64 [ %8, %3 ], [ %12, %9 ]
  %17 = phi i64 [ %6, %3 ], [ %10, %9 ]
  %18 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !72

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 7
  %23 = load i16, ptr %22, align 2, !tbaa !63
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %54, !prof !73

25:                                               ; preds = %21, %15
  %26 = trunc i64 %17 to i32
  %27 = tail call fastcc ptr @alloc_page(i32 noundef %26) #17
  %28 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !74
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.page_entry, ptr %27, i64 0, i32 5
  store i64 %29, ptr %30, align 8, !tbaa !77
  tail call fastcc void @push_by_depth(ptr noundef %27) #17
  %31 = getelementptr inbounds %struct.page_entry, ptr %27, i64 0, i32 6
  %32 = load i16, ptr %31, align 8, !tbaa !59
  %33 = zext i16 %32 to i32
  %34 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !78
  %35 = icmp ugt i32 %34, %33
  br i1 %35, label %43, label %36, !prof !79

36:                                               ; preds = %25, %36
  %37 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !74
  %38 = add i32 %37, -1
  tail call fastcc void @push_depth(i32 noundef %38) #17
  %39 = load i16, ptr %31, align 8, !tbaa !59
  %40 = zext i16 %39 to i32
  %41 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !78
  %42 = icmp ugt i32 %41, %40
  br i1 %42, label %43, label %36, !prof !80, !llvm.loop !81

43:                                               ; preds = %36, %25
  br i1 %20, label %44, label %46, !prof !82

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %17
  br label %48

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 1
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %47, %46 ], [ %45, %44 ]
  store ptr %27, ptr %49, align 8, !tbaa !55
  store ptr %19, ptr %27, align 8, !tbaa !83
  %50 = getelementptr inbounds %struct.page_entry, ptr %27, i64 0, i32 1
  store ptr null, ptr %50, align 8, !tbaa !84
  store ptr %27, ptr %18, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct.page_entry, ptr %27, i64 0, i32 8
  store i16 1, ptr %51, align 4, !tbaa !85
  %52 = getelementptr inbounds %struct.page_entry, ptr %27, i64 0, i32 7
  %53 = load i16, ptr %52, align 2, !tbaa !63
  br label %91

54:                                               ; preds = %21
  %55 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 8
  %56 = load i16, ptr %55, align 4, !tbaa !85
  %57 = zext i16 %56 to i32
  %58 = lshr i32 %57, 6
  %59 = zext nneg i32 %58 to i64
  %60 = and i32 %57, 63
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 10, i64 %59
  %63 = load i64, ptr %62, align 8, !tbaa !69
  %64 = shl nuw i64 1, %61
  %65 = and i64 %64, %63
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %83, label %67, !prof !86

67:                                               ; preds = %54, %67
  %68 = phi i64 [ %72, %67 ], [ 0, %54 ]
  %69 = getelementptr inbounds %struct.page_entry, ptr %19, i64 0, i32 10, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !69
  %71 = icmp eq i64 %70, -1
  %72 = add i64 %68, 1
  br i1 %71, label %67, label %73, !prof !87, !llvm.loop !88

73:                                               ; preds = %67, %73
  %74 = phi i64 [ %78, %73 ], [ 0, %67 ]
  %75 = shl nuw i64 1, %74
  %76 = and i64 %75, %70
  %77 = icmp eq i64 %76, 0
  %78 = add i64 %74, 1
  br i1 %77, label %79, label %73, !prof !89, !llvm.loop !90

79:                                               ; preds = %73
  %80 = shl i64 %68, 6
  %81 = add i64 %74, %80
  %82 = trunc i64 %81 to i32
  br label %83

83:                                               ; preds = %79, %54
  %84 = phi i64 [ %74, %79 ], [ %61, %54 ]
  %85 = phi i64 [ %68, %79 ], [ %59, %54 ]
  %86 = phi i32 [ %82, %79 ], [ %57, %54 ]
  %87 = trunc i32 %86 to i16
  %88 = add i16 %87, 1
  store i16 %88, ptr %55, align 4, !tbaa !85
  %89 = zext i32 %86 to i64
  %90 = mul i64 %16, %89
  br label %91

91:                                               ; preds = %83, %48
  %92 = phi i16 [ %53, %48 ], [ %23, %83 ]
  %93 = phi i64 [ 0, %48 ], [ %84, %83 ]
  %94 = phi i64 [ 0, %48 ], [ %90, %83 ]
  %95 = phi ptr [ %27, %48 ], [ %19, %83 ]
  %96 = phi i64 [ 0, %48 ], [ %85, %83 ]
  %97 = shl nuw i64 1, %93
  %98 = getelementptr inbounds %struct.page_entry, ptr %95, i64 0, i32 10, i64 %96
  %99 = load i64, ptr %98, align 8, !tbaa !69
  %100 = or i64 %99, %97
  store i64 %100, ptr %98, align 8, !tbaa !69
  %101 = getelementptr inbounds %struct.page_entry, ptr %95, i64 0, i32 7
  %102 = add i16 %92, -1
  store i16 %102, ptr %101, align 2, !tbaa !63
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %117, !prof !91

104:                                              ; preds = %91
  %105 = load ptr, ptr %95, align 8, !tbaa !83
  %106 = icmp eq ptr %105, null
  br i1 %106, label %117, label %107, !prof !92

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 7
  %109 = load i16, ptr %108, align 2, !tbaa !63
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %117, label %111, !prof !93

111:                                              ; preds = %107
  store ptr %105, ptr %18, align 8, !tbaa !55
  %112 = load ptr, ptr %95, align 8, !tbaa !83
  %113 = getelementptr inbounds %struct.page_entry, ptr %112, i64 0, i32 1
  store ptr null, ptr %113, align 8, !tbaa !84
  store ptr null, ptr %95, align 8, !tbaa !83
  %114 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %17
  %115 = load ptr, ptr %114, align 8, !tbaa !55
  %116 = getelementptr inbounds %struct.page_entry, ptr %95, i64 0, i32 1
  store ptr %115, ptr %116, align 8, !tbaa !84
  store ptr %95, ptr %115, align 8, !tbaa !83
  store ptr %95, ptr %114, align 8, !tbaa !55
  br label %117

117:                                              ; preds = %111, %107, %104, %91
  %118 = getelementptr inbounds %struct.page_entry, ptr %95, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !94
  %120 = getelementptr inbounds i8, ptr %119, i64 %94
  %121 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !95
  %122 = add i64 %121, %16
  store i64 %122, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !95
  %123 = load i64, ptr @timevar_ggc_mem_total, align 8, !tbaa !69
  %124 = add i64 %123, %16
  store i64 %124, ptr @timevar_ggc_mem_total, align 8, !tbaa !69
  ret ptr %120
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @alloc_page(i32 noundef %0) unnamed_addr #3 !prof !96 !PGOFuncName !97 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [84 x i32], ptr @objects_per_page_table, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !98
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 64
  %7 = lshr i64 %6, 3
  %8 = and i64 %7, 1073741816
  %9 = add nuw nsw i64 %8, 56
  %10 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %2
  %11 = load i64, ptr %10, align 8, !tbaa !69
  %12 = mul i64 %11, %5
  %13 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !99
  %14 = tail call i64 @llvm.umax.i64(i64 %12, i64 %13)
  br label %15

15:                                               ; preds = %19, %1
  %16 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), %1 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19, !prof !100

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.page_entry, ptr %17, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !101
  %22 = icmp eq i64 %21, %14
  br i1 %22, label %23, label %15, !prof !102, !llvm.loop !103

23:                                               ; preds = %19
  %24 = load ptr, ptr %17, align 8, !tbaa !83
  store ptr %24, ptr %16, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.page_entry, ptr %17, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !94
  %27 = getelementptr inbounds %struct.page_entry, ptr %17, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !104
  %29 = getelementptr inbounds %struct.page_entry, ptr %17, i64 0, i32 9
  %30 = load i8, ptr %29, align 2, !tbaa !105
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, %0
  br i1 %32, label %97, label %33, !prof !106

33:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %17) #17
  br label %98

34:                                               ; preds = %15
  %35 = icmp ult i64 %13, %12
  %36 = shl i64 %13, 4
  %37 = add i64 %13, -1
  %38 = add i64 %37, %14
  %39 = select i1 %35, i64 %38, i64 %36, !prof !107
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
  %52 = select i1 %35, i64 %51, i64 %50, !prof !107
  %53 = getelementptr inbounds i8, ptr %40, i64 %39
  %54 = sub i64 0, %52
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  %56 = icmp ugt i64 %48, 31
  br i1 %56, label %57, label %59, !prof !108

57:                                               ; preds = %34
  %58 = getelementptr inbounds %struct.page_group, ptr %47, i64 -1
  br label %66

59:                                               ; preds = %34
  %60 = icmp eq i64 %52, 0
  %61 = select i1 %60, i64 %45, i64 0, !prof !109
  %62 = getelementptr inbounds i8, ptr %55, i64 %61
  %63 = select i1 %60, i64 %42, i64 %52, !prof !109
  %64 = icmp ugt i64 %63, 31
  br i1 %64, label %66, label %65, !prof !110

65:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 847, ptr noundef nonnull @.str.4) #18
  br label %66

66:                                               ; preds = %65, %59, %57
  %67 = phi ptr [ %58, %57 ], [ %62, %59 ], [ %62, %65 ]
  %68 = phi ptr [ %55, %57 ], [ %62, %59 ], [ %62, %65 ]
  %69 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), align 8, !tbaa !111
  store ptr %69, ptr %67, align 8, !tbaa !112
  %70 = getelementptr inbounds %struct.page_group, ptr %67, i64 0, i32 1
  store ptr %40, ptr %70, align 8, !tbaa !114
  %71 = getelementptr inbounds %struct.page_group, ptr %67, i64 0, i32 2
  store i64 %39, ptr %71, align 8, !tbaa !115
  %72 = getelementptr inbounds %struct.page_group, ptr %67, i64 0, i32 3
  store i32 0, ptr %72, align 8, !tbaa !116
  store ptr %67, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), align 8, !tbaa !111
  %73 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !117
  %74 = add i64 %73, %39
  store i64 %74, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !117
  br i1 %35, label %98, label %75, !prof !107

75:                                               ; preds = %66
  %76 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), align 8, !tbaa !118
  %77 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !99
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i8, ptr %68, i64 %78
  %80 = icmp eq ptr %79, %47
  br i1 %80, label %95, label %81, !prof !119

81:                                               ; preds = %75
  %82 = trunc i32 %0 to i8
  br label %83

83:                                               ; preds = %81, %83
  %84 = phi ptr [ %76, %81 ], [ %86, %83 ]
  %85 = phi ptr [ %79, %81 ], [ %93, %83 ]
  %86 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %9) #18
  %87 = getelementptr inbounds %struct.page_entry, ptr %86, i64 0, i32 9
  store i8 %82, ptr %87, align 2, !tbaa !105
  %88 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !99
  %89 = getelementptr inbounds %struct.page_entry, ptr %86, i64 0, i32 2
  store i64 %88, ptr %89, align 8, !tbaa !101
  %90 = getelementptr inbounds %struct.page_entry, ptr %86, i64 0, i32 3
  store ptr %85, ptr %90, align 8, !tbaa !94
  %91 = getelementptr inbounds %struct.page_entry, ptr %86, i64 0, i32 4
  store ptr %67, ptr %91, align 8, !tbaa !104
  store ptr %84, ptr %86, align 8, !tbaa !83
  %92 = sub i64 0, %88
  %93 = getelementptr inbounds i8, ptr %85, i64 %92
  %94 = icmp eq ptr %93, %47
  br i1 %94, label %95, label %83, !prof !120, !llvm.loop !121

95:                                               ; preds = %83, %75
  %96 = phi ptr [ %76, %75 ], [ %86, %83 ]
  store ptr %96, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), align 8, !tbaa !118
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
  store i64 %14, ptr %106, align 8, !tbaa !101
  %107 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 3
  store ptr %103, ptr %107, align 8, !tbaa !94
  %108 = load i16, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !122
  %109 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 6
  store i16 %108, ptr %109, align 8, !tbaa !59
  %110 = trunc i32 %0 to i8
  %111 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 9
  store i8 %110, ptr %111, align 2, !tbaa !105
  %112 = trunc i32 %4 to i16
  %113 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 7
  store i16 %112, ptr %113, align 2, !tbaa !63
  %114 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 8
  store i16 1, ptr %114, align 4, !tbaa !85
  %115 = zext nneg i16 %108 to i64
  %116 = shl nuw i64 1, %115
  %117 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 8), align 8, !tbaa !123
  %118 = or i64 %117, %116
  store i64 %118, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 8), align 8, !tbaa !123
  %119 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 4
  store ptr %104, ptr %119, align 8, !tbaa !104
  tail call fastcc void @set_page_group_in_use(ptr noundef %104, ptr noundef %103) #17
  %120 = and i64 %5, 63
  %121 = shl nuw i64 1, %120
  %122 = lshr i64 %5, 6
  %123 = getelementptr inbounds %struct.page_entry, ptr %105, i64 0, i32 10, i64 %122
  store i64 %121, ptr %123, align 8, !tbaa !69
  tail call fastcc void @set_page_table_entry(ptr noundef %103, ptr noundef %105) #17
  ret ptr %105
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_by_depth(ptr noundef %0) unnamed_addr #3 !prof !96 !PGOFuncName !124 {
  %2 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !74
  %3 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !125
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %17, label %5, !prof !126

5:                                                ; preds = %1
  %6 = shl i32 %3, 1
  store i32 %6, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !125
  %7 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !127
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %9) #18
  store ptr %10, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !127
  %11 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !128
  %12 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !125
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = tail call ptr @xrealloc(ptr noundef %11, i64 noundef %14) #18
  store ptr %15, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !128
  %16 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !74
  br label %17

17:                                               ; preds = %5, %1
  %18 = phi i32 [ %16, %5 ], [ %2, %1 ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !127
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  store ptr %0, ptr %21, align 8, !tbaa !55
  %22 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !128
  %23 = add i32 %18, 1
  store i32 %23, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !74
  %24 = getelementptr inbounds ptr, ptr %22, i64 %20
  store ptr null, ptr %24, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_depth(i32 noundef %0) unnamed_addr #3 !prof !129 !PGOFuncName !130 {
  %2 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !78
  %3 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 15), align 4, !tbaa !131
  %4 = icmp ult i32 %2, %3
  %5 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !132
  br i1 %4, label %12, label %6, !prof !133

6:                                                ; preds = %1
  %7 = shl i32 %3, 1
  store i32 %7, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 15), align 4, !tbaa !131
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = tail call ptr @xrealloc(ptr noundef %5, i64 noundef %9) #18
  store ptr %10, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !132
  %11 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !78
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %11, %6 ], [ %2, %1 ]
  %14 = phi ptr [ %10, %6 ], [ %5, %1 ]
  %15 = add i32 %13, 1
  store i32 %15, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !78
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  store i32 %0, ptr %17, align 4, !tbaa !98
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
define internal fastcc void @set_page_group_in_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #7 !prof !96 !PGOFuncName !134 {
  %3 = getelementptr inbounds %struct.page_group, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = tail call fastcc i64 @page_group_index(ptr noundef %4, ptr noundef %1) #17
  %6 = trunc i64 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.page_group, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !116
  %10 = or i32 %7, %9
  store i32 %10, ptr %8, align 8, !tbaa !116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_page_table_entry(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !96 !PGOFuncName !135 {
  %3 = ptrtoint ptr %0 to i64
  %4 = and i64 %3, -4294967296
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !136

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.page_table_chain, ptr %7, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !137
  %12 = icmp eq i64 %11, %4
  br i1 %12, label %17, label %5, !prof !139, !llvm.loop !140

13:                                               ; preds = %5
  %14 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 2064) #18
  %15 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), align 8, !tbaa !141
  store ptr %15, ptr %14, align 8, !tbaa !142
  %16 = getelementptr inbounds %struct.page_table_chain, ptr %14, i64 0, i32 1
  store i64 %4, ptr %16, align 8, !tbaa !137
  store ptr %14, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), align 8, !tbaa !141
  br label %17

17:                                               ; preds = %9, %13
  %18 = phi ptr [ %14, %13 ], [ %7, %9 ]
  %19 = getelementptr inbounds %struct.page_table_chain, ptr %18, i64 0, i32 2
  %20 = lshr i64 %3, 24
  %21 = and i64 %20, 255
  %22 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !143
  %23 = sub i64 24, %22
  %24 = getelementptr inbounds ptr, ptr %19, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !144

27:                                               ; preds = %17
  %28 = shl nuw i64 1, %23
  %29 = tail call ptr @xcalloc(i64 noundef %28, i64 noundef 8) #18
  store ptr %29, ptr %24, align 8, !tbaa !55
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
  store ptr %1, ptr %38, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i64 @page_group_index(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !96 !PGOFuncName !145 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !143
  %7 = lshr i64 %5, %6
  ret i64 %7
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_S(ptr noundef %0) local_unnamed_addr #3 !prof !54 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @ggc_allocated_p(ptr noundef nonnull %0) #17, !range !146
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
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = ptrtoint ptr %0 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 9
  %17 = load i8, ptr %16, align 2, !tbaa !105
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !69
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
  %28 = load i64, ptr %27, align 16, !tbaa !147
  %29 = mul i64 %28, %15
  %30 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %18, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !149
  %32 = zext nneg i32 %31 to i64
  %33 = lshr i64 %29, %32
  %34 = lshr i64 %33, 6
  %35 = and i64 %33, 63
  %36 = shl nuw i64 1, %35
  %37 = and i64 %34, 67108863
  %38 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 10, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !69
  %40 = and i64 %36, %39
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = or i64 %36, %39
  store i64 %43, ptr %38, align 8, !tbaa !69
  %44 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 7
  %45 = load i16, ptr %44, align 2, !tbaa !63
  %46 = add i16 %45, -1
  store i16 %46, ptr %44, align 2, !tbaa !63
  br label %47

47:                                               ; preds = %26, %1, %3, %42, %23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @ggc_allocated_p(ptr noundef %0) unnamed_addr #9 !prof !54 !PGOFuncName !150 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4294967296
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %1 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !137
  %11 = icmp eq i64 %10, %3
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 2
  %14 = lshr i64 %2, 24
  %15 = and i64 %14, 255
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %12
  %20 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !143
  %21 = lshr i64 %2, %20
  %22 = trunc i64 %20 to i32
  %23 = sub i32 24, %22
  %24 = shl nsw i32 -1, %23
  %25 = xor i32 %24, -1
  %26 = zext nneg i32 %25 to i64
  %27 = and i64 %21, %26
  %28 = getelementptr inbounds ptr, ptr %17, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = icmp ne ptr %29, null
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %4, %12, %19
  %33 = phi i32 [ 0, %12 ], [ %31, %19 ], [ 0, %4 ]
  ret i32 %33
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @lookup_page_table_entry(ptr noundef %0) unnamed_addr #9 !prof !151 !PGOFuncName !152 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, -4294967296
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 2), %1 ], [ %6, %4 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !137
  %9 = icmp eq i64 %8, %3
  br i1 %9, label %10, label %4, !prof !153, !llvm.loop !154

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.page_table_chain, ptr %6, i64 0, i32 2
  %12 = lshr i64 %2, 24
  %13 = and i64 %12, 255
  %14 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !143
  %15 = lshr i64 %2, %14
  %16 = trunc i64 %14 to i32
  %17 = sub i32 24, %16
  %18 = shl nsw i32 -1, %17
  %19 = xor i32 %18, -1
  %20 = zext nneg i32 %19 to i64
  %21 = and i64 %15, %20
  %22 = getelementptr inbounds ptr, ptr %11, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  ret ptr %25
}

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ggc_set_mark(ptr noundef %0) local_unnamed_addr #3 !prof !54 {
  %2 = tail call fastcc ptr @lookup_page_table_entry(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1344, ptr noundef nonnull @.str.4) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = ptrtoint ptr %0 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 9
  %12 = load i8, ptr %11, align 2, !tbaa !105
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %13
  %15 = load i64, ptr %14, align 16, !tbaa !147
  %16 = mul i64 %10, %15
  %17 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %13, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !149
  %19 = zext nneg i32 %18 to i64
  %20 = lshr i64 %16, %19
  %21 = lshr i64 %20, 6
  %22 = and i64 %20, 63
  %23 = shl nuw i64 1, %22
  %24 = and i64 %21, 67108863
  %25 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 10, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !69
  %27 = and i64 %23, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %5
  %30 = or i64 %23, %26
  store i64 %30, ptr %25, align 8, !tbaa !69
  %31 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 7
  %32 = load i16, ptr %31, align 2, !tbaa !63
  %33 = add i16 %32, -1
  store i16 %33, ptr %31, align 2, !tbaa !63
  br label %34

34:                                               ; preds = %5, %29
  %35 = phi i32 [ 0, %29 ], [ 1, %5 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ggc_marked_p(ptr noundef %0) local_unnamed_addr #3 !prof !54 {
  %2 = tail call fastcc ptr @lookup_page_table_entry(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1380, ptr noundef nonnull @.str.4) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = ptrtoint ptr %0 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 9
  %12 = load i8, ptr %11, align 2, !tbaa !105
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %13
  %15 = load i64, ptr %14, align 16, !tbaa !147
  %16 = mul i64 %10, %15
  %17 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %13, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !149
  %19 = zext nneg i32 %18 to i64
  %20 = lshr i64 %16, %19
  %21 = lshr i64 %20, 6
  %22 = and i64 %20, 63
  %23 = shl nuw i64 1, %22
  %24 = and i64 %21, 67108863
  %25 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 10, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !69
  %27 = and i64 %23, %26
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @ggc_get_size(ptr noundef readonly %0) local_unnamed_addr #9 !prof !155 {
  %2 = tail call fastcc ptr @lookup_page_table_entry(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 9
  %4 = load i8, ptr %3, align 2, !tbaa !105
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !69
  ret i64 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ggc_free(ptr noundef %0) local_unnamed_addr #10 !prof !156 {
  %2 = tail call fastcc ptr @lookup_page_table_entry(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 9
  %4 = load i8, ptr %3, align 2, !tbaa !105
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !69
  %8 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !95
  %9 = sub i64 %8, %7
  store i64 %9, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !95
  %10 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = ptrtoint ptr %0 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %5
  %16 = load i64, ptr %15, align 16, !tbaa !147
  %17 = mul i64 %14, %16
  %18 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %5, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !149
  %20 = zext nneg i32 %19 to i64
  %21 = lshr i64 %17, %20
  %22 = lshr i64 %21, 6
  %23 = and i64 %21, 63
  %24 = shl nuw i64 1, %23
  %25 = xor i64 %24, -1
  %26 = and i64 %22, 67108863
  %27 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 10, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !69
  %29 = and i64 %28, %25
  store i64 %29, ptr %27, align 8, !tbaa !69
  %30 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 7
  %31 = load i16, ptr %30, align 2, !tbaa !63
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 2, !tbaa !63
  %33 = icmp eq i16 %31, 0
  br i1 %33, label %34, label %55, !prof !157

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !84
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38, !prof !158

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.page_entry, ptr %36, i64 0, i32 7
  %40 = load i16, ptr %39, align 2, !tbaa !63
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %52, !prof !159

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 8, !tbaa !83
  store ptr %43, ptr %36, align 8, !tbaa !83
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct.page_entry, ptr %43, i64 0, i32 1
  %46 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %5
  %47 = select i1 %44, ptr %46, ptr %45, !prof !160
  store ptr %36, ptr %47, align 8, !tbaa !55
  %48 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %5
  %49 = load ptr, ptr %48, align 8, !tbaa !55
  store ptr %49, ptr %2, align 8, !tbaa !83
  store ptr null, ptr %35, align 8, !tbaa !84
  %50 = load ptr, ptr %48, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 1
  store ptr %2, ptr %51, align 8, !tbaa !84
  store ptr %2, ptr %48, align 8, !tbaa !55
  br label %52

52:                                               ; preds = %42, %38, %34
  %53 = trunc i64 %21 to i16
  %54 = getelementptr inbounds %struct.page_entry, ptr %2, i64 0, i32 8
  store i16 %53, ptr %54, align 4, !tbaa !85
  br label %55

55:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_ggc() local_unnamed_addr #3 !prof !129 {
  store i64 4096, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !99
  %1 = tail call i32 @exact_log2(i64 noundef 4096) #18
  %2 = sext i32 %1 to i64
  store i64 %2, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 4), align 8, !tbaa !143
  %3 = load ptr, ptr @stdout, align 8, !tbaa !55
  store ptr %3, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 13), align 8, !tbaa !161
  br label %4

4:                                                ; preds = %4, %0
  %5 = phi i64 [ 0, %0 ], [ %9, %4 ]
  %6 = phi <2 x i64> [ <i64 0, i64 1>, %0 ], [ %10, %4 ]
  %7 = shl nuw <2 x i64> <i64 1, i64 1>, %6
  %8 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %5
  store <2 x i64> %7, ptr %8, align 16, !tbaa !69
  %9 = add nuw i64 %5, 2
  %10 = add <2 x i64> %6, <i64 2, i64 2>
  %11 = icmp eq i64 %9, 64
  br i1 %11, label %12, label %4, !prof !162, !llvm.loop !163

12:                                               ; preds = %4, %12
  %13 = phi i64 [ %20, %12 ], [ 0, %4 ]
  %14 = add i64 %13, 64
  %15 = getelementptr inbounds [20 x i64], ptr @extra_order_size_table, i64 0, i64 %13
  %16 = load <2 x i64>, ptr %15, align 16, !tbaa !69
  %17 = add <2 x i64> %16, <i64 7, i64 7>
  %18 = and <2 x i64> %17, <i64 -8, i64 -8>
  %19 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %14
  store <2 x i64> %18, ptr %19, align 16, !tbaa !69
  %20 = add nuw i64 %13, 2
  %21 = icmp eq i64 %20, 20
  br i1 %21, label %22, label %12, !prof !166, !llvm.loop !167

22:                                               ; preds = %12, %22
  %23 = phi i64 [ %32, %22 ], [ 0, %12 ]
  %24 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !99
  %25 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %23
  %26 = load i64, ptr %25, align 8, !tbaa !69
  %27 = udiv i64 %24, %26
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds [84 x i32], ptr @objects_per_page_table, i64 0, i64 %23
  %30 = tail call i32 @llvm.umax.i32(i32 %28, i32 1)
  store i32 %30, ptr %29, align 4, !tbaa !98
  %31 = trunc i64 %23 to i32
  tail call fastcc void @compute_inverse(i32 noundef %31) #17
  %32 = add nuw nsw i64 %23, 1
  %33 = icmp eq i64 %32, 84
  br i1 %33, label %34, label %22, !prof !168, !llvm.loop !169

34:                                               ; preds = %22, %53
  %35 = phi i64 [ %54, %53 ], [ 64, %22 ]
  %36 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !69
  %38 = trunc i64 %37 to i32
  %39 = icmp sgt i32 %38, 511
  br i1 %39, label %53, label %40, !prof !170

40:                                               ; preds = %34
  %41 = shl i64 %37, 32
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !68
  %45 = trunc i64 %35 to i8
  br label %46

46:                                               ; preds = %40, %46
  %47 = phi i64 [ %42, %40 ], [ %49, %46 ]
  %48 = phi ptr [ %43, %40 ], [ %50, %46 ]
  store i8 %45, ptr %48, align 1, !tbaa !68
  %49 = add i64 %47, -1
  %50 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !68
  %52 = icmp eq i8 %44, %51
  br i1 %52, label %46, label %53, !prof !171, !llvm.loop !172

53:                                               ; preds = %46, %34
  %54 = add nuw nsw i64 %35, 1
  %55 = icmp eq i64 %54, 84
  br i1 %55, label %56, label %34, !prof !173, !llvm.loop !174

56:                                               ; preds = %53
  store i32 0, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 14), align 8, !tbaa !78
  store i32 10, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 15), align 4, !tbaa !131
  %57 = tail call ptr @xmalloc(i64 noundef 40) #18
  store ptr %57, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 16), align 8, !tbaa !132
  store i32 0, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !74
  store i32 128, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !125
  %58 = tail call ptr @xmalloc(i64 noundef 1024) #18
  store ptr %58, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !127
  %59 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !125
  %60 = zext i32 %59 to i64
  %61 = shl nuw nsw i64 %60, 3
  %62 = tail call ptr @xmalloc(i64 noundef %61) #18
  store ptr %62, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !128
  ret void
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @compute_inverse(i32 noundef %0) unnamed_addr #11 !prof !175 !PGOFuncName !176 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %2
  %4 = load i64, ptr %3, align 8, !tbaa !69
  %5 = and i64 %4, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %12, label %7, !prof !177

7:                                                ; preds = %12, %1
  %8 = phi i64 [ %4, %1 ], [ %16, %12 ]
  %9 = phi i32 [ 0, %1 ], [ %15, %12 ]
  %10 = mul i64 %8, %8
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %26, label %19, !prof !178

12:                                               ; preds = %1, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %1 ]
  %14 = phi i64 [ %16, %12 ], [ %4, %1 ]
  %15 = add i32 %13, 1
  %16 = lshr exact i64 %14, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %7, !prof !179, !llvm.loop !180

19:                                               ; preds = %7, %19
  %20 = phi i64 [ %24, %19 ], [ %10, %7 ]
  %21 = phi i64 [ %23, %19 ], [ %8, %7 ]
  %22 = sub i64 2, %20
  %23 = mul i64 %22, %21
  %24 = mul i64 %23, %8
  %25 = icmp eq i64 %24, 1
  br i1 %25, label %26, label %19, !prof !181, !llvm.loop !182

26:                                               ; preds = %19, %7
  %27 = phi i64 [ %8, %7 ], [ %23, %19 ]
  %28 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %2
  store i64 %27, ptr %28, align 16, !tbaa !147
  %29 = getelementptr inbounds [84 x %struct.anon], ptr @inverse_table, i64 0, i64 %2, i32 1
  store i32 %9, ptr %29, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @new_ggc_zone(ptr nocapture noundef readnone %0) local_unnamed_addr #12 !prof !54 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @destroy_ggc_zone(ptr nocapture noundef readnone %0) local_unnamed_addr #12 !prof !54 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ggc_collect() local_unnamed_addr #12 !prof !183 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_print_statistics() local_unnamed_addr #3 !prof !54 {
  %1 = alloca %struct.ggc_statistics, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  store i32 0, ptr %1, align 4
  store i64 0, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 6), align 8, !tbaa !184
  %2 = load ptr, ptr @stderr, align 8, !tbaa !55
  call void @ggc_print_common_statistics(ptr noundef %2, ptr noundef nonnull %1) #18
  call fastcc void @release_pages() #17
  %3 = load ptr, ptr @stderr, align 8, !tbaa !55
  %4 = call i64 @fwrite(ptr nonnull @.str.5, i64 61, i64 1, ptr %3) #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !55
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #21
  br label %7

7:                                                ; preds = %0, %68
  %8 = phi i64 [ 0, %0 ], [ %70, %68 ]
  %9 = phi i64 [ 0, %0 ], [ %69, %68 ]
  %10 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %8
  %15 = load i64, ptr %14, align 8, !tbaa !69
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %40, %16 ]
  %18 = phi i64 [ 0, %13 ], [ %35, %16 ]
  %19 = phi i64 [ 0, %13 ], [ %23, %16 ]
  %20 = phi ptr [ %11, %13 ], [ %41, %16 ]
  %21 = getelementptr inbounds %struct.page_entry, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !101
  %23 = add i64 %22, %19
  %24 = getelementptr inbounds %struct.page_entry, ptr %20, i64 0, i32 9
  %25 = load i8, ptr %24, align 2, !tbaa !105
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !69
  %29 = udiv i64 %22, %28
  %30 = getelementptr inbounds %struct.page_entry, ptr %20, i64 0, i32 7
  %31 = load i16, ptr %30, align 2, !tbaa !63
  %32 = zext i16 %31 to i64
  %33 = sub i64 %29, %32
  %34 = mul i64 %33, %15
  %35 = add i64 %34, %18
  %36 = add i64 %29, 64
  %37 = lshr i64 %36, 3
  %38 = and i64 %37, 2305843009213693944
  %39 = add i64 %17, 56
  %40 = add i64 %39, %38
  %41 = load ptr, ptr %20, align 8, !tbaa !83
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16, !llvm.loop !185

43:                                               ; preds = %16
  %44 = load ptr, ptr @stderr, align 8, !tbaa !55
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
  br i1 %71, label %72, label %7, !llvm.loop !186

72:                                               ; preds = %68
  %73 = load ptr, ptr @stderr, align 8, !tbaa !55
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
define internal fastcc void @release_pages() unnamed_addr #3 !prof !54 !PGOFuncName !187 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), align 8, !tbaa !55
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %16, %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %20

6:                                                ; preds = %0, %16
  %7 = phi ptr [ %18, %16 ], [ %1, %0 ]
  %8 = phi ptr [ %17, %16 ], [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 11), %0 ]
  %9 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  %11 = getelementptr inbounds %struct.page_group, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !116
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !83
  store ptr %15, ptr %8, align 8, !tbaa !55
  tail call void @free(ptr noundef nonnull %7) #17
  br label %16

16:                                               ; preds = %6, %14
  %17 = phi ptr [ %8, %14 ], [ %7, %6 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %3, label %6, !llvm.loop !188

20:                                               ; preds = %3, %34
  %21 = phi ptr [ %36, %34 ], [ %4, %3 ]
  %22 = phi ptr [ %35, %34 ], [ getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 12), %3 ]
  %23 = getelementptr inbounds %struct.page_group, ptr %21, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !116
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load ptr, ptr %21, align 8, !tbaa !112
  store ptr %27, ptr %22, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.page_group, ptr %21, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !115
  %30 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !117
  %31 = sub i64 %30, %29
  store i64 %31, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 7), align 8, !tbaa !117
  %32 = getelementptr inbounds %struct.page_group, ptr %21, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  tail call void @free(ptr noundef %33) #17
  br label %34

34:                                               ; preds = %20, %26
  %35 = phi ptr [ %22, %26 ], [ %21, %20 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %20, !llvm.loop !189

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @init_ggc_pch() local_unnamed_addr #3 !prof !54 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 1680) #18
  ret ptr %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ggc_pch_count_object(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #13 !prof !54 {
  %6 = icmp ult i64 %2, 512
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %2
  %9 = load i8, ptr %8, align 1, !tbaa !68
  %10 = zext i8 %9 to i64
  br label %18

11:                                               ; preds = %5, %11
  %12 = phi i32 [ %17, %11 ], [ 10, %5 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !69
  %16 = icmp ult i64 %15, %2
  %17 = add i32 %12, 1
  br i1 %16, label %11, label %18, !llvm.loop !190

18:                                               ; preds = %11, %7
  %19 = phi i64 [ %10, %7 ], [ %13, %11 ]
  %20 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !98
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !98
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @ggc_pch_total_size(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !54 {
  %2 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !99
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %18, %3 ]
  %5 = phi i64 [ 0, %1 ], [ %17, %3 ]
  %6 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %4
  %7 = load i32, ptr %6, align 4, !tbaa !98
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %4
  %10 = load i64, ptr %9, align 8, !tbaa !69
  %11 = mul i64 %10, %8
  %12 = add i64 %11, %2
  %13 = freeze i64 %12
  %14 = add i64 %13, -1
  %15 = urem i64 %14, %2
  %16 = sub i64 %5, %15
  %17 = add i64 %16, %14
  %18 = add nuw nsw i64 %4, 1
  %19 = icmp eq i64 %18, 84
  br i1 %19, label %20, label %3, !llvm.loop !191

20:                                               ; preds = %3
  ret i64 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ggc_pch_this_base(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #13 !prof !54 {
  %3 = ptrtoint ptr %1 to i64
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %21, %4 ]
  %6 = phi i64 [ %3, %2 ], [ %20, %4 ]
  %7 = getelementptr inbounds %struct.ggc_pch_data, ptr %0, i64 0, i32 1, i64 %5
  store i64 %6, ptr %7, align 8, !tbaa !69
  %8 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %5
  %9 = load i32, ptr %8, align 4, !tbaa !98
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %5
  %12 = load i64, ptr %11, align 8, !tbaa !69
  %13 = mul i64 %12, %10
  %14 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !99
  %15 = add i64 %13, %14
  %16 = freeze i64 %15
  %17 = add i64 %16, -1
  %18 = urem i64 %17, %14
  %19 = sub i64 %6, %18
  %20 = add i64 %19, %17
  %21 = add nuw nsw i64 %5, 1
  %22 = icmp eq i64 %21, 84
  br i1 %22, label %23, label %4, !llvm.loop !192

23:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @ggc_pch_alloc_object(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #13 !prof !54 {
  %6 = icmp ult i64 %2, 512
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %2
  %9 = load i8, ptr %8, align 1, !tbaa !68
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !69
  br label %20

13:                                               ; preds = %5, %13
  %14 = phi i32 [ %19, %13 ], [ 10, %5 ]
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !69
  %18 = icmp ult i64 %17, %2
  %19 = add i32 %14, 1
  br i1 %18, label %13, label %20, !llvm.loop !193

20:                                               ; preds = %13, %7
  %21 = phi i64 [ %12, %7 ], [ %17, %13 ]
  %22 = phi i64 [ %10, %7 ], [ %15, %13 ]
  %23 = getelementptr inbounds %struct.ggc_pch_data, ptr %0, i64 0, i32 1, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !69
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %21, %24
  store i64 %26, ptr %23, align 8, !tbaa !69
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ggc_pch_prepare_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #12 !prof !54 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_pch_write_object(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readnone %3, i64 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #3 !prof !54 {
  %7 = icmp ult i64 %4, 512
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = getelementptr inbounds [512 x i8], ptr @size_lookup, i64 0, i64 %4
  %10 = load i8, ptr %9, align 1, !tbaa !68
  %11 = zext i8 %10 to i32
  br label %19

12:                                               ; preds = %6, %12
  %13 = phi i32 [ %18, %12 ], [ 10, %6 ]
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !69
  %17 = icmp ult i64 %16, %4
  %18 = add i32 %13, 1
  br i1 %17, label %12, label %19, !llvm.loop !194

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
  %27 = load i64, ptr %26, align 8, !tbaa !69
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
  %42 = load i64, ptr %41, align 8, !tbaa !69
  %43 = add i64 %42, 1
  store i64 %43, ptr %41, align 8, !tbaa !69
  %44 = getelementptr inbounds [84 x i32], ptr %0, i64 0, i64 %25
  %45 = load i32, ptr %44, align 4, !tbaa !98
  %46 = zext i32 %45 to i64
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !99
  %50 = add i64 %49, -1
  %51 = load i64, ptr %26, align 8, !tbaa !69
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
define dso_local void @ggc_pch_finish(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 !prof !54 {
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
define dso_local void @ggc_pch_read(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !54 {
  %3 = alloca %struct.ggc_pch_ondisk, align 4
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %3) #19
  %4 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !74
  tail call fastcc void @clear_marks() #17
  %5 = load i16, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !122
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2328, ptr noundef nonnull @.str.4) #18
  br label %8

8:                                                ; preds = %2, %7
  store i16 1, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !122
  br label %9

9:                                                ; preds = %8, %19
  %10 = phi i64 [ 0, %8 ], [ %20, %19 ]
  %11 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.page_entry, ptr %15, i64 0, i32 6
  store i16 1, ptr %16, align 8, !tbaa !59
  %17 = load ptr, ptr %15, align 8, !tbaa !55
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !195

19:                                               ; preds = %14, %9
  %20 = add nuw nsw i64 %10, 1
  %21 = icmp eq i64 %20, 84
  br i1 %21, label %22, label %9, !llvm.loop !196

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
  %31 = load i32, ptr %30, align 4, !tbaa !98
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %95, label %33

33:                                               ; preds = %27
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %28
  %36 = load i64, ptr %35, align 8, !tbaa !69
  %37 = mul i64 %36, %34
  %38 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !99
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
  store i64 %43, ptr %51, align 8, !tbaa !101
  %52 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 3
  store ptr %29, ptr %52, align 8, !tbaa !94
  %53 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 6
  store i16 0, ptr %53, align 8, !tbaa !59
  %54 = getelementptr inbounds i8, ptr %29, i64 %43
  %55 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 7
  store i16 0, ptr %55, align 2, !tbaa !63
  %56 = trunc i64 %28 to i8
  %57 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 9
  store i8 %56, ptr %57, align 2, !tbaa !105
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
  store i64 -1, ptr %66, align 8, !tbaa !69
  %67 = add nuw i64 %63, 64
  %68 = icmp ugt i64 %67, %45
  br i1 %68, label %59, label %62, !llvm.loop !197

69:                                               ; preds = %71, %59
  %70 = icmp sgt i64 %43, 0
  br i1 %70, label %81, label %89

71:                                               ; preds = %59, %71
  %72 = phi i64 [ %79, %71 ], [ %60, %59 ]
  %73 = and i64 %72, 63
  %74 = shl nuw i64 1, %73
  %75 = lshr i64 %72, 6
  %76 = getelementptr inbounds %struct.page_entry, ptr %50, i64 0, i32 10, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !69
  %78 = or i64 %77, %74
  store i64 %78, ptr %76, align 8, !tbaa !69
  %79 = add nuw i64 %72, 1
  %80 = icmp ult i64 %79, %45
  br i1 %80, label %71, label %69, !llvm.loop !198

81:                                               ; preds = %69, %81
  %82 = phi ptr [ %84, %81 ], [ %29, %69 ]
  tail call fastcc void @set_page_table_entry(ptr noundef %82, ptr noundef nonnull %50) #17
  %83 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !99
  %84 = getelementptr inbounds i8, ptr %82, i64 %83
  %85 = load ptr, ptr %52, align 8, !tbaa !94
  %86 = load i64, ptr %51, align 8, !tbaa !101
  %87 = getelementptr inbounds i8, ptr %85, i64 %86
  %88 = icmp ult ptr %84, %87
  br i1 %88, label %81, label %89, !llvm.loop !199

89:                                               ; preds = %81, %69
  %90 = getelementptr inbounds %struct.globals, ptr @G, i64 0, i32 1, i64 %28
  %91 = load ptr, ptr %90, align 8, !tbaa !55
  %92 = icmp eq ptr %91, null
  %93 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %28
  %94 = select i1 %92, ptr %93, ptr %91
  store ptr %50, ptr %94, align 8, !tbaa !55
  store ptr %50, ptr %90, align 8, !tbaa !55
  tail call fastcc void @push_by_depth(ptr noundef nonnull %50) #17
  br label %95

95:                                               ; preds = %27, %89
  %96 = phi ptr [ %54, %89 ], [ %29, %27 ]
  %97 = add nuw nsw i64 %28, 1
  %98 = icmp eq i64 %97, 84
  br i1 %98, label %99, label %27, !llvm.loop !200

99:                                               ; preds = %95
  %100 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !74
  %101 = sub i32 %100, %4
  tail call fastcc void @move_ptes_to_front(i32 noundef %4, i32 noundef %101) #17
  %102 = ptrtoint ptr %96 to i64
  %103 = ptrtoint ptr %1 to i64
  %104 = sub i64 %102, %103
  store i64 %104, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 6), align 8, !tbaa !184
  store i64 %104, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 5), align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_marks() unnamed_addr #3 !prof !54 !PGOFuncName !201 {
  br label %1

1:                                                ; preds = %0, %60
  %2 = phi i64 [ 2, %0 ], [ %61, %60 ]
  %3 = getelementptr inbounds [84 x ptr], ptr @G, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %1, %50
  %7 = phi ptr [ %58, %50 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 9
  %11 = load i8, ptr %10, align 2, !tbaa !105
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [84 x i64], ptr @object_size_table, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !69
  %15 = udiv i64 %9, %14
  %16 = add i64 %15, 64
  %17 = lshr i64 %16, 3
  %18 = and i64 %17, 2305843009213693944
  %19 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = ptrtoint ptr %20 to i64
  %22 = load i64, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 3), align 8, !tbaa !99
  %23 = add i64 %22, -1
  %24 = and i64 %23, %21
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1685, ptr noundef nonnull @.str.4) #18
  br label %27

27:                                               ; preds = %6, %26
  %28 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 6
  %29 = load i16, ptr %28, align 8, !tbaa !59
  %30 = load i16, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 10), align 8, !tbaa !122
  %31 = icmp ult i16 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !128
  %34 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !77
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !55
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = tail call ptr @xmalloc(i64 noundef %18) #18
  %41 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !128
  %42 = load i64, ptr %34, align 8, !tbaa !77
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  store ptr %40, ptr %43, align 8, !tbaa !55
  %44 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !128
  %45 = getelementptr inbounds ptr, ptr %44, i64 %42
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  br label %47

47:                                               ; preds = %39, %32
  %48 = phi ptr [ %46, %39 ], [ %37, %32 ]
  %49 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %48, ptr nonnull align 8 %49, i64 %18, i1 false)
  br label %50

50:                                               ; preds = %47, %27
  %51 = trunc i64 %15 to i16
  %52 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 7
  store i16 %51, ptr %52, align 2, !tbaa !63
  %53 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %53, i8 0, i64 %18, i1 false)
  %54 = and i64 %15, 63
  %55 = shl nuw i64 1, %54
  %56 = lshr i64 %15, 6
  %57 = getelementptr inbounds %struct.page_entry, ptr %7, i64 0, i32 10, i64 %56
  store i64 %55, ptr %57, align 8, !tbaa !69
  %58 = load ptr, ptr %7, align 8, !tbaa !55
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %6, !llvm.loop !202

60:                                               ; preds = %50, %1
  %61 = add nuw nsw i64 %2, 1
  %62 = icmp eq i64 %61, 84
  br i1 %62, label %63, label %1, !llvm.loop !203

63:                                               ; preds = %60
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_ptes_to_front(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !prof !54 !PGOFuncName !204 {
  %3 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !125
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 3
  %6 = tail call ptr @xmalloc(i64 noundef %5) #18
  %7 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 18), align 4, !tbaa !125
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = tail call ptr @xmalloc(i64 noundef %9) #18
  %11 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !127
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  %14 = sext i32 %1 to i64
  %15 = shl nsw i64 %14, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %13, i64 %15, i1 false)
  %16 = getelementptr inbounds ptr, ptr %6, i64 %14
  %17 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !127
  %18 = shl nsw i64 %12, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %17, i64 %18, i1 false)
  %19 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !128
  %20 = getelementptr inbounds ptr, ptr %19, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %20, i64 %15, i1 false)
  %21 = getelementptr inbounds ptr, ptr %10, i64 %14
  %22 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !128
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %22, i64 %18, i1 false)
  %23 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !127
  tail call void @free(ptr noundef %23) #17
  %24 = load ptr, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !128
  tail call void @free(ptr noundef %24) #17
  store ptr %6, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 19), align 8, !tbaa !127
  store ptr %10, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 20), align 8, !tbaa !128
  %25 = load i32, ptr getelementptr inbounds (%struct.globals, ptr @G, i64 0, i32 17), align 8, !tbaa !74
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %2
  %28 = zext i32 %25 to i64
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %28, %27 ], [ %31, %29 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr inbounds ptr, ptr %6, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.page_entry, ptr %33, i64 0, i32 5
  store i64 %31, ptr %34, align 8, !tbaa !77
  %35 = icmp eq i64 %31, 0
  br i1 %35, label %36, label %29, !llvm.loop !205

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!53}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!36 = !{ptr @ggc_alloc_stat, ptr @alloc_page, i64 654913}
!37 = !{ptr @ggc_alloc_stat, ptr @push_by_depth, i64 654913}
!38 = !{ptr @ggc_alloc_stat, ptr @push_depth, i64 2}
!39 = !{ptr @alloc_page, ptr @free, i64 466403}
!40 = !{ptr @alloc_page, ptr @xmalloc, i64 48169}
!41 = !{ptr @alloc_page, ptr @fancy_abort, i64 1}
!42 = !{ptr @alloc_page, ptr @xcalloc, i64 1121305}
!43 = !{ptr @alloc_page, ptr @set_page_group_in_use, i64 654911}
!44 = !{ptr @alloc_page, ptr @set_page_table_entry, i64 654911}
!45 = !{ptr @push_by_depth, ptr @xrealloc, i64 28}
!46 = !{ptr @set_page_group_in_use, ptr @page_group_index, i64 654911}
!47 = !{ptr @set_page_table_entry, ptr @xcalloc, i64 197}
!48 = !{ptr @ggc_get_size, ptr @lookup_page_table_entry, i64 145544}
!49 = !{ptr @ggc_free, ptr @lookup_page_table_entry, i64 5829169}
!50 = !{ptr @init_ggc, ptr @exact_log2, i64 1}
!51 = !{ptr @init_ggc, ptr @compute_inverse, i64 43}
!52 = !{ptr @init_ggc, ptr @xmalloc, i64 3}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!60, !62, i64 48}
!60 = !{!"page_entry", !56, i64 0, !56, i64 8, !61, i64 16, !56, i64 24, !56, i64 32, !61, i64 40, !62, i64 48, !62, i64 50, !62, i64 52, !57, i64 54, !57, i64 56}
!61 = !{!"long", !57, i64 0}
!62 = !{!"short", !57, i64 0}
!63 = !{!60, !62, i64 50}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"function_entry_count", i64 67126053}
!67 = !{!"branch_weights", i32 66955894, i32 170161}
!68 = !{!57, !57, i64 0}
!69 = !{!61, !61, i64 0}
!70 = !{!"branch_weights", i32 160393, i32 170161}
!71 = distinct !{!71, !65}
!72 = !{!"branch_weights", i32 40, i32 67126015}
!73 = !{!"branch_weights", i32 654873, i32 66471143}
!74 = !{!75, !76, i64 1456}
!75 = !{!"globals", !57, i64 0, !57, i64 672, !56, i64 1344, !61, i64 1352, !61, i64 1360, !61, i64 1368, !61, i64 1376, !61, i64 1384, !61, i64 1392, !61, i64 1400, !62, i64 1408, !56, i64 1416, !56, i64 1424, !56, i64 1432, !76, i64 1440, !76, i64 1444, !56, i64 1448, !76, i64 1456, !76, i64 1460, !56, i64 1464, !56, i64 1472}
!76 = !{!"int", !57, i64 0}
!77 = !{!60, !61, i64 40}
!78 = !{!75, !76, i64 1440}
!79 = !{!"branch_weights", i32 654910, i32 2}
!80 = !{!"branch_weights", i32 2, i32 0}
!81 = distinct !{!81, !65}
!82 = !{!"branch_weights", i32 40, i32 654873}
!83 = !{!60, !56, i64 0}
!84 = !{!60, !56, i64 8}
!85 = !{!60, !62, i64 52}
!86 = !{!"branch_weights", i32 64776218, i32 1694926}
!87 = !{!"branch_weights", i32 789972, i32 1694926}
!88 = distinct !{!88, !65}
!89 = !{!"branch_weights", i32 1694926, i32 45671705}
!90 = distinct !{!90, !65}
!91 = !{!"branch_weights", i32 1254952, i32 65871103}
!92 = !{!"branch_weights", i32 46, i32 1254907}
!93 = !{!"branch_weights", i32 687835, i32 567073}
!94 = !{!60, !56, i64 24}
!95 = !{!75, !61, i64 1368}
!96 = !{!"function_entry_count", i64 654911}
!97 = !{!"ggc-page.c:alloc_page"}
!98 = !{!76, !76, i64 0}
!99 = !{!75, !61, i64 1352}
!100 = !{!"branch_weights", i32 48169, i32 639971}
!101 = !{!60, !61, i64 16}
!102 = !{!"branch_weights", i32 606744, i32 33228}
!103 = distinct !{!103, !65}
!104 = !{!60, !56, i64 32}
!105 = !{!60, !57, i64 54}
!106 = !{!"branch_weights", i32 140340, i32 466405}
!107 = !{!"branch_weights", i32 4830, i32 43340}
!108 = !{!"branch_weights", i32 47774, i32 396}
!109 = !{!"branch_weights", i32 184, i32 213}
!110 = !{!"branch_weights", i32 396, i32 1}
!111 = !{!75, !56, i64 1424}
!112 = !{!113, !56, i64 0}
!113 = !{!"page_group", !56, i64 0, !56, i64 8, !61, i64 16, !76, i64 24}
!114 = !{!113, !56, i64 8}
!115 = !{!113, !61, i64 16}
!116 = !{!113, !76, i64 24}
!117 = !{!75, !61, i64 1384}
!118 = !{!75, !56, i64 1416}
!119 = !{!"branch_weights", i32 1, i32 43339}
!120 = !{!"branch_weights", i32 43339, i32 563408}
!121 = distinct !{!121, !65}
!122 = !{!75, !62, i64 1408}
!123 = !{!75, !61, i64 1392}
!124 = !{!"ggc-page.c:push_by_depth"}
!125 = !{!75, !76, i64 1460}
!126 = !{!"branch_weights", i32 654899, i32 14}
!127 = !{!75, !56, i64 1464}
!128 = !{!75, !56, i64 1472}
!129 = !{!"function_entry_count", i64 1}
!130 = !{!"ggc-page.c:push_depth"}
!131 = !{!75, !76, i64 1444}
!132 = !{!75, !56, i64 1448}
!133 = !{!"branch_weights", i32 2, i32 1}
!134 = !{!"ggc-page.c:set_page_group_in_use"}
!135 = !{!"ggc-page.c:set_page_table_entry"}
!136 = !{!"branch_weights", i32 4, i32 688470}
!137 = !{!138, !61, i64 8}
!138 = !{!"page_table_chain", !56, i64 0, !61, i64 8, !57, i64 16}
!139 = !{!"branch_weights", i32 654909, i32 33562}
!140 = distinct !{!140, !65}
!141 = !{!75, !56, i64 1344}
!142 = !{!138, !56, i64 0}
!143 = !{!75, !61, i64 1360}
!144 = !{!"branch_weights", i32 193, i32 654720}
!145 = !{!"ggc-page.c:page_group_index"}
!146 = !{i32 0, i32 2}
!147 = !{!148, !61, i64 0}
!148 = !{!"", !61, i64 0, !76, i64 8}
!149 = !{!148, !76, i64 8}
!150 = !{!"ggc-page.c:ggc_allocated_p"}
!151 = !{!"function_entry_count", i64 5974713}
!152 = !{!"ggc-page.c:lookup_page_table_entry"}
!153 = !{!"branch_weights", i32 5974714, i32 36328}
!154 = distinct !{!154, !65}
!155 = !{!"function_entry_count", i64 145544}
!156 = !{!"function_entry_count", i64 5829169}
!157 = !{!"branch_weights", i32 604549, i32 5224622}
!158 = !{!"branch_weights", i32 27293, i32 577257}
!159 = !{!"branch_weights", i32 540461, i32 36797}
!160 = !{!"branch_weights", i32 291890, i32 248572}
!161 = !{!75, !56, i64 1432}
!162 = !{!"branch_weights", i32 2, i32 30}
!163 = distinct !{!163, !65, !164, !165}
!164 = !{!"llvm.loop.isvectorized", i32 1}
!165 = !{!"llvm.loop.unroll.runtime.disable"}
!166 = !{!"branch_weights", i32 2, i32 8}
!167 = distinct !{!167, !65, !164, !165}
!168 = !{!"branch_weights", i32 2, i32 83}
!169 = distinct !{!169, !65}
!170 = !{!"branch_weights", i32 1, i32 21}
!171 = !{!"branch_weights", i32 2017, i32 167}
!172 = distinct !{!172, !65}
!173 = !{!"branch_weights", i32 2, i32 19}
!174 = distinct !{!174, !65}
!175 = !{!"function_entry_count", i64 84}
!176 = !{!"ggc-page.c:compute_inverse"}
!177 = !{!"branch_weights", i32 169, i32 1}
!178 = !{!"branch_weights", i32 1, i32 169}
!179 = !{!"branch_weights", i32 4001, i32 169}
!180 = distinct !{!180, !65}
!181 = !{!"branch_weights", i32 169, i32 17}
!182 = distinct !{!182, !65}
!183 = !{!"function_entry_count", i64 840040}
!184 = !{!75, !61, i64 1376}
!185 = distinct !{!185, !65}
!186 = distinct !{!186, !65}
!187 = !{!"ggc-page.c:release_pages"}
!188 = distinct !{!188, !65}
!189 = distinct !{!189, !65}
!190 = distinct !{!190, !65}
!191 = distinct !{!191, !65}
!192 = distinct !{!192, !65}
!193 = distinct !{!193, !65}
!194 = distinct !{!194, !65}
!195 = distinct !{!195, !65}
!196 = distinct !{!196, !65}
!197 = distinct !{!197, !65}
!198 = distinct !{!198, !65}
!199 = distinct !{!199, !65}
!200 = distinct !{!200, !65}
!201 = !{!"ggc-page.c:clear_marks"}
!202 = distinct !{!202, !65}
!203 = distinct !{!203, !65}
!204 = !{!"ggc-page.c:move_ptes_to_front"}
!205 = distinct !{!205, !65}
