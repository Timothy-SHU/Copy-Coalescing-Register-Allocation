; ModuleID = 'blender/intern/guardedalloc/intern/mallocn_guarded_impl.c'
source_filename = "blender/intern/guardedalloc/intern/mallocn_guarded_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.localListBase = type { ptr, ptr }
%struct.MemHead = type { i32, i64, ptr, ptr, ptr, ptr, i32, i16, i16 }
%struct.localLink = type { ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.MemPrintBlock = type { ptr, i64, i32 }

@error_callback = internal unnamed_addr global ptr null, align 8
@thread_lock_callback = internal unnamed_addr global ptr null, align 8
@thread_unlock_callback = internal unnamed_addr global ptr null, align 8
@malloc_debug_memset = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [15 x i8] c"dupli_mapalloc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"dupli_alloc\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Malloc returns null: len=%lu in %s, total %u\0A\00", align 1
@mem_in_use = internal unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"aligned_malloc returns null: len=%lu in %s, total %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Calloc returns null: len=%lu in %s, total %u\0A\00", align 1
@totblock = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"\0Atotal memory len: %.3f MB\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"peak memory len: %.3f MB\0A\00", align 1
@peak_mem = internal unnamed_addr global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"slop memory len: %.3f MB\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"%6d (%8.3f  %8.3f) %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"attempt to free NULL pointer\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"attempt to free illegal pointer\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"double free\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"end corrupt\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"is also corrupt\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"pointer not in memlist\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"error in header\00", align 1
@mmap_in_use = internal unnamed_addr global i64 0, align 8
@_membase = internal global %struct.localListBase zeroinitializer, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"# membase_debug.py\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"membase = [\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"    {'len':%lu, 'name':'''%s''', 'pointer':'%p'},\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"%s len: %lu %p\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"]\0A\0A\00", align 1
@mem_printmemlist_pydict_script = internal constant [799 x i8] c"mb_userinfo = {}\0Atotmem = 0\0Afor mb_item in membase:\0A    mb_item_user_size = mb_userinfo.setdefault(mb_item['name'], [0,0])\0A    mb_item_user_size[0] += 1 # Add a user\0A    mb_item_user_size[1] += mb_item['len'] # Increment the size\0A    totmem += mb_item['len']\0Aprint('(membase) items:', len(membase), '| unique-names:',\0A      len(mb_userinfo), '| total-mem:', totmem)\0Amb_userinfo_sort = list(mb_userinfo.items())\0Afor sort_name, sort_func in (('size', lambda a: -a[1][1]),\0A                             ('users', lambda a: -a[1][0]),\0A                             ('name', lambda a: a[0])):\0A    print('\\nSorting by:', sort_name)\0A    mb_userinfo_sort.sort(key = sort_func)\0A    for item in mb_userinfo_sort:\0A        print('name:%%s, users:%%i, len:%%i' %%\0A              (item[0], item[1][0], item[1][1]))\0A\00", align 16
@.str.23 = private unnamed_addr constant [26 x i8] c"Couldn't unmap memory %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Memoryblock %s: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"MORE THAN 1 MEMORYBLOCK CORRUPT\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"No name found\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Additional error in header\00", align 1
@str = private unnamed_addr constant [34 x i8] c" ITEMS TOTAL-MiB AVERAGE-KiB TYPE\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @MEM_guarded_check_memory_integrity() local_unnamed_addr #0 {
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %2 = tail call fastcc ptr @check_memlist(ptr noundef %1)
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @check_memlist(ptr noundef readnone %0) unnamed_addr #0 {
  %2 = load volatile ptr, ptr @_membase, align 8, !tbaa !39
  %3 = icmp eq ptr %2, null
  %4 = ptrtoint ptr %2 to i64
  %5 = add i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  %7 = select i1 %3, ptr null, ptr %6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %7, align 8, !tbaa !40
  %11 = icmp eq i32 %10, 1330464077
  br i1 %11, label %15, label %31

12:                                               ; preds = %22
  %13 = load i32, ptr %29, align 8, !tbaa !40
  %14 = icmp eq i32 %13, 1330464077
  br i1 %14, label %15, label %31, !llvm.loop !45

15:                                               ; preds = %9, %12
  %16 = phi ptr [ %29, %12 ], [ %7, %9 ]
  %17 = phi ptr [ %16, %12 ], [ null, %9 ]
  %18 = phi i1 [ %30, %12 ], [ %8, %9 ]
  %19 = getelementptr inbounds %struct.MemHead, ptr %16, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !48
  %21 = icmp eq i32 %20, 1279416658
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.MemHead, ptr %16, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = icmp eq ptr %24, null
  %26 = ptrtoint ptr %24 to i64
  %27 = add i64 %26, -16
  %28 = inttoptr i64 %27 to ptr
  %29 = select i1 %25, ptr null, ptr %28
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %12, !llvm.loop !45

31:                                               ; preds = %12, %15, %22, %9, %1
  %32 = phi ptr [ %7, %1 ], [ %7, %9 ], [ %29, %22 ], [ %16, %15 ], [ %29, %12 ]
  %33 = phi ptr [ null, %1 ], [ null, %9 ], [ %16, %22 ], [ %17, %15 ], [ %16, %12 ]
  %34 = phi i1 [ %8, %1 ], [ %8, %9 ], [ %30, %22 ], [ %18, %15 ], [ %30, %12 ]
  %35 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  %37 = ptrtoint ptr %35 to i64
  %38 = add i64 %37, -16
  %39 = inttoptr i64 %38 to ptr
  %40 = select i1 %36, ptr null, ptr %39
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %31
  %43 = load i32, ptr %40, align 8, !tbaa !40
  %44 = icmp eq i32 %43, 1330464077
  br i1 %44, label %48, label %64

45:                                               ; preds = %55
  %46 = load i32, ptr %62, align 8, !tbaa !40
  %47 = icmp eq i32 %46, 1330464077
  br i1 %47, label %48, label %64, !llvm.loop !50

48:                                               ; preds = %42, %45
  %49 = phi ptr [ %62, %45 ], [ %40, %42 ]
  %50 = phi ptr [ %49, %45 ], [ null, %42 ]
  %51 = phi i1 [ %63, %45 ], [ %41, %42 ]
  %52 = getelementptr inbounds %struct.MemHead, ptr %49, i64 0, i32 6
  %53 = load i32, ptr %52, align 8, !tbaa !48
  %54 = icmp eq i32 %53, 1279416658
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.MemHead, ptr %49, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !51
  %58 = icmp eq ptr %57, null
  %59 = ptrtoint ptr %57 to i64
  %60 = add i64 %59, -16
  %61 = inttoptr i64 %60 to ptr
  %62 = select i1 %58, ptr null, ptr %61
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %45, !llvm.loop !50

64:                                               ; preds = %45, %48, %55, %42, %31
  %65 = phi ptr [ %40, %31 ], [ %40, %42 ], [ %62, %55 ], [ %49, %48 ], [ %62, %45 ]
  %66 = phi ptr [ null, %31 ], [ null, %42 ], [ %49, %55 ], [ %50, %48 ], [ %49, %45 ]
  %67 = phi i1 [ %41, %31 ], [ %41, %42 ], [ %63, %55 ], [ %51, %48 ], [ %63, %45 ]
  %68 = icmp eq ptr %32, %65
  br i1 %68, label %69, label %171

69:                                               ; preds = %64
  %70 = and i1 %34, %67
  br i1 %70, label %71, label %142

71:                                               ; preds = %69
  %72 = load volatile ptr, ptr @_membase, align 8, !tbaa !39
  %73 = icmp eq ptr %72, null
  %74 = ptrtoint ptr %72 to i64
  %75 = add i64 %74, -16
  %76 = inttoptr i64 %75 to ptr
  %77 = select i1 %73, ptr null, ptr %76
  %78 = icmp eq ptr %77, null
  %79 = icmp eq ptr %77, %0
  %80 = or i1 %78, %79
  br i1 %80, label %105, label %81

81:                                               ; preds = %71
  %82 = load i32, ptr %77, align 8, !tbaa !40
  %83 = icmp eq i32 %82, 1330464077
  br i1 %83, label %87, label %105

84:                                               ; preds = %94
  %85 = load i32, ptr %101, align 8, !tbaa !40
  %86 = icmp eq i32 %85, 1330464077
  br i1 %86, label %87, label %105, !llvm.loop !52

87:                                               ; preds = %81, %84
  %88 = phi ptr [ %101, %84 ], [ %77, %81 ]
  %89 = phi ptr [ %88, %84 ], [ null, %81 ]
  %90 = phi i1 [ %102, %84 ], [ %78, %81 ]
  %91 = getelementptr inbounds %struct.MemHead, ptr %88, i64 0, i32 6
  %92 = load i32, ptr %91, align 8, !tbaa !48
  %93 = icmp eq i32 %92, 1279416658
  br i1 %93, label %94, label %105

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.MemHead, ptr %88, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !49
  %97 = icmp eq ptr %96, null
  %98 = ptrtoint ptr %96 to i64
  %99 = add i64 %98, -16
  %100 = inttoptr i64 %99 to ptr
  %101 = select i1 %97, ptr null, ptr %100
  %102 = icmp eq ptr %101, null
  %103 = icmp eq ptr %101, %0
  %104 = or i1 %102, %103
  br i1 %104, label %105, label %84, !llvm.loop !52

105:                                              ; preds = %84, %87, %94, %81, %71
  %106 = phi ptr [ %77, %71 ], [ %77, %81 ], [ %101, %94 ], [ %88, %87 ], [ %101, %84 ]
  %107 = phi ptr [ null, %71 ], [ null, %81 ], [ %88, %94 ], [ %89, %87 ], [ %88, %84 ]
  %108 = phi i1 [ %78, %71 ], [ %78, %81 ], [ %102, %94 ], [ %90, %87 ], [ %102, %84 ]
  br i1 %108, label %171, label %109

109:                                              ; preds = %105
  %110 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %111 = icmp eq ptr %110, null
  %112 = ptrtoint ptr %110 to i64
  %113 = add i64 %112, -16
  %114 = inttoptr i64 %113 to ptr
  %115 = select i1 %111, ptr null, ptr %114
  %116 = icmp eq ptr %115, null
  %117 = icmp eq ptr %115, %0
  %118 = or i1 %116, %117
  br i1 %118, label %142, label %119

119:                                              ; preds = %109
  %120 = load i32, ptr %115, align 8, !tbaa !40
  %121 = icmp eq i32 %120, 1330464077
  br i1 %121, label %125, label %142

122:                                              ; preds = %131
  %123 = load i32, ptr %138, align 8, !tbaa !40
  %124 = icmp eq i32 %123, 1330464077
  br i1 %124, label %125, label %142, !llvm.loop !53

125:                                              ; preds = %119, %122
  %126 = phi ptr [ %138, %122 ], [ %115, %119 ]
  %127 = phi ptr [ %126, %122 ], [ null, %119 ]
  %128 = getelementptr inbounds %struct.MemHead, ptr %126, i64 0, i32 6
  %129 = load i32, ptr %128, align 8, !tbaa !48
  %130 = icmp eq i32 %129, 1279416658
  br i1 %130, label %131, label %142

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.MemHead, ptr %126, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !51
  %134 = icmp eq ptr %133, null
  %135 = ptrtoint ptr %133 to i64
  %136 = add i64 %135, -16
  %137 = inttoptr i64 %136 to ptr
  %138 = select i1 %134, ptr null, ptr %137
  %139 = icmp eq ptr %138, null
  %140 = icmp eq ptr %138, %0
  %141 = or i1 %139, %140
  br i1 %141, label %142, label %122, !llvm.loop !53

142:                                              ; preds = %131, %125, %122, %119, %109, %69
  %143 = phi ptr [ %32, %69 ], [ %106, %109 ], [ %106, %119 ], [ %106, %122 ], [ %106, %125 ], [ %106, %131 ]
  %144 = phi ptr [ %33, %69 ], [ %107, %109 ], [ %107, %119 ], [ %107, %122 ], [ %107, %125 ], [ %107, %131 ]
  %145 = phi ptr [ %66, %69 ], [ null, %109 ], [ null, %119 ], [ %126, %131 ], [ %127, %125 ], [ %126, %122 ]
  %146 = icmp eq ptr %144, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.MemHead, ptr %144, i64 0, i32 5
  %149 = load ptr, ptr %148, align 8, !tbaa !54
  br label %150

150:                                              ; preds = %142, %147
  %151 = phi ptr [ %149, %147 ], [ @.str.26, %142 ]
  %152 = icmp eq ptr %143, %0
  br i1 %152, label %153, label %170

153:                                              ; preds = %150
  %154 = icmp eq ptr %145, null
  br i1 %146, label %165, label %155

155:                                              ; preds = %153
  br i1 %154, label %163, label %156

156:                                              ; preds = %155
  %157 = getelementptr inbounds %struct.MemHead, ptr %145, i64 0, i32 2
  %158 = getelementptr inbounds %struct.MemHead, ptr %144, i64 0, i32 2
  store ptr %157, ptr %158, align 8, !tbaa !49
  %159 = getelementptr inbounds %struct.MemHead, ptr %145, i64 0, i32 3
  store ptr %158, ptr %159, align 8, !tbaa !51
  %160 = getelementptr inbounds %struct.MemHead, ptr %145, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !55
  %162 = getelementptr inbounds %struct.MemHead, ptr %144, i64 0, i32 5
  store ptr %161, ptr %162, align 8, !tbaa !54
  br label %171

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.MemHead, ptr %144, i64 0, i32 2
  store ptr null, ptr %164, align 8, !tbaa !49
  store volatile ptr %164, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  br label %171

165:                                              ; preds = %153
  br i1 %154, label %169, label %166

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.MemHead, ptr %145, i64 0, i32 3
  store ptr null, ptr %167, align 8, !tbaa !51
  %168 = getelementptr inbounds %struct.MemHead, ptr %145, i64 0, i32 2
  store volatile ptr %168, ptr @_membase, align 8, !tbaa !39
  br label %171

169:                                              ; preds = %165
  store volatile ptr null, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  store volatile ptr null, ptr @_membase, align 8, !tbaa !39
  br label %171

170:                                              ; preds = %150
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.24, ptr noundef %151, ptr noundef nonnull @.str.27)
  br label %171

171:                                              ; preds = %166, %169, %156, %163, %105, %64, %170
  %172 = phi ptr [ @.str.27, %170 ], [ @.str.25, %64 ], [ null, %105 ], [ %151, %163 ], [ %151, %156 ], [ %151, %169 ], [ %151, %166 ]
  ret ptr %172
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_guarded_set_error_callback(ptr noundef %0) local_unnamed_addr #2 {
  store ptr %0, ptr @error_callback, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_guarded_set_lock_callback(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  store ptr %0, ptr @thread_lock_callback, align 8, !tbaa !56
  store ptr %1, ptr @thread_unlock_callback, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_guarded_set_memory_debug() local_unnamed_addr #2 {
  store i1 true, ptr @malloc_debug_memset, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @MEM_guarded_allocN_len(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !57
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %1 ]
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MEM_guarded_dupallocN(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !58
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %11, label %7, !prof !59

7:                                                ; preds = %3
  %8 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !57
  %10 = tail call ptr @MEM_guarded_callocN(i64 noundef %9, ptr noundef nonnull @.str)
  br label %22

11:                                               ; preds = %3
  %12 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !60
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !57
  br i1 %14, label %17, label %19, !prof !59

17:                                               ; preds = %11
  %18 = tail call ptr @MEM_guarded_callocN(i64 noundef %16, ptr noundef nonnull @.str)
  br label %22

19:                                               ; preds = %11
  %20 = sext i16 %13 to i64
  %21 = tail call ptr @MEM_guarded_mallocN_aligned(i64 noundef %16, i64 noundef %20, ptr noundef nonnull @.str.1)
  br label %22

22:                                               ; preds = %17, %19, %7
  %23 = phi ptr [ %10, %7 ], [ %18, %17 ], [ %21, %19 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull align 1 %0, i64 %27, i1 false)
  br label %28

28:                                               ; preds = %22, %1, %25
  %29 = phi ptr [ null, %1 ], [ %23, %25 ], [ null, %22 ]
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MEM_guarded_mapallocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @MEM_guarded_callocN(i64 noundef %0, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MEM_guarded_mallocN_aligned(i64 noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = urem i64 56, %1
  %5 = sub i64 %1, %4
  %6 = add i64 %0, 3
  %7 = and i64 %6, -4
  %8 = add i64 %7, 64
  %9 = add i64 %8, %5
  %10 = tail call ptr @aligned_malloc(i64 noundef %9, i64 noundef %1) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %54, label %12, !prof !61

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, ptr %10, i64 %5
  store i32 1330464077, ptr %13, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 4
  store ptr %2, ptr %14, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 5
  store ptr null, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 1
  store i64 %7, ptr %16, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 7
  store i16 0, ptr %17, align 4, !tbaa !58
  %18 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 8
  store i16 0, ptr %18, align 2, !tbaa !60
  %19 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 6
  store i32 1279416658, ptr %19, align 8, !tbaa !48
  %20 = getelementptr inbounds i8, ptr %13, i64 56
  %21 = getelementptr inbounds i8, ptr %20, i64 %7
  store i32 558580559, ptr %21, align 4, !tbaa !62
  %22 = load i32, ptr @totblock, align 4, !tbaa !64
  %23 = add i32 %22, 1
  store i32 %23, ptr @totblock, align 4, !tbaa !64
  %24 = load i64, ptr @mem_in_use, align 8, !tbaa !65
  %25 = add i64 %24, %7
  store i64 %25, ptr @mem_in_use, align 8, !tbaa !65
  %26 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %12
  tail call void %26() #18
  br label %29

29:                                               ; preds = %28, %12
  %30 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 2
  store ptr null, ptr %30, align 8, !tbaa !66
  %31 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !68
  %33 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  store ptr %30, ptr %36, align 8, !tbaa !66
  br label %37

37:                                               ; preds = %35, %29
  %38 = load volatile ptr, ptr @_membase, align 8, !tbaa !39
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store volatile ptr %30, ptr @_membase, align 8, !tbaa !39
  br label %41

41:                                               ; preds = %40, %37
  store volatile ptr %30, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %42 = load i64, ptr @mem_in_use, align 8
  %43 = load i64, ptr @peak_mem, align 8
  %44 = tail call i64 @llvm.umax.i64(i64 %42, i64 %43)
  store i64 %44, ptr @peak_mem, align 8, !tbaa !65
  %45 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  tail call void %45() #18
  br label %48

48:                                               ; preds = %41, %47
  %49 = trunc i64 %1 to i16
  store i16 %49, ptr %18, align 2, !tbaa !60
  %50 = load i1, ptr @malloc_debug_memset, align 1
  %51 = icmp ne i64 %7, 0
  %52 = and i1 %51, %50
  br i1 %52, label %53, label %57, !prof !61

53:                                               ; preds = %48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %20, i8 -1, i64 %7, i1 false)
  br label %57

54:                                               ; preds = %3
  %55 = load i64, ptr @mem_in_use, align 8, !tbaa !65
  %56 = trunc i64 %55 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.3, i64 noundef %7, ptr noundef %2, i32 noundef %56)
  br label %57

57:                                               ; preds = %48, %53, %54
  %58 = phi ptr [ null, %54 ], [ %20, %53 ], [ %20, %48 ]
  ret ptr %58
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @MEM_guarded_reallocN_id(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !60
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13, !prof !59

9:                                                ; preds = %5
  %10 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = tail call ptr @MEM_guarded_mallocN(i64 noundef %1, ptr noundef %11)
  br label %18

13:                                               ; preds = %5
  %14 = sext i16 %7 to i64
  %15 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = tail call ptr @MEM_guarded_mallocN_aligned(i64 noundef %1, i64 noundef %14, ptr noundef %16)
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi ptr [ %12, %9 ], [ %17, %13 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !57
  %24 = tail call i64 @llvm.umin.i64(i64 %23, i64 %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %24, i1 false)
  br label %25

25:                                               ; preds = %21, %18
  tail call void @MEM_guarded_freeN(ptr noundef nonnull %0)
  br label %28

26:                                               ; preds = %3
  %27 = tail call ptr @MEM_guarded_mallocN(i64 noundef %1, ptr noundef %2)
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi ptr [ %19, %25 ], [ %27, %26 ]
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MEM_guarded_mallocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, 3
  %4 = and i64 %3, -4
  %5 = add i64 %4, 64
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8, !prof !61

8:                                                ; preds = %2
  store i32 1330464077, ptr %6, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 1
  store i64 %4, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 7
  store i16 0, ptr %12, align 4, !tbaa !58
  %13 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 8
  store i16 0, ptr %13, align 2, !tbaa !60
  %14 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 6
  store i32 1279416658, ptr %14, align 8, !tbaa !48
  %15 = getelementptr inbounds i8, ptr %6, i64 56
  %16 = getelementptr inbounds i8, ptr %15, i64 %4
  store i32 558580559, ptr %16, align 4, !tbaa !62
  %17 = load i32, ptr @totblock, align 4, !tbaa !64
  %18 = add i32 %17, 1
  store i32 %18, ptr @totblock, align 4, !tbaa !64
  %19 = load i64, ptr @mem_in_use, align 8, !tbaa !65
  %20 = add i64 %19, %4
  store i64 %20, ptr @mem_in_use, align 8, !tbaa !65
  %21 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %8
  tail call void %21() #18
  br label %24

24:                                               ; preds = %23, %8
  %25 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 2
  store ptr null, ptr %25, align 8, !tbaa !66
  %26 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !68
  %28 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  store ptr %25, ptr %31, align 8, !tbaa !66
  br label %32

32:                                               ; preds = %30, %24
  %33 = load volatile ptr, ptr @_membase, align 8, !tbaa !39
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store volatile ptr %25, ptr @_membase, align 8, !tbaa !39
  br label %36

36:                                               ; preds = %35, %32
  store volatile ptr %25, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %37 = load i64, ptr @mem_in_use, align 8
  %38 = load i64, ptr @peak_mem, align 8
  %39 = tail call i64 @llvm.umax.i64(i64 %37, i64 %38)
  store i64 %39, ptr @peak_mem, align 8, !tbaa !65
  %40 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void %40() #18
  br label %43

43:                                               ; preds = %36, %42
  %44 = load i1, ptr @malloc_debug_memset, align 1
  %45 = icmp ne i64 %4, 0
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %51, !prof !61

47:                                               ; preds = %43
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %15, i8 -1, i64 %4, i1 false)
  br label %51

48:                                               ; preds = %2
  %49 = load i64, ptr @mem_in_use, align 8, !tbaa !65
  %50 = trunc i64 %49 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.2, i64 noundef %4, ptr noundef %1, i32 noundef %50)
  br label %51

51:                                               ; preds = %43, %47, %48
  %52 = phi ptr [ null, %48 ], [ %15, %47 ], [ %15, %43 ]
  ret ptr %52
}

; Function Attrs: nounwind uwtable
define dso_local void @MEM_guarded_freeN(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11)
  br label %138

4:                                                ; preds = %1
  %5 = ptrtoint ptr %0 to i64
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12)
  br label %138

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MemHead, ptr %0, i64 -1
  %11 = load i32, ptr %10, align 8, !tbaa !40
  switch i32 %11, label %122 [
    i32 1162170950, label %12
    i32 1330464077, label %21
  ]

12:                                               ; preds = %9
  %13 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = icmp eq i32 %14, 1162170950
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.24, ptr noundef %18, ptr noundef nonnull @.str.13)
  br label %138

