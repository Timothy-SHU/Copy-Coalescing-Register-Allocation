; ModuleID = 'simulator/nederror.cc'
source_filename = "simulator/nederror.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.NEDErrorStore::Entry" = type { ptr, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.NEDErrorStore = type <{ %"class.std::vector", i8, [7 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl" }
%"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl" = type { %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data" }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_ = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE9constructIS1_JS1_EEEvPT_DpOT0_ = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE8allocateEmPKv = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"<%s>: %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"INTERNAL ERROR: %s:%d: %s: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"INTERNAL ERROR: %s:%d: <%s>: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"INTERNAL ERROR: %s:%d: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@switch.table._ZNK13NEDErrorStore13errorSeverityEi = private unnamed_addr constant [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6], align 8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = alloca %"struct.NEDErrorStore::Entry", align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  %7 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %6, i64 0, i32 2, i32 2
  store ptr %8, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %6, i64 0, i32 2, i32 1
  store i64 0, ptr %9, align 8, !tbaa !40
  store i8 0, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %6, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %6, i64 0, i32 3, i32 2
  store ptr %11, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %6, i64 0, i32 3, i32 1
  store i64 0, ptr %12, align 8, !tbaa !40
  store i8 0, ptr %11, align 8, !tbaa !43
  %13 = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %14 unwind label %40

14:                                               ; preds = %5
  %15 = load ptr, ptr %10, align 8, !tbaa !44
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, ptr %12, align 8, !tbaa !40
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %14
  call void @_ZdlPv(ptr noundef %15) #19
  br label %21

21:                                               ; preds = %20, %17
  %22 = load ptr, ptr %7, align 8, !tbaa !44
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, ptr %9, align 8, !tbaa !40
  %26 = icmp ult i64 %25, 16
  call void @llvm.assume(i1 %26)
  br label %28

27:                                               ; preds = %21
  call void @_ZdlPv(ptr noundef %22) #19
  br label %28

28:                                               ; preds = %24, %27
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #18
  %29 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %30, i64 -1
  %32 = icmp eq ptr %2, null
  %33 = icmp ne ptr %1, null
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  %36 = load ptr, ptr %1, align 8, !tbaa !46
  %37 = getelementptr inbounds ptr, ptr %36, i64 8
  %38 = load ptr, ptr %37, align 8
  %39 = call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %56

40:                                               ; preds = %5
  %41 = landingpad { ptr, i32 }
          cleanup
  %42 = load ptr, ptr %10, align 8, !tbaa !44
  %43 = icmp eq ptr %42, %11
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, ptr %12, align 8, !tbaa !40
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  br label %48

47:                                               ; preds = %40
  call void @_ZdlPv(ptr noundef %42) #19
  br label %48

48:                                               ; preds = %47, %44
  %49 = load ptr, ptr %7, align 8, !tbaa !44
  %50 = icmp eq ptr %49, %8
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, ptr %9, align 8, !tbaa !40
  %53 = icmp ult i64 %52, 16
  call void @llvm.assume(i1 %53)
  br label %55

54:                                               ; preds = %48
  call void @_ZdlPv(ptr noundef %49) #19
  br label %55

55:                                               ; preds = %51, %54
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #18
  resume { ptr, i32 } %41

56:                                               ; preds = %35, %28
  %57 = phi ptr [ %39, %35 ], [ %2, %28 ]
  store ptr %1, ptr %31, align 8, !tbaa !48
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, ptr @.str, ptr %57
  %60 = getelementptr %"struct.NEDErrorStore::Entry", ptr %30, i64 -1, i32 2
  %61 = getelementptr %"struct.NEDErrorStore::Entry", ptr %30, i64 -1, i32 2, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !40
  %63 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %59) #18
  %64 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %60, i64 noundef 0, i64 noundef %62, ptr noundef nonnull %59, i64 noundef %63)
  %65 = getelementptr %"struct.NEDErrorStore::Entry", ptr %30, i64 -1, i32 1
  store i32 %3, ptr %65, align 8, !tbaa !51
  %66 = getelementptr %"struct.NEDErrorStore::Entry", ptr %30, i64 -1, i32 3
  %67 = getelementptr %"struct.NEDErrorStore::Entry", ptr %30, i64 -1, i32 3, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !40
  %69 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #18
  %70 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %66, i64 noundef 0, i64 noundef %68, ptr noundef %4, i64 noundef %69)
  %71 = getelementptr inbounds %class.NEDErrorStore, ptr %0, i64 0, i32 1
  %72 = load i8, ptr %71, align 8, !tbaa !52, !range !59, !noundef !60
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %56
  %75 = icmp ult i32 %3, 3
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  %77 = zext nneg i32 %3 to i64
  %78 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZNK13NEDErrorStore13errorSeverityEi, i64 0, i64 %77
  %79 = load ptr, ptr %78, align 8
  br label %80

80:                                               ; preds = %74, %76
  %81 = phi ptr [ %79, %76 ], [ @.str.7, %74 ]
  %82 = load ptr, ptr @stderr, align 8, !tbaa !45
  br i1 %58, label %85, label %83

83:                                               ; preds = %80
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.1, ptr noundef nonnull %57, ptr noundef nonnull %81, ptr noundef %4) #20
  br label %94

