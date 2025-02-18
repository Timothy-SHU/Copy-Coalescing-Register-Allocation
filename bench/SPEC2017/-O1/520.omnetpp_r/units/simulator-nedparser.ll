; ModuleID = 'simulator/nedparser.cc'
source_filename = "simulator/nedparser.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.NEDParser = type { i8, i8, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.NEDErrorStore::Entry" = type { ptr, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_ = comdat any

@np = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [757 x i8] c"package ned;\0A@namespace(\22\22);\0A\0Achannel IdealChannel\0A{\0A    @class(cIdealChannel);\0A}\0A\0Achannel DelayChannel\0A{\0A    @class(cDelayChannel);\0A    bool disabled = default(false);\0A    double delay = default(0s) @unit(s); // propagation delay\0A}\0A\0Achannel DatarateChannel\0A{\0A    @class(cDatarateChannel);\0A    bool disabled = default(false);\0A    double delay = default(0s) @unit(s); // propagation delay\0A    double datarate = default(0bps) @unit(bps); // bits per second; 0=infinite\0A    double ber = default(0); // bit error rate (BER)\0A    double per = default(0); // packet error rate (PER)\0A}\0A\0Amoduleinterface IBidirectionalChannel\0A{\0A    gates:\0A        inout a;\0A        inout b;\0A}\0A\0Amoduleinterface IUnidirectionalChannel\0A{\0A    gates:\0A        input i;\0A        output o;\0A}\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"@expr@\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"cannot read %s\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"unable to allocate work memory\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8

@_ZN9NEDParserC1EP13NEDErrorStore = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN9NEDParserC2EP13NEDErrorStore
@_ZN9NEDParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN9NEDParserD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN9NEDParser22getBuiltInDeclarationsEv() local_unnamed_addr #0 align 2 !prof !60 {
  ret ptr @.str
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9NEDParserC2EP13NEDErrorStore(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !61 {
  %3 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  store ptr null, ptr %3, align 8, !tbaa !62
  store i8 1, ptr %0, align 8, !tbaa !68
  %4 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 1, !tbaa !69
  %5 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  store ptr %1, ptr %5, align 8, !tbaa !70
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN9NEDParserD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 !prof !61 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !71

5:                                                ; preds = %1
  tail call void @_ZN13NEDFileBufferD1Ev(ptr noundef nonnull align 8 dereferenceable(52) %3) #17
  tail call void @_ZdlPv(ptr noundef %3) #18
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare void @_ZN13NEDFileBufferD1Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN9NEDParser12parseNEDFileEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !72 {
  %4 = tail call noundef zeroext i1 @_ZN9NEDParser8loadFileEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2)
  br i1 %4, label %5, label %7, !prof !73

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN9NEDParser8parseNEDEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ null, %3 ]
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9NEDParser8loadFileEPKcS1_(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %4 = alloca [1000 x i8], align 16
  %5 = icmp eq ptr %2, null
  %6 = select i1 %5, ptr %1, ptr %2, !prof !73
  %7 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !73

10:                                               ; preds = %3
  tail call void @_ZN13NEDFileBufferD1Ev(ptr noundef nonnull align 8 dereferenceable(52) %8) #17
  tail call void @_ZdlPv(ptr noundef %8) #18
  br label %11

11:                                               ; preds = %10, %3
  %12 = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19
  invoke void @_ZN13NEDFileBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %12)
          to label %13 unwind label %24, !prof !73

13:                                               ; preds = %11
  store ptr %12, ptr %7, align 8, !tbaa !62
  %14 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 2
  store ptr %6, ptr %14, align 8, !tbaa !74
  %15 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  tail call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef %17) #17
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %4) #17
  %18 = load i8, ptr %1, align 1, !tbaa !77
  %19 = icmp eq i8 %18, 126
  br i1 %19, label %20, label %26, !prof !78

20:                                               ; preds = %13
  %21 = tail call ptr @getenv(ptr noundef nonnull @.str.5) #17
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %21, ptr noundef nonnull %22) #17
  br label %28

24:                                               ; preds = %11
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %12) #18
  resume { ptr, i32 } %25

26:                                               ; preds = %13
  %27 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1) #17
  br label %28