19:                                               ; preds = %12
  %20 = icmp eq i32 %11, 1330464077
  br i1 %20, label %21, label %122

21:                                               ; preds = %9, %19
  %22 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !48
  %24 = icmp eq i32 %23, 1279416658
  br i1 %24, label %25, label %122

25:                                               ; preds = %21
  %26 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !57
  %28 = and i64 %27, 3
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %122

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, ptr %0, i64 %27
  %32 = load i32, ptr %31, align 4, !tbaa !62
  %33 = icmp eq i32 %32, 558580559
  br i1 %33, label %34, label %113

34:                                               ; preds = %30
  store i32 1162170950, ptr %10, align 8, !tbaa !40
  store i32 1162170950, ptr %22, align 8, !tbaa !48
  store i32 1162170950, ptr %31, align 4, !tbaa !62
  %35 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void %35() #18
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !56
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = getelementptr inbounds %struct.localLink, ptr %40, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !68
  br label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store ptr %40, ptr %48, align 8, !tbaa !66
  br label %51

51:                                               ; preds = %50, %46
  %52 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %53 = icmp eq ptr %52, %39
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store volatile ptr %48, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  br label %55

55:                                               ; preds = %54, %51
  %56 = load volatile ptr, ptr @_membase, align 8, !tbaa !39
  %57 = icmp eq ptr %56, %39
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load ptr, ptr %39, align 8, !tbaa !66
  store volatile ptr %59, ptr @_membase, align 8, !tbaa !39
  br label %60