85:                                               ; preds = %80
  br i1 %33, label %86, label %92

86:                                               ; preds = %85
  %87 = load ptr, ptr %1, align 8, !tbaa !46
  %88 = getelementptr inbounds ptr, ptr %87, i64 4
  %89 = load ptr, ptr %88, align 8
  %90 = call noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.2, ptr noundef %90, ptr noundef nonnull %81, ptr noundef %4) #20
  br label %94

92:                                               ; preds = %85
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.3, ptr noundef nonnull %81, ptr noundef %4) #20
  br label %94

94:                                               ; preds = %83, %92, %86, %56
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN13NEDErrorStore12severityNameEi(i32 noundef %0) local_unnamed_addr #3 align 2 !prof !34 {
  %2 = icmp ult i32 %0, 3
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZNK13NEDErrorStore13errorSeverityEi, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.7, %1 ]
  ret ptr %8
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NEDErrorStore8addErrorEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i32 @vsnprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef %2, ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 1023
  store i8 0, ptr %7, align 1, !tbaa !43
  call void @llvm.va_end(ptr %5)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i32 @vsnprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef %2, ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 1023
  store i8 0, ptr %7, align 1, !tbaa !43
  call void @llvm.va_end(ptr %5)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef null, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i32 @vsnprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef %2, ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 1023
  store i8 0, ptr %7, align 1, !tbaa !43
  call void @llvm.va_end(ptr %5)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef null, i32 noundef 1, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NEDErrorStore10addWarningEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call i32 @vsnprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef %2, ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 1023
  store i8 0, ptr %7, align 1, !tbaa !43
  call void @llvm.va_end(ptr %5)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef null, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NEDErrorStore3addEP10NEDElementiPKcz(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ...) local_unnamed_addr #0 align 2 !prof !34 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.va_start(ptr nonnull %6)
  %7 = call i32 @vsnprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef %3, ptr noundef nonnull %6) #18
  %8 = getelementptr inbounds [1024 x i8], ptr %5, i64 0, i64 1023
  store i8 0, ptr %8, align 1, !tbaa !43
  call void @llvm.va_end(ptr %6)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NEDErrorStore3addEPKciS1_z(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ...) local_unnamed_addr #0 align 2 !prof !34 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.va_start(ptr nonnull %6)
  %7 = call i32 @vsnprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef %3, ptr noundef nonnull %6) #18
  %8 = getelementptr inbounds [1024 x i8], ptr %5, i64 0, i64 1023
  store i8 0, ptr %8, align 1, !tbaa !43
  call void @llvm.va_end(ptr %6)
  call void @_ZN13NEDErrorStore5doAddEP10NEDElementPKciS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef null, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #18
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK13NEDErrorStore13containsErrorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0) local_unnamed_addr #6 align 2 !prof !61 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = load ptr, ptr %0, align 8, !tbaa !63
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 80
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %27, !prof !64