28:                                               ; preds = %26, %20
  %29 = load ptr, ptr %7, align 8, !tbaa !62
  %30 = call noundef zeroext i1 @_ZN13NEDFileBuffer8readFileEPKc(ptr noundef nonnull align 8 dereferenceable(52) %29, ptr noundef nonnull %4)
  br i1 %30, label %33, label %31, !prof !73

31:                                               ; preds = %28
  %32 = load ptr, ptr %15, align 8, !tbaa !70
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %32, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %6)
  br label %33

33:                                               ; preds = %28, %31
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %4) #17
  ret i1 %30
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN9NEDParser8parseNEDEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 align 2 !prof !61 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  tail call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4) #17
  %5 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call noundef ptr @_ZN13NEDFileBuffer11getFullTextEv(ptr noundef nonnull align 8 dereferenceable(52) %6)
  %8 = tail call noundef zeroext i1 @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc(ptr noundef %7)
  %9 = load ptr, ptr %5, align 8, !tbaa !62
  %10 = tail call noundef ptr @_ZN13NEDFileBuffer11getFullTextEv(ptr noundef nonnull align 8 dereferenceable(52) %9)
  br i1 %8, label %11, label %13, !prof !79

11:                                               ; preds = %1
  %12 = tail call noundef ptr @_Z11doParseNED2P9NEDParserPKc(ptr noundef nonnull %0, ptr noundef %10)
  br label %15

13:                                               ; preds = %1
  %14 = tail call noundef ptr @_Z11doParseNED1P9NEDParserPKc(ptr noundef nonnull %0, ptr noundef %10)
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  ret ptr %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN9NEDParser12parseNEDTextEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !60 {
  %4 = tail call noundef zeroext i1 @_ZN9NEDParser8loadTextEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2)
  br i1 %4, label %5, label %7, !prof !80

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN9NEDParser8parseNEDEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ null, %3 ]
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9NEDParser8loadTextEPKcS1_(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr @.str.3, ptr %2, !prof !81
  %6 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !80

9:                                                ; preds = %3
  tail call void @_ZN13NEDFileBufferD1Ev(ptr noundef nonnull align 8 dereferenceable(52) %7) #17
  tail call void @_ZdlPv(ptr noundef %7) #18
  br label %10

10:                                               ; preds = %9, %3
  %11 = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19
  invoke void @_ZN13NEDFileBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %11)
          to label %12 unwind label %21, !prof !80

12:                                               ; preds = %10
  store ptr %11, ptr %6, align 8, !tbaa !62
  %13 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 2
  store ptr %5, ptr %13, align 8, !tbaa !74
  %14 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  tail call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %16) #17
  %17 = load ptr, ptr %6, align 8, !tbaa !62
  %18 = tail call noundef zeroext i1 @_ZN13NEDFileBuffer7setDataEPKc(ptr noundef nonnull align 8 dereferenceable(52) %17, ptr noundef %1)
  br i1 %18, label %23, label %19, !prof !80

19:                                               ; preds = %12
  %20 = load ptr, ptr %14, align 8, !tbaa !70
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %20, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8)
  br label %23

21:                                               ; preds = %10
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %11) #18
  resume { ptr, i32 } %22

23:                                               ; preds = %12, %19
  ret i1 %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN9NEDParser18parseNEDExpressionEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  store i8 1, ptr %0, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %6, ptr %5, align 8, !tbaa !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %6, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false), !prof !85
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 6, ptr %7, align 8, !tbaa !86
  %8 = getelementptr inbounds i8, ptr %5, i64 22
  store i8 0, ptr %8, align 2, !tbaa !77
  %9 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2)
          to label %10 unwind label %71

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %11, ptr %4, align 8, !tbaa !83, !alias.scope !89
  %12 = load ptr, ptr %9, align 8, !tbaa !92
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !86
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  %19 = add nuw nsw i64 %17, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(1) %13, i64 %19, i1 false)
  br label %22

20:                                               ; preds = %10
  store ptr %12, ptr %4, align 8, !tbaa !92, !alias.scope !89
  %21 = load i64, ptr %13, align 8, !tbaa !77
  store i64 %21, ptr %11, align 8, !tbaa !77, !alias.scope !89
  br label %22