60:                                               ; preds = %58, %55
  br i1 %49, label %74, label %61

61:                                               ; preds = %60
  br i1 %41, label %68, label %62

62:                                               ; preds = %61
  %63 = ptrtoint ptr %40 to i64
  %64 = add i64 %63, -16
  %65 = inttoptr i64 %64 to ptr
  %66 = getelementptr inbounds %struct.MemHead, ptr %65, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !55
  br label %68

68:                                               ; preds = %61, %62
  %69 = phi ptr [ %67, %62 ], [ null, %61 ]
  %70 = ptrtoint ptr %48 to i64
  %71 = add i64 %70, -16
  %72 = inttoptr i64 %71 to ptr
  %73 = getelementptr inbounds %struct.MemHead, ptr %72, i64 0, i32 5
  store ptr %69, ptr %73, align 8, !tbaa !54
  br label %74

74:                                               ; preds = %68, %60
  %75 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  tail call void %75() #18
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i32, ptr @totblock, align 4, !tbaa !64
  %80 = add i32 %79, -1
  store i32 %80, ptr @totblock, align 4, !tbaa !64
  %81 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !57
  %83 = load i64, ptr @mem_in_use, align 8, !tbaa !65
  %84 = sub i64 %83, %82
  store i64 %84, ptr @mem_in_use, align 8, !tbaa !65
  %85 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 7
  %86 = load i16, ptr %85, align 4, !tbaa !58
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %78
  %89 = load i64, ptr @mmap_in_use, align 8, !tbaa !65
  %90 = sub i64 %89, %82
  store i64 %90, ptr @mmap_in_use, align 8, !tbaa !65
  %91 = add i64 %82, 64
  %92 = tail call i32 @munmap(ptr noundef nonnull %10, i64 noundef %91) #18
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %138, label %94