11:                                               ; preds = %1
  %12 = and i64 %8, 4294967295
  %13 = and i64 %8, 4294967295
  %14 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %27, label %17

17:                                               ; preds = %11, %21
  %18 = phi i64 [ %19, %21 ], [ 0, %11 ]
  %19 = add nuw nsw i64 %18, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %25, label %21, !prof !65, !llvm.loop !66

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %4, i64 %19, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !51
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %17, !llvm.loop !66

25:                                               ; preds = %17, %21
  %26 = icmp ult i64 %19, %12
  br label %27

27:                                               ; preds = %25, %11, %1
  %28 = phi i1 [ %10, %1 ], [ %10, %11 ], [ %26, %25 ]
  ret i1 %28
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK13NEDErrorStore13errorSeverityEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !34 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %0, align 8, !tbaa !63
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 80
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = zext nneg i32 %1 to i64
  %16 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 %15, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !51
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds [3 x ptr], ptr @switch.table._ZNK13NEDErrorStore13errorSeverityEi, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8
  br label %23

23:                                               ; preds = %14, %19, %2, %4
  %24 = phi ptr [ null, %4 ], [ null, %2 ], [ %22, %19 ], [ @.str.7, %14 ]
  ret ptr %24
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK13NEDErrorStore17errorSeverityCodeEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !34 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %0, align 8, !tbaa !63
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 80
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = zext nneg i32 %1 to i64
  %16 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 %15, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !51
  br label %18

18:                                               ; preds = %2, %4, %14
  %19 = phi i32 [ %17, %14 ], [ -1, %4 ], [ -1, %2 ]
  ret i32 %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK13NEDErrorStore13errorLocationEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !34 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %0, align 8, !tbaa !63
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 80
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = zext nneg i32 %1 to i64
  %16 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 %15, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  br label %18

18:                                               ; preds = %2, %4, %14
  %19 = phi ptr [ %17, %14 ], [ null, %4 ], [ null, %2 ]
  ret ptr %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK13NEDErrorStore12errorContextEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !34 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %0, align 8, !tbaa !63
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 80
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = zext nneg i32 %1 to i64
  %16 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  br label %18

18:                                               ; preds = %2, %4, %14
  %19 = phi ptr [ %17, %14 ], [ null, %4 ], [ null, %2 ]
  ret ptr %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK13NEDErrorStore9errorTextEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !34 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = load ptr, ptr %0, align 8, !tbaa !63
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 80
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = zext nneg i32 %1 to i64
  %16 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 %15, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  br label %18

18:                                               ; preds = %2, %4, %14
  %19 = phi ptr [ %17, %14 ], [ null, %4 ], [ null, %2 ]
  ret ptr %19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK13NEDErrorStore17findFirstErrorForEP10NEDElementi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(25) %0, ptr noundef readnone %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !34 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %0, align 8, !tbaa !63
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 80
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, %2
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = sext i32 %2 to i64
  %15 = shl i64 %10, 32
  %16 = ashr exact i64 %15, 32
  br label %17

17:                                               ; preds = %13, %22
  %18 = phi i64 [ %14, %13 ], [ %23, %22 ]
  %19 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %6, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = add nsw i64 %18, 1
  %24 = icmp eq i64 %23, %16
  br i1 %24, label %27, label %17, !llvm.loop !69

25:                                               ; preds = %17
  %26 = trunc i64 %18 to i32
  br label %27