22:                                               ; preds = %15, %20
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !86
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %24, ptr %25, align 8, !tbaa !86, !alias.scope !89
  store ptr %13, ptr %9, align 8, !tbaa !92
  store i64 0, ptr %23, align 8, !tbaa !86
  store i8 0, ptr %13, align 8, !tbaa !77
  %26 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1)
          to label %27 unwind label %73

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %28, ptr %3, align 8, !tbaa !83, !alias.scope !93
  %29 = load ptr, ptr %26, align 8, !tbaa !92
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 2
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !86
  %35 = icmp ult i64 %34, 16
  call void @llvm.assume(i1 %35)
  %36 = add nuw nsw i64 %34, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %28, ptr noundef nonnull align 8 dereferenceable(1) %30, i64 %36, i1 false)
  br label %39

37:                                               ; preds = %27
  store ptr %29, ptr %3, align 8, !tbaa !92, !alias.scope !93
  %38 = load i64, ptr %30, align 8, !tbaa !77
  store i64 %38, ptr %28, align 8, !tbaa !77, !alias.scope !93
  br label %39

39:                                               ; preds = %32, %37
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !86
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %41, ptr %42, align 8, !tbaa !86, !alias.scope !93
  store ptr %30, ptr %26, align 8, !tbaa !92
  store i64 0, ptr %40, align 8, !tbaa !86
  store i8 0, ptr %30, align 8, !tbaa !77
  %43 = load ptr, ptr %4, align 8, !tbaa !92
  %44 = icmp eq ptr %43, %11
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i64, ptr %25, align 8, !tbaa !86
  %47 = icmp ult i64 %46, 16
  call void @llvm.assume(i1 %47)
  br label %49

48:                                               ; preds = %39
  call void @_ZdlPv(ptr noundef %43) #18
  br label %49

49:                                               ; preds = %45, %48
  %50 = load ptr, ptr %5, align 8, !tbaa !92
  %51 = icmp eq ptr %50, %6
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, ptr %7, align 8, !tbaa !86
  %54 = icmp ult i64 %53, 16
  call void @llvm.assume(i1 %54)
  br label %56

55:                                               ; preds = %49
  call void @_ZdlPv(ptr noundef %50) #18
  br label %56

56:                                               ; preds = %52, %55
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  %57 = load ptr, ptr %3, align 8, !tbaa !92
  %58 = invoke noundef zeroext i1 @_ZN9NEDParser8loadTextEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %57, ptr noundef nonnull @.str.3)
          to label %59 unwind label %90

59:                                               ; preds = %56
  br i1 %58, label %60, label %62

60:                                               ; preds = %59
  %61 = invoke noundef ptr @_ZN9NEDParser8parseNEDEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %62 unwind label %90

62:                                               ; preds = %59, %60
  %63 = phi ptr [ null, %59 ], [ %61, %60 ]
  %64 = load ptr, ptr %3, align 8, !tbaa !92
  %65 = icmp eq ptr %64, %28
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, ptr %42, align 8, !tbaa !86
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %70

69:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %64) #18
  br label %70

70:                                               ; preds = %66, %69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret ptr %63

71:                                               ; preds = %2
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %81

73:                                               ; preds = %22
  %74 = landingpad { ptr, i32 }
          cleanup
  %75 = load ptr, ptr %4, align 8, !tbaa !92
  %76 = icmp eq ptr %75, %11
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i64, ptr %25, align 8, !tbaa !86
  %79 = icmp ult i64 %78, 16
  call void @llvm.assume(i1 %79)
  br label %81

80:                                               ; preds = %73
  call void @_ZdlPv(ptr noundef %75) #18
  br label %81

81:                                               ; preds = %80, %77, %71
  %82 = phi { ptr, i32 } [ %72, %71 ], [ %74, %77 ], [ %74, %80 ]
  %83 = load ptr, ptr %5, align 8, !tbaa !92
  %84 = icmp eq ptr %83, %6
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i64, ptr %7, align 8, !tbaa !86
  %87 = icmp ult i64 %86, 16
  call void @llvm.assume(i1 %87)
  br label %89