94:                                               ; preds = %88
  %95 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !55
  %97 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %96)
  br label %138

98:                                               ; preds = %78
  %99 = load i1, ptr @malloc_debug_memset, align 1
  %100 = icmp ne i64 %82, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %103, !prof !69

102:                                              ; preds = %98
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 -1, i64 %82, i1 false)
  br label %103

103:                                              ; preds = %102, %98
  %104 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 8
  %105 = load i16, ptr %104, align 2, !tbaa !60
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %108, !prof !59

107:                                              ; preds = %103
  tail call void @free(ptr noundef %10) #18
  br label %138

108:                                              ; preds = %103
  %109 = sext i16 %105 to i64
  %110 = urem i64 56, %109
  %111 = sub nsw i64 %110, %109
  %112 = getelementptr inbounds i8, ptr %10, i64 %111
  tail call void @aligned_free(ptr noundef nonnull %112) #18
  br label %138

113:                                              ; preds = %30
  %114 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !55
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.24, ptr noundef %115, ptr noundef nonnull @.str.14)
  %116 = tail call fastcc ptr @check_memlist(ptr noundef nonnull %10)
  %117 = icmp eq ptr %116, null
  br i1 %117, label %135, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %114, align 8, !tbaa !55
  %120 = icmp eq ptr %116, %119
  br i1 %120, label %135, label %121