27:                                               ; preds = %25, %22, %3
  %28 = phi i32 [ -1, %3 ], [ %26, %25 ], [ -1, %22 ]
  ret i32 %28
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ...) local_unnamed_addr #0 !prof !34 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.va_start(ptr nonnull %6)
  %7 = call i32 @vsnprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef %3, ptr noundef nonnull %6) #18
  %8 = getelementptr inbounds [1024 x i8], ptr %5, i64 0, i64 1023
  store i8 0, ptr %8, align 1, !tbaa !43
  call void @llvm.va_end(ptr %6)
  %9 = icmp eq ptr %2, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(112) %2)
  br label %15

15:                                               ; preds = %4, %10
  %16 = phi ptr [ %14, %10 ], [ null, %4 ]
  %17 = icmp eq ptr %16, null
  %18 = load ptr, ptr @stderr, align 8, !tbaa !45
  br i1 %17, label %21, label %19

19:                                               ; preds = %15
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %16, ptr noundef nonnull %5) #20
  br label %30

21:                                               ; preds = %15
  br i1 %9, label %28, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %2, align 8, !tbaa !46
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.9, ptr noundef %0, i32 noundef %1, ptr noundef %26, ptr noundef nonnull %5) #20
  br label %30

28:                                               ; preds = %21
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.10, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #20
  br label %30

30:                                               ; preds = %22, %28, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #8 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(80) %1) #18
  %9 = load ptr, ptr %3, align 8, !tbaa !62
  %10 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !62
  br label %12

11:                                               ; preds = %2
  tail call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr %3, align 8, !tbaa !45
  %14 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %13, i64 -1
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775760
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
  unreachable

12:                                               ; preds = %3
  %13 = sdiv exact i64 %9, 80
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 115292150460684697)
  %18 = select i1 %16, i64 115292150460684697, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = sdiv exact i64 %20, 80
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %26, i64 %21
  tail call void @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %27, ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  %28 = tail call noundef ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %6, ptr noundef %1, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %29 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %28, i64 1
  %30 = tail call noundef ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %29, ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %31 = icmp eq ptr %6, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %6) #19
  br label %33

33:                                               ; preds = %25, %32
  %34 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %26, ptr %0, align 8, !tbaa !63
  store ptr %30, ptr %4, align 8, !tbaa !62
  %35 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %26, i64 %18
  store ptr %35, ptr %34, align 8, !tbaa !70
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %4 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %1, i64 0, i32 2, i32 2
  store ptr %6, ptr %4, align 8, !tbaa !35
  %7 = load ptr, ptr %5, align 8, !tbaa !44
  %8 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %2, i64 0, i32 2, i32 2
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %2, i64 0, i32 2, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !40
  %13 = icmp ult i64 %12, 16
  tail call void @llvm.assume(i1 %13)
  %14 = add nuw nsw i64 %12, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(1) %8, i64 %14, i1 false)
  br label %17

15:                                               ; preds = %3
  store ptr %7, ptr %4, align 8, !tbaa !44
  %16 = load i64, ptr %8, align 8, !tbaa !43
  store i64 %16, ptr %6, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %15, %10
  %18 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %2, i64 0, i32 2, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !40
  %20 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %1, i64 0, i32 2, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !40
  store ptr %8, ptr %5, align 8, !tbaa !44
  store i64 0, ptr %18, align 8, !tbaa !40
  store i8 0, ptr %8, align 8, !tbaa !43
  %21 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %1, i64 0, i32 3
  %22 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %2, i64 0, i32 3
  %23 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %1, i64 0, i32 3, i32 2
  store ptr %23, ptr %21, align 8, !tbaa !35
  %24 = load ptr, ptr %22, align 8, !tbaa !44
  %25 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %2, i64 0, i32 3, i32 2
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %2, i64 0, i32 3, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !40
  %30 = icmp ult i64 %29, 16
  tail call void @llvm.assume(i1 %30)
  %31 = add nuw nsw i64 %29, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(1) %25, i64 %31, i1 false)
  br label %34