88:                                               ; preds = %81
  call void @_ZdlPv(ptr noundef %83) #18
  br label %89

89:                                               ; preds = %88, %85
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  br label %98

90:                                               ; preds = %60, %56
  %91 = landingpad { ptr, i32 }
          cleanup
  %92 = load ptr, ptr %3, align 8, !tbaa !92
  %93 = icmp eq ptr %92, %28
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i64, ptr %42, align 8, !tbaa !86
  %96 = icmp ult i64 %95, 16
  call void @llvm.assume(i1 %96)
  br label %98

97:                                               ; preds = %90
  call void @_ZdlPv(ptr noundef %92) #18
  br label %98

98:                                               ; preds = %97, %94, %89
  %99 = phi { ptr, i32 } [ %82, %89 ], [ %91, %94 ], [ %91, %97 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %99
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN9NEDParser12parseMSGFileEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !82 {
  %4 = tail call noundef zeroext i1 @_ZN9NEDParser8loadFileEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2)
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  tail call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %8) #17
  %9 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = tail call noundef ptr @_ZN13NEDFileBuffer11getFullTextEv(ptr noundef nonnull align 8 dereferenceable(52) %10)
  %12 = tail call noundef ptr @_Z11doParseMSG2P9NEDParserPKc(ptr noundef nonnull %0, ptr noundef %11)
  br label %13

13:                                               ; preds = %3, %5
  %14 = phi ptr [ %12, %5 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN9NEDParser8parseMSGEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 align 2 !prof !82 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  tail call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4) #17
  %5 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call noundef ptr @_ZN13NEDFileBuffer11getFullTextEv(ptr noundef nonnull align 8 dereferenceable(52) %6)
  %8 = tail call noundef ptr @_Z11doParseMSG2P9NEDParserPKc(ptr noundef nonnull %0, ptr noundef %7)
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN9NEDParser12parseMSGTextEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !82 {
  %4 = tail call noundef zeroext i1 @_ZN9NEDParser8loadTextEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2)
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  tail call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %8) #17
  %9 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = tail call noundef ptr @_ZN13NEDFileBuffer11getFullTextEv(ptr noundef nonnull align 8 dereferenceable(52) %10)
  %12 = tail call noundef ptr @_Z11doParseMSG2P9NEDParserPKc(ptr noundef nonnull %0, ptr noundef %11)
  br label %13

13:                                               ; preds = %3, %5
  %14 = phi ptr [ %12, %5 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare void @_ZN13NEDFileBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

declare noundef zeroext i1 @_ZN13NEDFileBuffer8readFileEPKc(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef) local_unnamed_addr #8

declare void @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef, ...) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN13NEDFileBuffer7setDataEPKc(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc(ptr nocapture noundef readonly %0) local_unnamed_addr #12 align 2 !prof !61 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %3 = add i64 %2, 1
  %4 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %3) #19
  br label %5

5:                                                ; preds = %44, %1
  %6 = phi ptr [ %47, %44 ], [ %4, %1 ]
  %7 = phi i8 [ %45, %44 ], [ 1, %1 ]
  %8 = phi ptr [ %46, %44 ], [ %0, %1 ]
  br label %9

9:                                                ; preds = %37, %5
  %10 = phi ptr [ %8, %5 ], [ %38, %37 ]
  %11 = load i8, ptr %10, align 1, !tbaa !77
  switch i8 %11, label %39 [
    i8 0, label %48
    i8 47, label %12
    i8 34, label %24
  ], !prof !96

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %10, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !77
  %15 = icmp eq i8 %14, 47
  br i1 %15, label %16, label %23, !prof !97

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %10, i64 2
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi ptr [ %17, %16 ], [ %22, %21 ]
  %20 = load i8, ptr %19, align 1, !tbaa !77
  switch i8 %20, label %21 [
    i8 0, label %37
    i8 13, label %37
    i8 10, label %37
  ], !prof !98, !llvm.loop !99

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %19, i64 1
  br label %18, !llvm.loop !102

23:                                               ; preds = %12
  switch i8 %11, label %39 [
    i8 34, label %24
    i8 0, label %44
  ], !prof !103