121:                                              ; preds = %118
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.24, ptr noundef nonnull %116, ptr noundef nonnull @.str.15)
  br label %135

122:                                              ; preds = %9, %25, %21, %19
  %123 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  tail call void %123() #18
  br label %126

126:                                              ; preds = %122, %125
  %127 = tail call fastcc ptr @check_memlist(ptr noundef nonnull %10)
  %128 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  tail call void %128() #18
  br label %131

131:                                              ; preds = %126, %130
  %132 = icmp eq ptr %127, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %131
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.16)
  br label %135

134:                                              ; preds = %131
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.24, ptr noundef nonnull %127, ptr noundef nonnull @.str.17)
  br label %135

135:                                              ; preds = %133, %134, %113, %121, %118
  %136 = load i32, ptr @totblock, align 4, !tbaa !64
  %137 = add i32 %136, -1
  store i32 %137, ptr @totblock, align 4, !tbaa !64
  br label %138

138:                                              ; preds = %108, %107, %94, %88, %135, %16, %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MEM_guarded_recallocN_id(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !60
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13, !prof !59

9:                                                ; preds = %5
  %10 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = tail call ptr @MEM_guarded_mallocN(i64 noundef %1, ptr noundef %11)
  br label %18

13:                                               ; preds = %5
  %14 = sext i16 %7 to i64
  %15 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = tail call ptr @MEM_guarded_mallocN_aligned(i64 noundef %1, i64 noundef %14, ptr noundef %16)
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi ptr [ %12, %9 ], [ %17, %13 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !57
  %24 = icmp ugt i64 %23, %1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %32

26:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %23, i1 false)
  %27 = load i64, ptr %22, align 8, !tbaa !57
  %28 = icmp ult i64 %27, %1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %19, i64 %27
  %31 = sub i64 %1, %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %30, i8 0, i64 %31, i1 false)
  br label %32