32:                                               ; preds = %17
  store ptr %24, ptr %21, align 8, !tbaa !44
  %33 = load i64, ptr %25, align 8, !tbaa !43
  store i64 %33, ptr %23, align 8, !tbaa !43
  br label %34

34:                                               ; preds = %27, %32
  %35 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %2, i64 0, i32 3, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !40
  %37 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %1, i64 0, i32 3, i32 1
  store i64 %36, ptr %37, align 8, !tbaa !40
  store ptr %25, ptr %22, align 8, !tbaa !44
  store i64 0, ptr %35, align 8, !tbaa !40
  store i8 0, ptr %25, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %32, label %6

6:                                                ; preds = %4, %28
  %7 = phi ptr [ %30, %28 ], [ %2, %4 ]
  %8 = phi ptr [ %29, %28 ], [ %0, %4 ]
  tail call void @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(80) %8) #18
  %9 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !44, !alias.scope !71, !noalias !74
  %11 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %8, i64 0, i32 3, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %8, i64 0, i32 3, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !40, !alias.scope !71, !noalias !74
  %16 = icmp ult i64 %15, 16
  tail call void @llvm.assume(i1 %16)
  br label %18

17:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %10) #19
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %8, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !44, !alias.scope !71, !noalias !74
  %21 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %8, i64 0, i32 2, i32 2
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %8, i64 0, i32 2, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !40, !alias.scope !71, !noalias !74
  %26 = icmp ult i64 %25, 16
  tail call void @llvm.assume(i1 %26)
  br label %28

27:                                               ; preds = %18
  tail call void @_ZdlPv(ptr noundef %20) #19
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %8, i64 1
  %30 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 1
  %31 = icmp eq ptr %29, %1
  br i1 %31, label %32, label %6, !llvm.loop !76

32:                                               ; preds = %28, %4
  %33 = phi ptr [ %2, %4 ], [ %30, %28 ]
  ret ptr %33
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN13NEDErrorStore5EntryEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %4 = icmp ugt i64 %1, 115292150460684697
  br i1 %4, label %5, label %9, !prof !77

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 230584300921369395
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

9:                                                ; preds = %3
  %10 = mul nuw i64 %1, 80
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #22
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { cold }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!41, !42, i64 8}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !42, i64 8, !38, i64 16}
!42 = !{!"long", !38, i64 0}
!43 = !{!38, !38, i64 0}
!44 = !{!41, !37, i64 0}
!45 = !{!37, !37, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !39, i64 0}
!48 = !{!49, !37, i64 0}
!49 = !{!"_ZTSN13NEDErrorStore5EntryE", !37, i64 0, !50, i64 8, !41, i64 16, !41, i64 48}
!50 = !{!"int", !38, i64 0}
!51 = !{!49, !50, i64 8}
!52 = !{!53, !58, i64 24}
!53 = !{!"_ZTS13NEDErrorStore", !54, i64 0, !58, i64 24}
!54 = !{!"_ZTSSt6vectorIN13NEDErrorStore5EntryESaIS1_EE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!58 = !{!"bool", !38, i64 0}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!"function_entry_count", i64 40}
!62 = !{!57, !37, i64 8}
!63 = !{!57, !37, i64 0}
!64 = !{!"branch_weights", i32 0, i32 1}
!65 = !{!"branch_weights", i32 1, i32 0}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = distinct !{!69, !67, !68}
!70 = !{!57, !37, i64 16}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZSt19__relocate_object_aIN13NEDErrorStore5EntryES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!73 = distinct !{!73, !"_ZSt19__relocate_object_aIN13NEDErrorStore5EntryES1_SaIS1_EEvPT_PT0_RT1_"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"_ZSt19__relocate_object_aIN13NEDErrorStore5EntryES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!76 = distinct !{!76, !67, !68}
!77 = !{!"branch_weights", i32 1, i32 2000}