24:                                               ; preds = %9, %23
  %25 = getelementptr inbounds i8, ptr %10, i64 1
  br label %26

26:                                               ; preds = %29, %24
  %27 = phi ptr [ %25, %24 ], [ %32, %29 ]
  %28 = load i8, ptr %27, align 1, !tbaa !77
  switch i8 %28, label %29 [
    i8 0, label %33
    i8 13, label %33
    i8 10, label %33
    i8 34, label %33
  ], !prof !104

29:                                               ; preds = %26
  %30 = icmp eq i8 %28, 92
  %31 = select i1 %30, i64 2, i64 1, !prof !105
  %32 = getelementptr inbounds i8, ptr %27, i64 %31
  br label %26, !llvm.loop !106

33:                                               ; preds = %26, %26, %26, %26
  %34 = icmp eq i8 %28, 34
  %35 = zext i1 %34 to i64
  %36 = getelementptr inbounds i8, ptr %27, i64 %35
  br label %37

37:                                               ; preds = %18, %18, %18, %33
  %38 = phi ptr [ %36, %33 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ]
  br label %9, !llvm.loop !99

39:                                               ; preds = %9, %23
  %40 = zext i8 %11 to i32
  %41 = tail call i32 @isspace(i32 noundef %40) #20
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i8 0, i8 %7, !prof !107
  br label %44

44:                                               ; preds = %23, %39
  %45 = phi i8 [ %43, %39 ], [ %7, %23 ]
  %46 = getelementptr inbounds i8, ptr %10, i64 1
  %47 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %11, ptr %6, align 1, !tbaa !77
  br label %5, !llvm.loop !99

48:                                               ; preds = %9
  store i8 0, ptr %6, align 1, !tbaa !77
  %49 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 123) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %57, !prof !71

51:                                               ; preds = %48
  %52 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 125) #20
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 64) #20
  %56 = icmp ne ptr %55, null
  br label %57

57:                                               ; preds = %54, %51, %48
  %58 = phi i1 [ true, %51 ], [ true, %48 ], [ %56, %54 ]
  br i1 %58, label %81, label %59, !prof !79

59:                                               ; preds = %57
  %60 = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.9) #20
  %61 = icmp ne ptr %60, null
  br i1 %61, label %62, label %81

62:                                               ; preds = %59, %77
  %63 = phi ptr [ %79, %77 ], [ %60, %59 ]
  %64 = getelementptr inbounds i8, ptr %63, i64 7
  %65 = load i8, ptr %64, align 1, !tbaa !77
  %66 = zext i8 %65 to i32
  %67 = tail call i32 @isspace(i32 noundef %66) #20
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %62
  %70 = icmp eq ptr %63, %4
  br i1 %70, label %81, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds i8, ptr %63, i64 -1
  %73 = load i8, ptr %72, align 1, !tbaa !77
  %74 = zext i8 %73 to i32
  %75 = tail call i32 @isspace(i32 noundef %74) #20
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %62, %71
  %78 = getelementptr inbounds i8, ptr %63, i64 1
  %79 = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(1) @.str.9) #20
  %80 = icmp ne ptr %79, null
  br i1 %80, label %62, label %81, !llvm.loop !108

81:                                               ; preds = %77, %71, %69, %59, %57
  %82 = phi i1 [ false, %57 ], [ %61, %59 ], [ true, %69 ], [ true, %71 ], [ %80, %77 ]
  tail call void @_ZdaPv(ptr noundef %4) #18
  %83 = and i8 %7, 1
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %87, !prof !79

85:                                               ; preds = %81
  %86 = or i1 %58, %82
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i1 [ true, %81 ], [ %86, %85 ]
  ret i1 %88
}

declare noundef ptr @_ZN13NEDFileBuffer11getFullTextEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #8

declare noundef ptr @_Z11doParseNED2P9NEDParserPKc(ptr noundef, ptr noundef) local_unnamed_addr #8

declare noundef ptr @_Z11doParseNED1P9NEDParserPKc(ptr noundef, ptr noundef) local_unnamed_addr #8

