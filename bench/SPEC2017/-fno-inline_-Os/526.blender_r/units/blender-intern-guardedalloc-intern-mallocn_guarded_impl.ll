; ModuleID = 'blender/intern/guardedalloc/intern/mallocn_guarded_impl.c'
source_filename = "blender/intern/guardedalloc/intern/mallocn_guarded_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.localListBase = type { ptr, ptr }
%struct.MemHead = type { i32, i64, ptr, ptr, ptr, ptr, i32, i16, i16 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.MemPrintBlock = type { ptr, i64, i32 }
%struct.localLink = type { ptr, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @MEM_guarded_check_memory_integrity() local_unnamed_addr #0 {
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %2 = tail call fastcc ptr @check_memlist(ptr noundef %1) #20
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @check_memlist(ptr noundef readnone %0) unnamed_addr #0 !PGOFuncName !39 {
  %2 = load volatile ptr, ptr @_membase, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  %4 = ptrtoint ptr %2 to i64
  %5 = add i64 %4, -16
  %6 = icmp eq i64 %5, 0
  %7 = or i1 %3, %6
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = inttoptr i64 %5 to ptr
  %10 = load i32, ptr %9, align 8, !tbaa !41
  %11 = icmp eq i32 %10, 1330464077
  br i1 %11, label %16, label %30

12:                                               ; preds = %22
  %13 = inttoptr i64 %27 to ptr
  %14 = load i32, ptr %13, align 8, !tbaa !41
  %15 = icmp eq i32 %14, 1330464077
  br i1 %15, label %16, label %30

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %13, %12 ], [ %9, %8 ]
  %18 = phi ptr [ %17, %12 ], [ null, %8 ]
  %19 = getelementptr inbounds %struct.MemHead, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !46
  %21 = icmp eq i32 %20, 1279416658
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.MemHead, ptr %17, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = icmp eq ptr %24, null
  %26 = ptrtoint ptr %24 to i64
  %27 = add i64 %26, -16
  %28 = icmp eq i64 %27, 0
  %29 = or i1 %25, %28
  br i1 %29, label %30, label %12

30:                                               ; preds = %12, %16, %22, %8, %1
  %31 = phi ptr [ null, %1 ], [ %9, %8 ], [ null, %22 ], [ %17, %16 ], [ %13, %12 ]
  %32 = phi ptr [ null, %1 ], [ null, %8 ], [ %17, %22 ], [ %18, %16 ], [ %17, %12 ]
  %33 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  %35 = ptrtoint ptr %33 to i64
  %36 = add i64 %35, -16
  %37 = icmp eq i64 %36, 0
  %38 = or i1 %34, %37
  br i1 %38, label %61, label %39

39:                                               ; preds = %30
  %40 = inttoptr i64 %36 to ptr
  %41 = load i32, ptr %40, align 8, !tbaa !41
  %42 = icmp eq i32 %41, 1330464077
  br i1 %42, label %47, label %61

43:                                               ; preds = %53
  %44 = inttoptr i64 %58 to ptr
  %45 = load i32, ptr %44, align 8, !tbaa !41
  %46 = icmp eq i32 %45, 1330464077
  br i1 %46, label %47, label %61

47:                                               ; preds = %39, %43
  %48 = phi ptr [ %44, %43 ], [ %40, %39 ]
  %49 = phi ptr [ %48, %43 ], [ null, %39 ]
  %50 = getelementptr inbounds %struct.MemHead, ptr %48, i64 0, i32 6
  %51 = load i32, ptr %50, align 8, !tbaa !46
  %52 = icmp eq i32 %51, 1279416658
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.MemHead, ptr %48, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = icmp eq ptr %55, null
  %57 = ptrtoint ptr %55 to i64
  %58 = add i64 %57, -16
  %59 = icmp eq i64 %58, 0
  %60 = or i1 %56, %59
  br i1 %60, label %61, label %43

61:                                               ; preds = %43, %47, %53, %39, %30
  %62 = phi ptr [ null, %30 ], [ %40, %39 ], [ null, %53 ], [ %48, %47 ], [ %44, %43 ]
  %63 = phi ptr [ null, %30 ], [ null, %39 ], [ %48, %53 ], [ %49, %47 ], [ %48, %43 ]
  %64 = phi i1 [ true, %30 ], [ false, %39 ], [ true, %53 ], [ false, %47 ], [ false, %43 ]
  %65 = icmp eq ptr %31, %62
  br i1 %65, label %66, label %168

66:                                               ; preds = %61
  br i1 %64, label %67, label %139

67:                                               ; preds = %66
  %68 = load volatile ptr, ptr @_membase, align 8, !tbaa !40
  %69 = icmp eq ptr %68, null
  %70 = ptrtoint ptr %68 to i64
  %71 = add i64 %70, -16
  %72 = inttoptr i64 %71 to ptr
  %73 = select i1 %69, ptr null, ptr %72
  %74 = icmp eq ptr %73, null
  %75 = icmp eq ptr %73, %0
  %76 = or i1 %74, %75
  br i1 %76, label %100, label %77

77:                                               ; preds = %67
  %78 = load i32, ptr %72, align 8, !tbaa !41
  %79 = icmp eq i32 %78, 1330464077
  br i1 %79, label %83, label %104

80:                                               ; preds = %89
  %81 = load i32, ptr %95, align 8, !tbaa !41
  %82 = icmp eq i32 %81, 1330464077
  br i1 %82, label %83, label %104, !llvm.loop !49

83:                                               ; preds = %77, %80
  %84 = phi ptr [ %95, %80 ], [ %72, %77 ]
  %85 = phi ptr [ %84, %80 ], [ null, %77 ]
  %86 = getelementptr inbounds %struct.MemHead, ptr %84, i64 0, i32 6
  %87 = load i32, ptr %86, align 8, !tbaa !46
  %88 = icmp eq i32 %87, 1279416658
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.MemHead, ptr %84, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  %92 = icmp eq ptr %91, null
  %93 = ptrtoint ptr %91 to i64
  %94 = add i64 %93, -16
  %95 = inttoptr i64 %94 to ptr
  %96 = select i1 %92, ptr null, ptr %95
  %97 = icmp eq ptr %96, null
  %98 = icmp eq ptr %96, %0
  %99 = or i1 %97, %98
  br i1 %99, label %100, label %80, !llvm.loop !49

100:                                              ; preds = %89, %67
  %101 = phi ptr [ %73, %67 ], [ %96, %89 ]
  %102 = phi ptr [ null, %67 ], [ %84, %89 ]
  %103 = phi i1 [ %74, %67 ], [ %97, %89 ]
  br i1 %103, label %168, label %104

104:                                              ; preds = %80, %83, %77, %100
  %105 = phi ptr [ %101, %100 ], [ %72, %77 ], [ %84, %83 ], [ %95, %80 ]
  %106 = phi ptr [ %102, %100 ], [ null, %77 ], [ %85, %83 ], [ %84, %80 ]
  %107 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %108 = icmp eq ptr %107, null
  %109 = ptrtoint ptr %107 to i64
  %110 = add i64 %109, -16
  %111 = inttoptr i64 %110 to ptr
  %112 = select i1 %108, ptr null, ptr %111
  %113 = icmp eq ptr %112, null
  %114 = icmp eq ptr %112, %0
  %115 = or i1 %113, %114
  br i1 %115, label %139, label %116

116:                                              ; preds = %104
  %117 = load i32, ptr %111, align 8, !tbaa !41
  %118 = icmp eq i32 %117, 1330464077
  br i1 %118, label %122, label %139

119:                                              ; preds = %128
  %120 = load i32, ptr %134, align 8, !tbaa !41
  %121 = icmp eq i32 %120, 1330464077
  br i1 %121, label %122, label %139, !llvm.loop !51

122:                                              ; preds = %116, %119
  %123 = phi ptr [ %134, %119 ], [ %111, %116 ]
  %124 = phi ptr [ %123, %119 ], [ null, %116 ]
  %125 = getelementptr inbounds %struct.MemHead, ptr %123, i64 0, i32 6
  %126 = load i32, ptr %125, align 8, !tbaa !46
  %127 = icmp eq i32 %126, 1279416658
  br i1 %127, label %128, label %139

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.MemHead, ptr %123, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !48
  %131 = icmp eq ptr %130, null
  %132 = ptrtoint ptr %130 to i64
  %133 = add i64 %132, -16
  %134 = inttoptr i64 %133 to ptr
  %135 = select i1 %131, ptr null, ptr %134
  %136 = icmp eq ptr %135, null
  %137 = icmp eq ptr %135, %0
  %138 = or i1 %136, %137
  br i1 %138, label %139, label %119, !llvm.loop !51

139:                                              ; preds = %128, %122, %119, %116, %104, %66
  %140 = phi ptr [ %31, %66 ], [ %105, %104 ], [ %105, %116 ], [ %105, %119 ], [ %105, %122 ], [ %105, %128 ]
  %141 = phi ptr [ %32, %66 ], [ %106, %104 ], [ %106, %116 ], [ %106, %119 ], [ %106, %122 ], [ %106, %128 ]
  %142 = phi ptr [ %63, %66 ], [ null, %104 ], [ null, %116 ], [ %123, %128 ], [ %124, %122 ], [ %123, %119 ]
  %143 = icmp eq ptr %141, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = icmp eq ptr %140, %0
  br i1 %145, label %160, label %166

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.MemHead, ptr %141, i64 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !52
  %149 = icmp eq ptr %140, %0
  br i1 %149, label %150, label %166

150:                                              ; preds = %146
  %151 = icmp eq ptr %142, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.MemHead, ptr %142, i64 0, i32 2
  %154 = getelementptr inbounds %struct.MemHead, ptr %141, i64 0, i32 2
  store ptr %153, ptr %154, align 8, !tbaa !47
  %155 = getelementptr inbounds %struct.MemHead, ptr %142, i64 0, i32 3
  store ptr %154, ptr %155, align 8, !tbaa !48
  %156 = getelementptr inbounds %struct.MemHead, ptr %142, i64 0, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !53
  store ptr %157, ptr %147, align 8, !tbaa !52
  br label %168

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.MemHead, ptr %141, i64 0, i32 2
  store ptr null, ptr %159, align 8, !tbaa !47
  store volatile ptr %159, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  br label %168

160:                                              ; preds = %144
  %161 = icmp eq ptr %142, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.MemHead, ptr %142, i64 0, i32 3
  store ptr null, ptr %163, align 8, !tbaa !48
  %164 = getelementptr inbounds %struct.MemHead, ptr %142, i64 0, i32 2
  store volatile ptr %164, ptr @_membase, align 8, !tbaa !40
  br label %168

165:                                              ; preds = %160
  store volatile ptr null, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  store volatile ptr null, ptr @_membase, align 8, !tbaa !40
  br label %168

166:                                              ; preds = %146, %144
  %167 = phi ptr [ %148, %146 ], [ @.str.26, %144 ]
  tail call fastcc void @MemorY_ErroR(ptr noundef %167, ptr noundef nonnull @.str.27) #20
  br label %168

168:                                              ; preds = %162, %165, %152, %158, %100, %61, %166
  %169 = phi ptr [ @.str.27, %166 ], [ @.str.25, %61 ], [ null, %100 ], [ %148, %158 ], [ %148, %152 ], [ @.str.26, %165 ], [ @.str.26, %162 ]
  ret ptr %169
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_guarded_set_error_callback(ptr noundef %0) local_unnamed_addr #2 {
  store ptr %0, ptr @error_callback, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_guarded_set_lock_callback(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  store ptr %0, ptr @thread_lock_callback, align 8, !tbaa !54
  store ptr %1, ptr @thread_unlock_callback, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_guarded_set_memory_debug() local_unnamed_addr #2 {
  store i1 true, ptr @malloc_debug_memset, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i64 @MEM_guarded_allocN_len(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !55
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %1 ]
  ret i64 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MEM_guarded_dupallocN(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !56
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %11, label %7, !prof !57

7:                                                ; preds = %3
  %8 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !55
  %10 = tail call ptr @MEM_guarded_mapallocN(i64 noundef %9, ptr noundef nonnull @.str) #20
  br label %22

11:                                               ; preds = %3
  %12 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !58
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !55
  br i1 %14, label %17, label %19, !prof !57

17:                                               ; preds = %11
  %18 = tail call ptr @MEM_guarded_mapallocN(i64 noundef %16, ptr noundef nonnull @.str) #20
  br label %22

19:                                               ; preds = %11
  %20 = sext i16 %13 to i64
  %21 = tail call ptr @MEM_guarded_mallocN_aligned(i64 noundef %16, i64 noundef %20, ptr noundef nonnull @.str.1) #20
  br label %22

22:                                               ; preds = %17, %19, %7
  %23 = phi ptr [ %10, %7 ], [ %18, %17 ], [ %21, %19 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %23, ptr nonnull align 1 %0, i64 %27, i1 false)
  br label %28

28:                                               ; preds = %22, %1, %25
  %29 = phi ptr [ null, %1 ], [ %23, %25 ], [ null, %22 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MEM_guarded_mapallocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @MEM_guarded_callocN(i64 noundef %0, ptr noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MEM_guarded_mallocN_aligned(i64 noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = urem i64 56, %1
  %5 = sub i64 %1, %4
  %6 = add i64 %0, 3
  %7 = and i64 %6, -4
  %8 = add i64 %7, 64
  %9 = add i64 %8, %5
  %10 = tail call ptr @aligned_malloc(i64 noundef %9, i64 noundef %1) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12, !prof !59

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, ptr %10, i64 %5
  tail call fastcc void @make_memhead_header(ptr noundef nonnull %13, i64 noundef %7, ptr noundef %2) #20
  %14 = trunc i64 %1 to i16
  %15 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 8
  store i16 %14, ptr %15, align 2, !tbaa !58
  %16 = load i1, ptr @malloc_debug_memset, align 1
  %17 = icmp ne i64 %7, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %21, !prof !59

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.MemHead, ptr %13, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %20, i8 -1, i64 %7, i1 false)
  br label %21

21:                                               ; preds = %19, %12
  %22 = getelementptr inbounds %struct.MemHead, ptr %13, i64 1
  br label %26

23:                                               ; preds = %3
  %24 = load i64, ptr @mem_in_use, align 8, !tbaa !60
  %25 = trunc i64 %24 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.3, i64 noundef %7, ptr noundef %2, i32 noundef %25) #20
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi ptr [ %22, %21 ], [ null, %23 ]
  ret ptr %27
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MEM_guarded_reallocN_id(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !58
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13, !prof !57

9:                                                ; preds = %5
  %10 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = tail call ptr @MEM_guarded_mallocN(i64 noundef %1, ptr noundef %11) #20
  br label %18

13:                                               ; preds = %5
  %14 = sext i16 %7 to i64
  %15 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = tail call ptr @MEM_guarded_mallocN_aligned(i64 noundef %1, i64 noundef %14, ptr noundef %16) #20
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi ptr [ %12, %9 ], [ %17, %13 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !55
  %24 = tail call i64 @llvm.umin.i64(i64 %23, i64 %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %24, i1 false)
  br label %25

25:                                               ; preds = %21, %18
  tail call void @MEM_guarded_freeN(ptr noundef nonnull %0) #20
  br label %28

26:                                               ; preds = %3
  %27 = tail call ptr @MEM_guarded_mallocN(i64 noundef %1, ptr noundef %2) #20
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi ptr [ %19, %25 ], [ %27, %26 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MEM_guarded_mallocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, 3
  %4 = and i64 %3, -4
  %5 = add i64 %4, 64
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !59

8:                                                ; preds = %2
  tail call fastcc void @make_memhead_header(ptr noundef nonnull %6, i64 noundef %4, ptr noundef %1) #20
  %9 = load i1, ptr @malloc_debug_memset, align 1
  %10 = icmp ne i64 %4, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14, !prof !59

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.MemHead, ptr %6, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %13, i8 -1, i64 %4, i1 false)
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.MemHead, ptr %6, i64 1
  br label %19

16:                                               ; preds = %2
  %17 = load i64, ptr @mem_in_use, align 8, !tbaa !60
  %18 = trunc i64 %17 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.2, i64 noundef %4, ptr noundef %1, i32 noundef %18) #20
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi ptr [ %15, %14 ], [ null, %16 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MEM_guarded_freeN(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call fastcc void @MemorY_ErroR(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #20
  br label %50

4:                                                ; preds = %1
  %5 = ptrtoint ptr %0 to i64
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @MemorY_ErroR(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #20
  br label %50

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MemHead, ptr %0, i64 -1
  %11 = load i32, ptr %10, align 8, !tbaa !41
  switch i32 %11, label %42 [
    i32 1162170950, label %12
    i32 1330464077, label %19
  ]

12:                                               ; preds = %9
  %13 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = icmp eq i32 %14, 1162170950
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  tail call fastcc void @MemorY_ErroR(ptr noundef %18, ptr noundef nonnull @.str.13) #20
  br label %50

19:                                               ; preds = %9
  %20 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = icmp eq i32 %21, 1279416658
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !55
  %26 = and i64 %25, 3
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = getelementptr inbounds i8, ptr %0, i64 %25
  %30 = load i32, ptr %29, align 4, !tbaa !61
  %31 = icmp eq i32 %30, 558580559
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1162170950, ptr %10, align 8, !tbaa !41
  store i32 1162170950, ptr %20, align 8, !tbaa !46
  store i32 1162170950, ptr %29, align 4, !tbaa !61
  tail call fastcc void @rem_memblock(ptr noundef nonnull %10) #20
  br label %50

33:                                               ; preds = %28
  %34 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  tail call fastcc void @MemorY_ErroR(ptr noundef %35, ptr noundef nonnull @.str.14) #20
  %36 = tail call fastcc ptr @check_memlist(ptr noundef nonnull %10) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %34, align 8, !tbaa !53
  %40 = icmp eq ptr %36, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  tail call fastcc void @MemorY_ErroR(ptr noundef nonnull %36, ptr noundef nonnull @.str.15) #20
  br label %47

42:                                               ; preds = %9, %12, %23, %19
  tail call fastcc void @mem_lock_thread() #20
  %43 = tail call fastcc ptr @check_memlist(ptr noundef nonnull %10) #20
  tail call fastcc void @mem_unlock_thread() #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call fastcc void @MemorY_ErroR(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.16) #20
  br label %47

46:                                               ; preds = %42
  tail call fastcc void @MemorY_ErroR(ptr noundef nonnull %43, ptr noundef nonnull @.str.17) #20
  br label %47

47:                                               ; preds = %45, %46, %33, %41, %38
  %48 = load i32, ptr @totblock, align 4, !tbaa !63
  %49 = add i32 %48, -1
  store i32 %49, ptr @totblock, align 4, !tbaa !63
  br label %50

50:                                               ; preds = %47, %32, %16, %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MEM_guarded_recallocN_id(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !58
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13, !prof !57

9:                                                ; preds = %5
  %10 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = tail call ptr @MEM_guarded_mallocN(i64 noundef %1, ptr noundef %11) #20
  br label %18

13:                                               ; preds = %5
  %14 = sext i16 %7 to i64
  %15 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = tail call ptr @MEM_guarded_mallocN_aligned(i64 noundef %1, i64 noundef %14, ptr noundef %16) #20
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi ptr [ %12, %9 ], [ %17, %13 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = getelementptr %struct.MemHead, ptr %0, i64 -1, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !55
  %24 = icmp ugt i64 %23, %1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %32

26:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr nonnull align 1 %0, i64 %23, i1 false)
  %27 = load i64, ptr %22, align 8, !tbaa !55
  %28 = icmp ult i64 %27, %1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %19, i64 %27
  %31 = sub i64 %1, %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %30, i8 0, i64 %31, i1 false)
  br label %32

32:                                               ; preds = %25, %29, %26, %18
  tail call void @MEM_guarded_freeN(ptr noundef nonnull %0) #20
  br label %35

33:                                               ; preds = %3
  %34 = tail call ptr @MEM_guarded_callocN(i64 noundef %1, ptr noundef %2) #20
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi ptr [ %19, %32 ], [ %34, %33 ]
  ret ptr %36
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MEM_guarded_callocN(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = add i64 %0, 3
  %4 = and i64 %3, -4
  %5 = add i64 %4, 64
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 1) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  tail call fastcc void @make_memhead_header(ptr noundef nonnull %6, i64 noundef %4, ptr noundef %1) #20
  %9 = getelementptr inbounds %struct.MemHead, ptr %6, i64 1
  br label %13

10:                                               ; preds = %2
  %11 = load i64, ptr @mem_in_use, align 8, !tbaa !60
  %12 = trunc i64 %11 to i32
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.4, i64 noundef %4, ptr noundef %1, i32 noundef %12) #20
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ null, %10 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_memhead_header(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !64 {
  store i32 1330464077, ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 4
  store ptr %2, ptr %4, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 5
  store ptr null, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 1
  store i64 %1, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 7
  store i16 0, ptr %7, align 4, !tbaa !56
  %8 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 8
  store i16 0, ptr %8, align 2, !tbaa !58
  %9 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 6
  store i32 1279416658, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds i8, ptr %0, i64 56
  %11 = getelementptr inbounds i8, ptr %10, i64 %1
  store i32 558580559, ptr %11, align 4, !tbaa !61
  %12 = load i32, ptr @totblock, align 4, !tbaa !63
  %13 = add i32 %12, 1
  store i32 %13, ptr @totblock, align 4, !tbaa !63
  %14 = load i64, ptr @mem_in_use, align 8, !tbaa !60
  %15 = add i64 %14, %1
  store i64 %15, ptr @mem_in_use, align 8, !tbaa !60
  tail call fastcc void @mem_lock_thread() #20
  %16 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 2
  tail call fastcc void @addtail(ptr noundef nonnull %16) #20
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = ptrtoint ptr %17 to i64
  %21 = add i64 %20, -16
  %22 = inttoptr i64 %21 to ptr
  %23 = getelementptr inbounds %struct.MemHead, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  store ptr %24, ptr %5, align 8, !tbaa !52
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i64, ptr @mem_in_use, align 8
  %27 = load i64, ptr @peak_mem, align 8
  %28 = tail call i64 @llvm.umax.i64(i64 %26, i64 %27)
  store i64 %28, ptr @peak_mem, align 8, !tbaa !60
  tail call fastcc void @mem_unlock_thread() #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @print_error(ptr nocapture noundef readonly %0, ...) unnamed_addr #0 !PGOFuncName !65 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @vsnprintf(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef %0, ptr noundef nonnull %3) #21
  call void @llvm.va_end(ptr nonnull %3)
  %5 = getelementptr inbounds [1024 x i8], ptr %2, i64 0, i64 1023
  store i8 0, ptr %5, align 1, !tbaa !66
  %6 = load ptr, ptr @error_callback, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call void %6(ptr noundef nonnull %2) #21
  br label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @stderr, align 8, !tbaa !54
  %11 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %10) #25
  br label %12

12:                                               ; preds = %9, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #24
  ret void
}

; Function Attrs: optsize
declare ptr @aligned_malloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MEM_guarded_printmemlist_stats() local_unnamed_addr #0 {
  tail call fastcc void @mem_lock_thread() #20
  %1 = load i32, ptr @totblock, align 4, !tbaa !63
  %2 = zext i32 %1 to i64
  %3 = mul nuw nsw i64 %2, 24
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #22
  %5 = load volatile ptr, ptr @_membase, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  %7 = ptrtoint ptr %5 to i64
  %8 = add i64 %7, -16
  %9 = icmp eq i64 %8, 0
  %10 = or i1 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  tail call void @qsort(ptr noundef %4, i64 noundef 0, i64 noundef 24, ptr noundef nonnull @compare_name) #21
  br label %75

12:                                               ; preds = %0, %12
  %13 = phi i64 [ %30, %12 ], [ 0, %0 ]
  %14 = phi i32 [ %24, %12 ], [ 0, %0 ]
  %15 = phi i64 [ %36, %12 ], [ %8, %0 ]
  %16 = phi ptr [ %34, %12 ], [ %4, %0 ]
  %17 = inttoptr i64 %15 to ptr
  %18 = getelementptr inbounds %struct.MemHead, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  store ptr %19, ptr %16, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.MemHead, ptr %17, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.MemPrintBlock, ptr %16, i64 0, i32 1
  store i64 %21, ptr %22, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.MemPrintBlock, ptr %16, i64 0, i32 2
  store i32 1, ptr %23, align 8, !tbaa !70
  %24 = add i32 %14, 1
  %25 = getelementptr inbounds %struct.MemHead, ptr %17, i64 0, i32 7
  %26 = load i16, ptr %25, align 4, !tbaa !56
  %27 = icmp eq i16 %26, 0
  %28 = add i64 %13, 64
  %29 = sub i64 %28, %21
  %30 = select i1 %27, i64 %29, i64 %13
  %31 = getelementptr inbounds %struct.MemHead, ptr %17, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.MemPrintBlock, ptr %16, i64 1
  %35 = ptrtoint ptr %32 to i64
  %36 = add i64 %35, -16
  %37 = icmp eq i64 %36, 0
  %38 = or i1 %33, %37
  br i1 %38, label %39, label %12, !llvm.loop !71

39:                                               ; preds = %12
  %40 = uitofp i64 %30 to double
  %41 = fmul double %40, 0x3EB0000000000000
  %42 = zext i32 %24 to i64
  tail call void @qsort(ptr noundef %4, i64 noundef %42, i64 noundef 24, ptr noundef nonnull @compare_name) #21
  %43 = icmp eq i32 %24, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %39, %69
  %45 = phi i64 [ %71, %69 ], [ 0, %39 ]
  %46 = phi i32 [ %70, %69 ], [ 0, %39 ]
  %47 = zext i32 %46 to i64
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %69, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.MemPrintBlock, ptr %4, i64 %45
  %51 = load ptr, ptr %50, align 8, !tbaa !67
  %52 = getelementptr inbounds %struct.MemPrintBlock, ptr %4, i64 %47
  %53 = load ptr, ptr %52, align 8, !tbaa !67
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) %53) #26
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.MemPrintBlock, ptr %4, i64 %45, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !69
  %59 = getelementptr inbounds %struct.MemPrintBlock, ptr %4, i64 %47, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !69
  %61 = add i64 %60, %58
  store i64 %61, ptr %59, align 8, !tbaa !69
  %62 = getelementptr inbounds %struct.MemPrintBlock, ptr %4, i64 %47, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !70
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %62, align 8, !tbaa !70
  br label %69

65:                                               ; preds = %49
  %66 = add i32 %46, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.MemPrintBlock, ptr %4, i64 %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %50, i64 24, i1 false)
  br label %69

69:                                               ; preds = %65, %56, %44
  %70 = phi i32 [ %46, %44 ], [ %46, %56 ], [ %66, %65 ]
  %71 = add nuw nsw i64 %45, 1
  %72 = icmp eq i64 %71, %42
  br i1 %72, label %73, label %44, !llvm.loop !72

73:                                               ; preds = %69
  %74 = add i32 %70, 1
  br label %75

75:                                               ; preds = %11, %73, %39
  %76 = phi double [ %41, %39 ], [ %41, %73 ], [ 0.000000e+00, %11 ]
  %77 = phi i32 [ 1, %39 ], [ %74, %73 ], [ 1, %11 ]
  %78 = zext i32 %77 to i64
  tail call void @qsort(ptr noundef %4, i64 noundef %78, i64 noundef 24, ptr noundef nonnull @compare_len) #21
  %79 = load i64, ptr @mem_in_use, align 8, !tbaa !60
  %80 = uitofp i64 %79 to double
  %81 = fmul double %80, 0x3EB0000000000000
  %82 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %81) #20
  %83 = load i64, ptr @peak_mem, align 8, !tbaa !60
  %84 = uitofp i64 %83 to double
  %85 = fmul double %84, 0x3EB0000000000000
  %86 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %85) #20
  %87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %76) #20
  %88 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %89 = icmp eq i32 %77, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %75, %90
  %91 = phi i32 [ %104, %90 ], [ 0, %75 ]
  %92 = phi ptr [ %105, %90 ], [ %4, %75 ]
  %93 = getelementptr inbounds %struct.MemPrintBlock, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !70
  %95 = getelementptr inbounds %struct.MemPrintBlock, ptr %92, i64 0, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !69
  %97 = uitofp i64 %96 to double
  %98 = fmul double %97, 0x3EB0000000000000
  %99 = fmul double %97, 0x3F50000000000000
  %100 = sitofp i32 %94 to double
  %101 = fdiv double %99, %100
  %102 = load ptr, ptr %92, align 8, !tbaa !67
  %103 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %94, double noundef %98, double noundef %101, ptr noundef %102) #20
  %104 = add nuw i32 %91, 1
  %105 = getelementptr inbounds %struct.MemPrintBlock, ptr %92, i64 1
  %106 = icmp eq i32 %104, %77
  br i1 %106, label %107, label %90, !llvm.loop !73

107:                                              ; preds = %90, %75
  tail call void @free(ptr noundef %4) #21
  tail call fastcc void @mem_unlock_thread() #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mem_lock_thread() unnamed_addr #0 !PGOFuncName !74 {
  %1 = load ptr, ptr @thread_lock_callback, align 8, !tbaa !54
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #21
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !PGOFuncName !75 {
  %3 = load ptr, ptr %0, align 8, !tbaa !67
  %4 = load ptr, ptr %1, align 8, !tbaa !67
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #26
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @compare_len(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.MemPrintBlock, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.MemPrintBlock, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !69
  %7 = icmp ult i64 %4, %6
  %8 = icmp ne i64 %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mem_unlock_thread() unnamed_addr #0 !PGOFuncName !77 {
  %1 = load ptr, ptr @thread_unlock_callback, align 8, !tbaa !54
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #21
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MEM_guarded_callbackmemlist(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call fastcc void @mem_lock_thread() #20
  %2 = load volatile ptr, ptr @_membase, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  %4 = ptrtoint ptr %2 to i64
  %5 = add i64 %4, -16
  %6 = icmp eq i64 %5, 0
  %7 = or i1 %3, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %8
  %9 = phi i64 [ %16, %8 ], [ %5, %1 ]
  %10 = inttoptr i64 %9 to ptr
  %11 = getelementptr inbounds %struct.MemHead, ptr %10, i64 1
  tail call void %0(ptr noundef nonnull %11) #21
  %12 = getelementptr inbounds %struct.MemHead, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  %15 = ptrtoint ptr %13 to i64
  %16 = add i64 %15, -16
  %17 = icmp eq i64 %16, 0
  %18 = or i1 %14, %17
  br i1 %18, label %19, label %8, !llvm.loop !78

19:                                               ; preds = %8, %1
  tail call fastcc void @mem_unlock_thread() #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MEM_guarded_printmemlist() local_unnamed_addr #0 {
  tail call fastcc void @MEM_guarded_printmemlist_internal(i32 noundef 0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @MEM_guarded_printmemlist_internal(i32 noundef %0) unnamed_addr #0 !PGOFuncName !79 {
  tail call fastcc void @mem_lock_thread() #20
  %2 = load volatile ptr, ptr @_membase, align 8, !tbaa !40
  %3 = icmp eq ptr %2, null
  %4 = ptrtoint ptr %2 to i64
  %5 = add i64 %4, -16
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.18) #20
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.19) #20
  br label %8

8:                                                ; preds = %7, %1
  %9 = icmp eq i64 %5, 0
  %10 = select i1 %3, i1 true, i1 %9
  br i1 %10, label %33, label %11

11:                                               ; preds = %8, %25
  %12 = phi i64 [ %30, %25 ], [ %5, %8 ]
  %13 = inttoptr i64 %12 to ptr
  %14 = getelementptr inbounds %struct.MemHead, ptr %13, i64 1
  br i1 %6, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !55
  %18 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.20, i64 noundef %17, ptr noundef %19, ptr noundef nonnull %14) #20
  br label %25

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !55
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.21, ptr noundef %22, i64 noundef %24, ptr noundef nonnull %14) #20
  br label %25

25:                                               ; preds = %20, %15
  %26 = getelementptr inbounds %struct.MemHead, ptr %13, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  %29 = ptrtoint ptr %27 to i64
  %30 = add i64 %29, -16
  %31 = icmp eq i64 %30, 0
  %32 = or i1 %28, %31
  br i1 %32, label %33, label %11, !llvm.loop !80

33:                                               ; preds = %25, %8
  br i1 %6, label %35, label %34

34:                                               ; preds = %33
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.22) #20
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @mem_printmemlist_pydict_script) #20
  br label %35