32:                                               ; preds = %25, %29, %26, %18
  tail call void @MEM_guarded_freeN(ptr noundef nonnull %0)
  br label %35

33:                                               ; preds = %3
  %34 = tail call ptr @MEM_guarded_callocN(i64 noundef %1, ptr noundef %2)
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi ptr [ %19, %32 ], [ %34, %33 ]
  ret ptr %36
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local ptr @MEM_guarded_callocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, 3
  %4 = and i64 %3, -4
  %5 = add i64 %4, 64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 1) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  store i32 1330464077, ptr %6, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 1
  store i64 %4, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 7
  store i16 0, ptr %12, align 4, !tbaa !58
  %13 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 8
  store i16 0, ptr %13, align 2, !tbaa !60
  %14 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 6
  store i32 1279416658, ptr %14, align 8, !tbaa !48
  %15 = getelementptr inbounds i8, ptr %6, i64 56
  %16 = getelementptr inbounds i8, ptr %15, i64 %4
  store i32 558580559, ptr %16, align 4, !tbaa !62
  %17 = load i32, ptr @totblock, align 4, !tbaa !64
  %18 = add i32 %17, 1
  store i32 %18, ptr @totblock, align 4, !tbaa !64
  %19 = load i64, ptr @mem_in_use, align 8, !tbaa !65
  %20 = add i64 %19, %4
  store i64 %20, ptr @mem_in_use, align 8, !tbaa !65
  %21 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %8
  tail call void %21() #18
  br label %24

24:                                               ; preds = %23, %8
  %25 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 2
  store ptr null, ptr %25, align 8, !tbaa !66
  %26 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.MemHead, ptr %6, i64 0, i32 3
  store ptr %26, ptr %27, align 8, !tbaa !68
  %28 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  store ptr %25, ptr %31, align 8, !tbaa !66
  br label %32

32:                                               ; preds = %30, %24
  %33 = load volatile ptr, ptr @_membase, align 8, !tbaa !39
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store volatile ptr %25, ptr @_membase, align 8, !tbaa !39
  br label %36

36:                                               ; preds = %35, %32
  store volatile ptr %25, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %37 = load i64, ptr @mem_in_use, align 8
  %38 = load i64, ptr @peak_mem, align 8
  %39 = tail call i64 @llvm.umax.i64(i64 %37, i64 %38)
  store i64 %39, ptr @peak_mem, align 8, !tbaa !65
  %40 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  tail call void %40() #18
  br label %46

43:                                               ; preds = %2
  %44 = load i64, ptr @mem_in_use, align 8, !tbaa !65
  %45 = trunc i64 %44 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.4, i64 noundef %4, ptr noundef %1, i32 noundef %45)
  br label %46

46:                                               ; preds = %42, %36, %43
  %47 = phi ptr [ null, %43 ], [ %15, %36 ], [ %15, %42 ]
  ret ptr %47
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @print_error(ptr nocapture noundef readonly %0, ...) unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @vsnprintf(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %3) #18
  call void @llvm.va_end(ptr %3)
  %5 = getelementptr inbounds [1024 x i8], ptr %2, i64 0, i64 1023
  store i8 0, ptr %5, align 1, !tbaa !70
  %6 = load ptr, ptr @error_callback, align 8, !tbaa !56
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call void %6(ptr noundef nonnull %2) #18
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @stderr, align 8, !tbaa !56
  %11 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %10) #21
  br label %12

12:                                               ; preds = %9, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #18
  ret void
}

declare ptr @aligned_malloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @MEM_guarded_printmemlist_stats() local_unnamed_addr #0 {
  %1 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #18
  br label %4

4:                                                ; preds = %0, %3
  %5 = load i32, ptr @totblock, align 4, !tbaa !64
  %6 = zext i32 %5 to i64
  %7 = mul nuw nsw i64 %6, 24
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #19
  %9 = load volatile ptr, ptr @_membase, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  %11 = ptrtoint ptr %9 to i64
  %12 = add i64 %11, -16
  %13 = icmp eq i64 %12, 0
  %14 = or i1 %10, %13
  br i1 %14, label %45, label %15

15:                                               ; preds = %4, %15
  %16 = phi i64 [ %33, %15 ], [ 0, %4 ]
  %17 = phi i32 [ %27, %15 ], [ 0, %4 ]
  %18 = phi i64 [ %39, %15 ], [ %12, %4 ]
  %19 = phi ptr [ %37, %15 ], [ %8, %4 ]
  %20 = inttoptr i64 %18 to ptr
  %21 = getelementptr inbounds %struct.MemHead, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  store ptr %22, ptr %19, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.MemHead, ptr %20, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.MemPrintBlock, ptr %19, i64 0, i32 1
  store i64 %24, ptr %25, align 8, !tbaa !73
  %26 = getelementptr inbounds %struct.MemPrintBlock, ptr %19, i64 0, i32 2
  store i32 1, ptr %26, align 8, !tbaa !74
  %27 = add i32 %17, 1
  %28 = getelementptr inbounds %struct.MemHead, ptr %20, i64 0, i32 7
  %29 = load i16, ptr %28, align 4, !tbaa !58
  %30 = icmp eq i16 %29, 0
  %31 = add i64 %16, 64
  %32 = sub i64 %31, %24
  %33 = select i1 %30, i64 %32, i64 %16
  %34 = getelementptr inbounds %struct.MemHead, ptr %20, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.MemPrintBlock, ptr %19, i64 1
  %38 = ptrtoint ptr %35 to i64
  %39 = add i64 %38, -16
  %40 = icmp eq i64 %39, 0
  %41 = or i1 %36, %40
  br i1 %41, label %42, label %15, !llvm.loop !75