declare noundef ptr @_Z11doParseMSG2P9NEDParserPKc(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9NEDParser5errorEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #17
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %6 = getelementptr inbounds i8, ptr %4, i64 16
  %7 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !109
  %12 = getelementptr i8, ptr %11, i64 -24
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds i8, ptr %6, i64 %13
  %15 = getelementptr inbounds %"class.std::ios_base", ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !111
  %17 = or i32 %16, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %14, i32 noundef %17)
          to label %21 unwind label %42

18:                                               ; preds = %3
  %19 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #17
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %8, i64 noundef %19)
          to label %21 unwind label %42

21:                                               ; preds = %18, %10
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %23 unwind label %42

23:                                               ; preds = %21
  %24 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %2)
          to label %25 unwind label %42

25:                                               ; preds = %23
  %26 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(104) %28)
          to label %29 unwind label %44

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8, !tbaa !92
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %27, ptr noundef %30, ptr noundef nonnull @.str.11, ptr noundef %1)
          to label %31 unwind label %46

31:                                               ; preds = %29
  %32 = load ptr, ptr %5, align 8, !tbaa !92
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !86
  %38 = icmp ult i64 %37, 16
  call void @llvm.assume(i1 %38)
  br label %40

39:                                               ; preds = %31
  call void @_ZdlPv(ptr noundef %32) #18
  br label %40

40:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #17
  %41 = getelementptr inbounds i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %41) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #17
  ret void

42:                                               ; preds = %21, %18, %10, %23
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %58

44:                                               ; preds = %25
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %56

46:                                               ; preds = %29
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = load ptr, ptr %5, align 8, !tbaa !92
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !86
  %54 = icmp ult i64 %53, 16
  call void @llvm.assume(i1 %54)
  br label %56

55:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %48) #18
  br label %56

56:                                               ; preds = %55, %51, %44
  %57 = phi { ptr, i32 } [ %45, %44 ], [ %47, %51 ], [ %47, %55 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %58

58:                                               ; preds = %56, %42
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %43, %42 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #17
  %60 = getelementptr inbounds i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %60) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #17
  resume { ptr, i32 } %59
}

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %31, label %6, !prof !120

6:                                                ; preds = %2, %27
  %7 = phi ptr [ %28, %27 ], [ %1, %2 ]
  %8 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 3, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 3, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !86
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %17

16:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %9) #18
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 2, i32 2
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 2, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !86
  %25 = icmp ult i64 %24, 16
  tail call void @llvm.assume(i1 %25)
  br label %27

26:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #18
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 1
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %30, label %6, !llvm.loop !121