35:                                               ; preds = %34, %33
  tail call fastcc void @mem_unlock_thread() #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MEM_guarded_printmemlist_pydict() local_unnamed_addr #0 {
  tail call fastcc void @MEM_guarded_printmemlist_internal(i32 noundef 1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @MemorY_ErroR(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !81 {
  tail call void (ptr, ...) @print_error(ptr noundef nonnull @.str.24, ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rem_memblock(ptr noundef %0) unnamed_addr #0 !PGOFuncName !82 {
  tail call fastcc void @mem_lock_thread() #20
  %2 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 2
  tail call fastcc void @remlink(ptr noundef nonnull %2) #20
  %3 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i64
  %11 = add i64 %10, -16
  %12 = inttoptr i64 %11 to ptr
  %13 = getelementptr inbounds %struct.MemHead, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  br label %15

15:                                               ; preds = %6, %9
  %16 = phi ptr [ %14, %9 ], [ null, %6 ]
  %17 = ptrtoint ptr %4 to i64
  %18 = add i64 %17, -16
  %19 = inttoptr i64 %18 to ptr
  %20 = getelementptr inbounds %struct.MemHead, ptr %19, i64 0, i32 5
  store ptr %16, ptr %20, align 8, !tbaa !52
  br label %21

21:                                               ; preds = %15, %1
  tail call fastcc void @mem_unlock_thread() #20
  %22 = load i32, ptr @totblock, align 4, !tbaa !63
  %23 = add i32 %22, -1
  store i32 %23, ptr @totblock, align 4, !tbaa !63
  %24 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !55
  %26 = load i64, ptr @mem_in_use, align 8, !tbaa !60
  %27 = sub i64 %26, %25
  store i64 %27, ptr @mem_in_use, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 7
  %29 = load i16, ptr %28, align 4, !tbaa !56
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %21
  %32 = load i64, ptr @mmap_in_use, align 8, !tbaa !60
  %33 = sub i64 %32, %25
  store i64 %33, ptr @mmap_in_use, align 8, !tbaa !60
  %34 = add i64 %25, 64
  %35 = tail call i32 @munmap(ptr noundef nonnull %0, i64 noundef %34) #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef %39) #20
  br label %57

41:                                               ; preds = %21
  %42 = load i1, ptr @malloc_debug_memset, align 1
  %43 = icmp ne i64 %25, 0
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %47, !prof !83

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.MemHead, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %46, i8 -1, i64 %25, i1 false)
  br label %47

47:                                               ; preds = %41, %45
  %48 = getelementptr inbounds %struct.MemHead, ptr %0, i64 0, i32 8
  %49 = load i16, ptr %48, align 2, !tbaa !58
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %52, !prof !57

51:                                               ; preds = %47
  tail call void @free(ptr noundef nonnull %0) #21
  br label %57

52:                                               ; preds = %47
  %53 = sext i16 %49 to i64
  %54 = urem i64 56, %53
  %55 = sub nsw i64 %54, %53
  %56 = getelementptr inbounds i8, ptr %0, i64 %55
  tail call void @aligned_free(ptr noundef %56) #21
  br label %57

57:                                               ; preds = %51, %52, %31, %37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MEM_guarded_get_peak_memory() local_unnamed_addr #0 {
  tail call fastcc void @mem_lock_thread() #20
  %1 = load i64, ptr @peak_mem, align 8, !tbaa !60
  tail call fastcc void @mem_unlock_thread() #20
  ret i64 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MEM_guarded_reset_peak_memory() local_unnamed_addr #0 {
  tail call fastcc void @mem_lock_thread() #20
  store i64 0, ptr @peak_mem, align 8, !tbaa !60
  tail call fastcc void @mem_unlock_thread() #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MEM_guarded_get_memory_in_use() local_unnamed_addr #0 {
  tail call fastcc void @mem_lock_thread() #20
  %1 = load i64, ptr @mem_in_use, align 8, !tbaa !60
  tail call fastcc void @mem_unlock_thread() #20
  ret i64 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @MEM_guarded_get_mapped_memory_in_use() local_unnamed_addr #0 {
  tail call fastcc void @mem_lock_thread() #20
  %1 = load i64, ptr @mmap_in_use, align 8, !tbaa !60
  tail call fastcc void @mem_unlock_thread() #20
  ret i64 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @MEM_guarded_get_memory_blocks_in_use() local_unnamed_addr #0 {
  tail call fastcc void @mem_lock_thread() #20
  %1 = load i32, ptr @totblock, align 4, !tbaa !63
  tail call fastcc void @mem_unlock_thread() #20
  ret i32 %1
}

; Function Attrs: nofree noinline norecurse nounwind optsize memory(readwrite, argmem: write) uwtable
define internal fastcc void @addtail(ptr noundef %0) unnamed_addr #14 !PGOFuncName !84 {
  store ptr null, ptr %0, align 8, !tbaa !85
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.localLink, ptr %0, i64 0, i32 1
  store ptr %2, ptr %3, align 8, !tbaa !87
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  store ptr %0, ptr %7, align 8, !tbaa !85
  br label %8

8:                                                ; preds = %6, %1
  %9 = load volatile ptr, ptr @_membase, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store volatile ptr %0, ptr @_membase, align 8, !tbaa !40
  br label %12

12:                                               ; preds = %11, %8
  store volatile ptr %0, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline norecurse nounwind optsize uwtable
define internal fastcc void @remlink(ptr noundef readonly %0) unnamed_addr #16 !PGOFuncName !88 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds %struct.localLink, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !87
  br i1 %3, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.localLink, ptr %2, i64 0, i32 1
  store ptr %5, ptr %7, align 8, !tbaa !87
  br label %8

8:                                                ; preds = %1, %6
  %9 = icmp eq ptr %5, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store ptr %2, ptr %5, align 8, !tbaa !85
  br label %11

11:                                               ; preds = %10, %8
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store volatile ptr %5, ptr getelementptr inbounds (%struct.localListBase, ptr @_membase, i64 0, i32 1), align 8, !tbaa !34
  br label %15

15:                                               ; preds = %14, %11
  %16 = load volatile ptr, ptr @_membase, align 8, !tbaa !40
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !85
  store volatile ptr %19, ptr @_membase, align 8, !tbaa !40
  br label %20

20:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare void @aligned_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nounwind optsize memory(readwrite, argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #16 = { nofree noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind optsize allocsize(0) }
attributes #23 = { nounwind optsize allocsize(0,1) }
attributes #24 = { nounwind }
attributes #25 = { cold optsize }
attributes #26 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 8}
!35 = !{!"localListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"mallocn_guarded_impl.c:check_memlist"}
!40 = !{!35, !36, i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"MemHead", !43, i64 0, !44, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !43, i64 48, !45, i64 52, !45, i64 54}
!43 = !{!"int", !37, i64 0}
!44 = !{!"long", !37, i64 0}
!45 = !{!"short", !37, i64 0}
!46 = !{!42, !43, i64 48}
!47 = !{!42, !36, i64 16}
!48 = !{!42, !36, i64 24}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = !{!42, !36, i64 40}
!53 = !{!42, !36, i64 32}
!54 = !{!36, !36, i64 0}
!55 = !{!42, !44, i64 8}
!56 = !{!42, !45, i64 52}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{!42, !45, i64 54}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{!44, !44, i64 0}
!61 = !{!62, !43, i64 0}
!62 = !{!"MemTail", !43, i64 0, !43, i64 4}
!63 = !{!43, !43, i64 0}
!64 = !{!"mallocn_guarded_impl.c:make_memhead_header"}
!65 = !{!"mallocn_guarded_impl.c:print_error"}
!66 = !{!37, !37, i64 0}
!67 = !{!68, !36, i64 0}
!68 = !{!"MemPrintBlock", !36, i64 0, !44, i64 8, !43, i64 16}
!69 = !{!68, !44, i64 8}
!70 = !{!68, !43, i64 16}
!71 = distinct !{!71, !50}
!72 = distinct !{!72, !50}
!73 = distinct !{!73, !50}
!74 = !{!"mallocn_guarded_impl.c:mem_lock_thread"}
!75 = !{!"mallocn_guarded_impl.c:compare_name"}
!76 = !{!"mallocn_guarded_impl.c:compare_len"}
!77 = !{!"mallocn_guarded_impl.c:mem_unlock_thread"}
!78 = distinct !{!78, !50}
!79 = !{!"mallocn_guarded_impl.c:MEM_guarded_printmemlist_internal"}
!80 = distinct !{!80, !50}
!81 = !{!"mallocn_guarded_impl.c:MemorY_ErroR"}
!82 = !{!"mallocn_guarded_impl.c:rem_memblock"}
!83 = !{!"branch_weights", i32 1, i32 4001}
!84 = !{!"mallocn_guarded_impl.c:addtail"}
!85 = !{!86, !36, i64 0}
!86 = !{!"localLink", !36, i64 0, !36, i64 8}
!87 = !{!86, !36, i64 8}
!88 = !{!"mallocn_guarded_impl.c:remlink"}