42:                                               ; preds = %15
  %43 = uitofp i64 %33 to double
  %44 = fmul double %43, 0x3EB0000000000000
  br label %45

45:                                               ; preds = %42, %4
  %46 = phi i32 [ 0, %4 ], [ %27, %42 ]
  %47 = phi double [ 0.000000e+00, %4 ], [ %44, %42 ]
  %48 = zext i32 %46 to i64
  tail call void @qsort(ptr noundef %8, i64 noundef %48, i64 noundef 24, ptr noundef nonnull @compare_name) #18
  %49 = icmp eq i32 %46, 0
  br i1 %49, label %84, label %50

50:                                               ; preds = %45
  %51 = zext i32 %46 to i64
  br label %52

52:                                               ; preds = %50, %78
  %53 = phi i64 [ 0, %50 ], [ %80, %78 ]
  %54 = phi i32 [ 0, %50 ], [ %79, %78 ]
  %55 = zext i32 %54 to i64
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %78, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.MemPrintBlock, ptr %8, i64 %53
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = zext i32 %54 to i64
  %61 = getelementptr inbounds %struct.MemPrintBlock, ptr %8, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !71
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) %62) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.MemPrintBlock, ptr %8, i64 %53, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !73
  %68 = getelementptr inbounds %struct.MemPrintBlock, ptr %8, i64 %60, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !73
  %70 = add i64 %69, %67
  store i64 %70, ptr %68, align 8, !tbaa !73
  %71 = getelementptr inbounds %struct.MemPrintBlock, ptr %8, i64 %60, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !74
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 8, !tbaa !74
  br label %78

74:                                               ; preds = %57
  %75 = add i32 %54, 1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.MemPrintBlock, ptr %8, i64 %76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %77, ptr noundef nonnull align 8 dereferenceable(24) %58, i64 24, i1 false)
  br label %78

78:                                               ; preds = %74, %65, %52
  %79 = phi i32 [ %54, %52 ], [ %54, %65 ], [ %75, %74 ]
  %80 = add nuw nsw i64 %53, 1
  %81 = icmp eq i64 %80, %51
  br i1 %81, label %82, label %52, !llvm.loop !76

82:                                               ; preds = %78
  %83 = add i32 %79, 1
  br label %84

84:                                               ; preds = %82, %45
  %85 = phi i32 [ 1, %45 ], [ %83, %82 ]
  %86 = zext i32 %85 to i64
  tail call void @qsort(ptr noundef %8, i64 noundef %86, i64 noundef 24, ptr noundef nonnull @compare_len) #18
  %87 = load i64, ptr @mem_in_use, align 8, !tbaa !65
  %88 = uitofp i64 %87 to double
  %89 = fmul double %88, 0x3EB0000000000000
  %90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %89)
  %91 = load i64, ptr @peak_mem, align 8, !tbaa !65
  %92 = uitofp i64 %91 to double
  %93 = fmul double %92, 0x3EB0000000000000
  %94 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %93)
  %95 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %47)
  %96 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %97 = icmp eq i32 %85, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %84, %98
  %99 = phi i32 [ %112, %98 ], [ 0, %84 ]
  %100 = phi ptr [ %113, %98 ], [ %8, %84 ]
  %101 = getelementptr inbounds %struct.MemPrintBlock, ptr %100, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !74
  %103 = getelementptr inbounds %struct.MemPrintBlock, ptr %100, i64 0, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !73
  %105 = uitofp i64 %104 to double
  %106 = fmul double %105, 0x3EB0000000000000
  %107 = fmul double %105, 0x3F50000000000000
  %108 = sitofp i32 %102 to double
  %109 = fdiv double %107, %108
  %110 = load ptr, ptr %100, align 8, !tbaa !71
  %111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %102, double noundef %106, double noundef %109, ptr noundef %110)
  %112 = add nuw i32 %99, 1
  %113 = getelementptr inbounds %struct.MemPrintBlock, ptr %100, i64 1
  %114 = icmp eq i32 %112, %85
  br i1 %114, label %115, label %98, !llvm.loop !77

115:                                              ; preds = %98, %84
  tail call void @free(ptr noundef %8) #18
  %116 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call void %116() #18
  br label %119