30:                                               ; preds = %27
  store ptr %1, ptr %3, align 8, !tbaa !119
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #12 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #2 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #5 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!59}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!35 = !{ptr @_ZN9NEDParserD2Ev, ptr @_ZN13NEDFileBufferD1Ev, i64 14}
!36 = !{ptr @_ZN9NEDParserD2Ev, ptr @_ZdlPv, i64 14}
!37 = !{ptr @_ZN9NEDParser12parseNEDFileEPKcS1_, ptr @_ZN9NEDParser8loadFileEPKcS1_, i64 13}
!38 = !{ptr @_ZN9NEDParser12parseNEDFileEPKcS1_, ptr @_ZN9NEDParser8parseNEDEv, i64 13}
!39 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @_Znwm, i64 13}
!40 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @_ZN13NEDFileBufferC1Ev, i64 13}
!41 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_, i64 13}
!42 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @strcpy, i64 13}
!43 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @_ZN13NEDFileBuffer8readFileEPKc, i64 13}
!44 = !{ptr @_ZN9NEDParser8parseNEDEv, ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_, i64 14}
!45 = !{ptr @_ZN9NEDParser8parseNEDEv, ptr @_ZN13NEDFileBuffer11getFullTextEv, i64 28}
!46 = !{ptr @_ZN9NEDParser8parseNEDEv, ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, i64 14}
!47 = !{ptr @_ZN9NEDParser8parseNEDEv, ptr @_Z11doParseNED2P9NEDParserPKc, i64 14}
!48 = !{ptr @_ZN9NEDParser12parseNEDTextEPKcS1_, ptr @_ZN9NEDParser8loadTextEPKcS1_, i64 1}
!49 = !{ptr @_ZN9NEDParser12parseNEDTextEPKcS1_, ptr @_ZN9NEDParser8parseNEDEv, i64 1}
!50 = !{ptr @_ZN9NEDParser8loadTextEPKcS1_, ptr @_Znwm, i64 1}
!51 = !{ptr @_ZN9NEDParser8loadTextEPKcS1_, ptr @_ZN13NEDFileBufferC1Ev, i64 1}
!52 = !{ptr @_ZN9NEDParser8loadTextEPKcS1_, ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_, i64 1}
!53 = !{ptr @_ZN9NEDParser8loadTextEPKcS1_, ptr @_ZN13NEDFileBuffer7setDataEPKc, i64 1}
!54 = !{ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, ptr @strlen, i64 14}
!55 = !{ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, ptr @_Znam, i64 14}
!56 = !{ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, ptr @isspace, i64 11419}
!57 = !{ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, ptr @strchr, i64 14}
!58 = !{ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, ptr @_ZdaPv, i64 14}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 1}
!61 = !{!"function_entry_count", i64 14}
!62 = !{!63, !67, i64 24}
!63 = !{!"_ZTS9NEDParser", !64, i64 0, !64, i64 1, !67, i64 8, !67, i64 16, !67, i64 24}
!64 = !{!"bool", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!"any pointer", !65, i64 0}
!68 = !{!63, !64, i64 0}
!69 = !{!63, !64, i64 1}
!70 = !{!63, !67, i64 16}
!71 = !{!"branch_weights", i32 0, i32 14}
!72 = !{!"function_entry_count", i64 13}
!73 = !{!"branch_weights", i32 13, i32 0}
!74 = !{!63, !67, i64 8}
!75 = !{!76, !67, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!77 = !{!65, !65, i64 0}
!78 = !{!"branch_weights", i32 0, i32 13}
!79 = !{!"branch_weights", i32 14, i32 0}
!80 = !{!"branch_weights", i32 1, i32 0}
!81 = !{!"branch_weights", i32 0, i32 1}
!82 = !{!"function_entry_count", i64 0}
!83 = !{!84, !67, i64 0}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !67, i64 0}
!85 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!86 = !{!87, !88, i64 8}
!87 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !84, i64 0, !88, i64 8, !65, i64 16}
!88 = !{!"long", !65, i64 0}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!91 = distinct !{!91, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!92 = !{!87, !67, i64 0}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!95 = distinct !{!95, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!96 = !{!"branch_weights", i32 130930254, i32 160524, i32 6753474, i32 538902}
!97 = !{!"branch_weights", i32 589, i32 0}
!98 = !{!"branch_weights", i32 23438, i32 0, i32 0, i32 589}
!99 = distinct !{!99, !100, !101}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !100, !101}
!103 = !{!"branch_weights", i32 11419, i32 47, i32 0}
!104 = !{!"branch_weights", i32 289, i32 0, i32 0, i32 0, i32 47}
!105 = !{!"branch_weights", i32 0, i32 289}
!106 = distinct !{!106, !100, !101}
!107 = !{!"branch_weights", i32 6392, i32 5027}
!108 = distinct !{!108, !100, !101}
!109 = !{!110, !110, i64 0}
!110 = !{!"vtable pointer", !66, i64 0}
!111 = !{!112, !114, i64 32}
!112 = !{!"_ZTSSt8ios_base", !88, i64 8, !88, i64 16, !113, i64 24, !114, i64 28, !114, i64 32, !67, i64 40, !115, i64 48, !65, i64 64, !116, i64 192, !67, i64 200, !117, i64 208}
!113 = !{!"_ZTSSt13_Ios_Fmtflags", !65, i64 0}
!114 = !{!"_ZTSSt12_Ios_Iostate", !65, i64 0}
!115 = !{!"_ZTSNSt8ios_base6_WordsE", !67, i64 0, !88, i64 8}
!116 = !{!"int", !65, i64 0}
!117 = !{!"_ZTSSt6locale", !67, i64 0}
!118 = !{!"function_entry_count", i64 28}
!119 = !{!76, !67, i64 8}
!120 = !{!"branch_weights", i32 28, i32 0}
!121 = distinct !{!121, !100, !101}