119:                                              ; preds = %115, %118
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !71
  %4 = load ptr, ptr %1, align 8, !tbaa !71
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #22
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_len(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.MemPrintBlock, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.MemPrintBlock, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !73
  %7 = icmp ult i64 %4, %6
  %8 = icmp ne i64 %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @MEM_guarded_callbackmemlist(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void %2() #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = load volatile ptr, ptr @_membase, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  %8 = ptrtoint ptr %6 to i64
  %9 = add i64 %8, -16
  %10 = icmp eq i64 %9, 0
  %11 = or i1 %7, %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %5, %12
  %13 = phi i64 [ %20, %12 ], [ %9, %5 ]
  %14 = inttoptr i64 %13 to ptr
  %15 = getelementptr inbounds %struct.MemHead, ptr %14, i64 1
  tail call void %0(ptr noundef nonnull %15) #18
  %16 = getelementptr inbounds %struct.MemHead, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  %19 = ptrtoint ptr %17 to i64
  %20 = add i64 %19, -16
  %21 = icmp eq i64 %20, 0
  %22 = or i1 %18, %21
  br i1 %22, label %23, label %12, !llvm.loop !78

23:                                               ; preds = %12, %5
  %24 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void %24() #18
  br label %27

27:                                               ; preds = %23, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MEM_guarded_printmemlist() local_unnamed_addr #0 {
  %1 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #18
  br label %4

4:                                                ; preds = %3, %0
  %5 = load volatile ptr, ptr @_membase, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  %7 = ptrtoint ptr %5 to i64
  %8 = add i64 %7, -16
  %9 = icmp eq i64 %8, 0
  %10 = or i1 %6, %9
  br i1 %10, label %26, label %11

11:                                               ; preds = %4, %11
  %12 = phi i64 [ %23, %11 ], [ %8, %4 ]
  %13 = inttoptr i64 %12 to ptr
  %14 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.MemHead, ptr %13, i64 1
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.21, ptr noundef %15, i64 noundef %17, ptr noundef nonnull %18)
  %19 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  %22 = ptrtoint ptr %20 to i64
  %23 = add i64 %22, -16
  %24 = icmp eq i64 %23, 0
  %25 = or i1 %21, %24
  br i1 %25, label %26, label %11, !llvm.loop !79

26:                                               ; preds = %11, %4
  %27 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void %27() #18
  br label %30

30:                                               ; preds = %26, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @MEM_guarded_printmemlist_pydict() local_unnamed_addr #0 {
  %1 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #18
  br label %4

4:                                                ; preds = %3, %0
  %5 = load volatile ptr, ptr @_membase, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  %7 = ptrtoint ptr %5 to i64
  %8 = add i64 %7, -16
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.18)
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.19)
  %9 = icmp eq i64 %8, 0
  %10 = select i1 %6, i1 true, i1 %9
  br i1 %10, label %26, label %11

11:                                               ; preds = %4, %11
  %12 = phi i64 [ %23, %11 ], [ %8, %4 ]
  %13 = inttoptr i64 %12 to ptr
  %14 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = getelementptr inbounds %struct.MemHead, ptr %13, i64 1
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.20, i64 noundef %15, ptr noundef %17, ptr noundef nonnull %18)
  %19 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  %22 = ptrtoint ptr %20 to i64
  %23 = add i64 %22, -16
  %24 = icmp eq i64 %23, 0
  %25 = or i1 %21, %24
  br i1 %25, label %26, label %11, !llvm.loop !79

26:                                               ; preds = %11, %4
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.22)
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @mem_printmemlist_pydict_script)
  %27 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void %27() #18
  br label %30

30:                                               ; preds = %26, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @MEM_guarded_get_peak_memory() local_unnamed_addr #0 {
  %1 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #18
  br label %4

4:                                                ; preds = %0, %3
  %5 = load i64, ptr @peak_mem, align 8, !tbaa !65
  %6 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6() #18
  br label %9

9:                                                ; preds = %4, %8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @MEM_guarded_reset_peak_memory() local_unnamed_addr #0 {
  %1 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #18
  br label %4

4:                                                ; preds = %0, %3
  store i64 0, ptr @peak_mem, align 8, !tbaa !65
  %5 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void %5() #18
  br label %8

8:                                                ; preds = %4, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @MEM_guarded_get_memory_in_use() local_unnamed_addr #0 {
  %1 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #18
  br label %4

4:                                                ; preds = %0, %3
  %5 = load i64, ptr @mem_in_use, align 8, !tbaa !65
  %6 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6() #18
  br label %9

9:                                                ; preds = %4, %8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define dso_local i64 @MEM_guarded_get_mapped_memory_in_use() local_unnamed_addr #0 {
  %1 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #18
  br label %4

4:                                                ; preds = %0, %3
  %5 = load i64, ptr @mmap_in_use, align 8, !tbaa !65
  %6 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6() #18
  br label %9

9:                                                ; preds = %4, %8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @MEM_guarded_get_memory_blocks_in_use() local_unnamed_addr #0 {
  %1 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !56
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #18
  br label %4

4:                                                ; preds = %0, %3
  %5 = load i32, ptr @totblock, align 4, !tbaa !64
  %6 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !56
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6() #18
  br label %9

9:                                                ; preds = %4, %8
  ret i32 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #14

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #15

declare void @aligned_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { cold }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 8}
!35 = !{!"localListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 0}
!40 = !{!41, !42, i64 0}
!41 = !{!"MemHead", !42, i64 0, !43, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !42, i64 48, !44, i64 52, !44, i64 54}
!42 = !{!"int", !37, i64 0}
!43 = !{!"long", !37, i64 0}
!44 = !{!"short", !37, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!41, !42, i64 48}
!49 = !{!41, !36, i64 16}
!50 = distinct !{!50, !46, !47}
!51 = !{!41, !36, i64 24}
!52 = distinct !{!52, !46, !47}
!53 = distinct !{!53, !46, !47}
!54 = !{!41, !36, i64 40}
!55 = !{!41, !36, i64 32}
!56 = !{!36, !36, i64 0}
!57 = !{!41, !43, i64 8}
!58 = !{!41, !44, i64 52}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{!41, !44, i64 54}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{!63, !42, i64 0}
!63 = !{!"MemTail", !42, i64 0, !42, i64 4}
!64 = !{!42, !42, i64 0}
!65 = !{!43, !43, i64 0}
!66 = !{!67, !36, i64 0}
!67 = !{!"localLink", !36, i64 0, !36, i64 8}
!68 = !{!67, !36, i64 8}
!69 = !{!"branch_weights", i32 1, i32 4001}
!70 = !{!37, !37, i64 0}
!71 = !{!72, !36, i64 0}
!72 = !{!"MemPrintBlock", !36, i64 0, !43, i64 8, !42, i64 16}
!73 = !{!72, !43, i64 8}
!74 = !{!72, !42, i64 16}
!75 = distinct !{!75, !46, !47}
!76 = distinct !{!76, !46, !47}
!77 = distinct !{!77, !46, !47}
!78 = distinct !{!78, !46, !47}
!79 = distinct !{!79, !46, !47}
