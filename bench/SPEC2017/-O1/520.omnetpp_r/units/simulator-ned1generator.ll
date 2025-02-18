; ModuleID = 'simulator/ned1generator.cc'
source_filename = "simulator/ned1generator.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.NED1Generator = type { i32, ptr, ptr }
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
%class.ExtendsElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%class.ExpressionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.CommentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::allocator" = type { i8 }
%class.ImportElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.SimpleModuleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.CompoundModuleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.LiteralElement = type { %class.NEDElement, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ChannelElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.PropertyElement = type { %class.NEDElement, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ParamElement = type <{ %class.NEDElement, i32, i8, [3 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%class.GateElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", i32, i8, %"class.std::__cxx11::basic_string" }
%class.SubmoduleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ConnectionsElement = type <{ %class.NEDElement, i8, [7 x i8] }>
%class.ConnectionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string", i32, i32 }
%class.ChannelSpecElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.LoopElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.OperatorElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.FunctionElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.IdentElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZN13NED1Generator14increaseIndentEPKcE6spaces = internal global [70 x i8] c"                                                                     \00", align 16
@.str.1 = private unnamed_addr constant [46 x i8] c"NED2 feature unsupported in NED1: inheritance\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"network must extend a module type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"inner\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"banner\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"trailing\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"import\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"NED2 feature unsupported in NED1: properties\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"simulator/ned1generator.cc\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"should never come here\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"simple \00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"endsimple\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"NED2 feature unsupported in NED1: interfaces\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@_ZTISt9exception = external constant ptr
@.str.24 = private unnamed_addr constant [10 x i8] c"display: \00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"error converting display string: %s\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"endnetwork\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"endmodule\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"NED2 feature unsupported in NED1: channel interfaces\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"channel \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"endchannel\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"unexpected parameters section\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"parameters:\00", align 1
@.str.33 = private unnamed_addr constant [64 x i8] c"NED2 feature unsupported in NED1: assigment by pattern matching\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"unexpected element\00", align 1
@.str.35 = private unnamed_addr constant [65 x i8] c"NED2 feature unsupported in NED1: assignment by pattern matching\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"NED2 feature unsupported in NED1: patterns\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"ber\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"datarate\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.42 = private unnamed_addr constant [90 x i8] c"NED2 feature unsupported in NED1: channel parameters other than delay, error and datarate\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"should never get here\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"numeric const\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.51 = private unnamed_addr constant [70 x i8] c"NED2 feature unsupported in NED1: assignment in parameter declaration\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.55 = private unnamed_addr constant [73 x i8] c"NED2 feature unsupported in NED1: defining new parameter for a submodule\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"NED2 feature unsupported in NED1: 'parameter=default' syntax\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"input(\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.63 = private unnamed_addr constant [106 x i8] c"NED2 feature unsupported in NED1: @display may occur on submodules, connections and compound modules only\00", align 1
@.str.64 = private unnamed_addr constant [104 x i8] c"NED2 feature unsupported in NED1: @prompt may occur in submodule parameter assigments and networks only\00", align 1
@.str.65 = private unnamed_addr constant [73 x i8] c"NED2 feature unsupported in NED1: property (except @display and @prompt)\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"unexpected gates section\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"gates:\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"gatesizes:\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"in: \00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"out: \00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"NED2 feature unsupported in NED1: inout gate\00", align 1
@.str.72 = private unnamed_addr constant [52 x i8] c"NED2 feature unsupported in NED1: missing gate type\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"vector-size\00", align 1
@.str.75 = private unnamed_addr constant [71 x i8] c"NED2 feature unsupported in NED1: gate vector size in gate declaration\00", align 1
@.str.76 = private unnamed_addr constant [69 x i8] c"NED2 feature unsupported in NED1: declaring new gates for submodules\00", align 1
@.str.77 = private unnamed_addr constant [52 x i8] c"NED2 feature unsupported in NED1: missing gate size\00", align 1
@.str.78 = private unnamed_addr constant [45 x i8] c"NED2 feature unsupported in NED1: inner type\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"submodules:\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"like-param\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c" like \00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"connections nocheck:\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"connections:\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c" -->\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c" <--\00", align 1
@.str.86 = private unnamed_addr constant [53 x i8] c"NED2 feature unsupported in NED1: two-way connection\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c" <-->\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"wrong arrow-dir\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"src-module-index\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"src-gate-index\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"dest-module-index\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"dest-gate-index\00", align 1
@.str.93 = private unnamed_addr constant [55 x i8] c"NED2 feature unsupported in NED1: per-connection `for'\00", align 1
@.str.94 = private unnamed_addr constant [68 x i8] c"NED2 feature unsupported in NED1: more than one `if' per-connection\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c" display \00", align 1
@.str.96 = private unnamed_addr constant [49 x i8] c"NED2 feature unsupported in NED1: channel `like'\00", align 1
@.str.97 = private unnamed_addr constant [63 x i8] c"NED2 feature unsupported in NED1: channel spec with parameters\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"for \00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c" do\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"endfor;\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"from-value\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"to-value\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c" if \00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.109 = private unnamed_addr constant [56 x i8] c"NED2 feature unsupported in NED1: subgate of inout gate\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"?:\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.133 = private unnamed_addr constant [47 x i8] c"getOperatorPrecedence(): unknown operator '%s'\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c" ? \00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"module-index\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"isNetwork\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"locid\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.143 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.146 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ned1generator.cc, ptr null }]

@_ZN13NED1GeneratorC1EP13NEDErrorStore = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN13NED1GeneratorC2EP13NEDErrorStore
@_ZN13NED1GeneratorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13NED1GeneratorD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z12generateNED1RSoP10NEDElementP13NEDErrorStore(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %class.NED1Generator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %5 = getelementptr inbounds %class.NED1Generator, ptr %4, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !41
  store i32 4, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds %class.NED1Generator, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !48
  store ptr %0, ptr %5, align 8, !tbaa !41
  call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %1, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef null)
  store ptr null, ptr %5, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator8generateERSoP10NEDElementPKc(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !40 {
  %5 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !41
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false, ptr noundef null)
  store ptr null, ptr %5, align 8, !tbaa !41
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN13NED1GeneratorC2EP13NEDErrorStore(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #5 align 2 !prof !40 {
  %3 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !41
  store i32 4, ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !48
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN13NED1GeneratorD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !40 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN13NED1Generator13setIndentSizeEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !40 {
  store i32 %1, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = load ptr, ptr %1, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(112) %1)
  switch i32 %9, label %52 [
    i32 1, label %10
    i32 2, label %11
    i32 5, label %12
    i32 6, label %13
    i32 7, label %16
    i32 8, label %17
    i32 9, label %18
    i32 10, label %19
    i32 11, label %22
    i32 12, label %23
    i32 13, label %26
    i32 14, label %27
    i32 15, label %28
    i32 16, label %29
    i32 17, label %32
    i32 18, label %33
    i32 19, label %34
    i32 20, label %35
    i32 21, label %36
    i32 22, label %39
    i32 23, label %40
    i32 24, label %41
    i32 25, label %42
    i32 26, label %43
    i32 27, label %44
    i32 28, label %45
    i32 29, label %46
    i32 30, label %47
    i32 31, label %48
    i32 32, label %49
    i32 33, label %50
    i32 34, label %51
  ]

10:                                               ; preds = %5
  tail call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null)
  br label %52

11:                                               ; preds = %5
  tail call void @_ZN13NED1Generator9doNedfileEP14NedFileElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

12:                                               ; preds = %5
  tail call void @_ZN13NED1Generator8doImportEP13ImportElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

13:                                               ; preds = %5
  %14 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %15, ptr noundef nonnull %1, ptr noundef nonnull @.str.16)
  br label %52

16:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 315, ptr noundef nonnull %1, ptr noundef nonnull @.str.18)
  br label %52

17:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 320, ptr noundef nonnull %1, ptr noundef nonnull @.str.18)
  br label %52

18:                                               ; preds = %5
  tail call void @_ZN13NED1Generator14doSimpleModuleEP19SimpleModuleElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

19:                                               ; preds = %5
  %20 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.21)
  br label %52

22:                                               ; preds = %5
  tail call void @_ZN13NED1Generator16doCompoundModuleEP21CompoundModuleElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

23:                                               ; preds = %5
  %24 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %25, ptr noundef nonnull %1, ptr noundef nonnull @.str.28)
  br label %52

26:                                               ; preds = %5
  tail call void @_ZN13NED1Generator9doChannelEP14ChannelElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

27:                                               ; preds = %5
  tail call void @_ZN13NED1Generator12doParametersEP17ParametersElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

28:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 512, ptr noundef nonnull %1, ptr noundef nonnull @.str.43)
  br label %52

29:                                               ; preds = %5
  %30 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %31, ptr noundef nonnull %1, ptr noundef nonnull @.str.35)
  br label %52

32:                                               ; preds = %5
  tail call void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison)
  br label %52

33:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 619, ptr noundef nonnull %1, ptr noundef nonnull @.str.18)
  br label %52

34:                                               ; preds = %5
  tail call void @_ZN13NED1Generator7doGatesEP12GatesElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

35:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 673, ptr noundef nonnull %1, ptr noundef nonnull @.str.43)
  br label %52

36:                                               ; preds = %5
  %37 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %38, ptr noundef nonnull %1, ptr noundef nonnull @.str.78)
  br label %52

39:                                               ; preds = %5
  tail call void @_ZN13NED1Generator12doSubmodulesEP17SubmodulesElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

40:                                               ; preds = %5
  tail call void @_ZN13NED1Generator11doSubmoduleEP16SubmoduleElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

41:                                               ; preds = %5
  tail call void @_ZN13NED1Generator13doConnectionsEP18ConnectionsElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

42:                                               ; preds = %5
  tail call void @_ZN13NED1Generator12doConnectionEP17ConnectionElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

43:                                               ; preds = %5
  tail call void @_ZN13NED1Generator13doChannelSpecEP18ChannelSpecElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr noundef %4)
  br label %52

44:                                               ; preds = %5
  tail call void @_ZN13NED1Generator17doConnectionGroupEP22ConnectionGroupElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

45:                                               ; preds = %5
  tail call void @_ZN13NED1Generator6doLoopEP11LoopElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  br label %52

46:                                               ; preds = %5
  tail call void @_ZN13NED1Generator11doConditionEP16ConditionElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  br label %52

47:                                               ; preds = %5
  tail call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null)
  br label %52

48:                                               ; preds = %5
  tail call void @_ZN13NED1Generator10doOperatorEP15OperatorElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

49:                                               ; preds = %5
  tail call void @_ZN13NED1Generator10doFunctionEP15FunctionElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

50:                                               ; preds = %5
  tail call void @_ZN13NED1Generator7doIdentEP12IdentElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext poison, ptr poison)
  br label %52

51:                                               ; preds = %5
  tail call void @_ZN13NED1Generator9doLiteralEP14LiteralElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison, i1 zeroext poison, ptr poison)
  br label %52

52:                                               ; preds = %5, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %36, %35, %34, %33, %32, %29, %28, %27, %26, %23, %22, %19, %18, %17, %16, %13, %12, %11, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator8generateB5cxx11EP10NEDElementPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %5) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %6 = getelementptr inbounds i8, ptr %5, i64 16
  %7 = getelementptr inbounds %class.NED1Generator, ptr %1, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !41
  invoke void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false, ptr noundef null)
          to label %8 unwind label %12

8:                                                ; preds = %4
  store ptr null, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %5, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %9)
          to label %10 unwind label %12

10:                                               ; preds = %8
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #21
  %11 = getelementptr inbounds i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %11) #21
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %5) #21
  ret void

12:                                               ; preds = %8, %4
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #21
  %14 = getelementptr inbounds i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %14) #21
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %5) #21
  resume { ptr, i32 } %13
}

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull ptr @_ZN13NED1Generator14increaseIndentEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 align 2 !prof !40 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %4 = trunc i64 %3 to i32
  %5 = load i32, ptr %0, align 8, !tbaa !47
  %6 = add nsw i32 %5, %4
  %7 = icmp slt i32 %6, 70
  %8 = select i1 %7, i32 %6, i32 %4
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %10
  ret ptr %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN13NED1Generator14decreaseIndentEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef readnone %1) local_unnamed_addr #9 align 2 !prof !40 {
  %3 = load i32, ptr %0, align 8, !tbaa !47
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !40 {
  %5 = load ptr, ptr %1, align 8, !tbaa !49
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %11, %4
  ret void

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %21, %11 ], [ %8, %4 ]
  %13 = load ptr, ptr %1, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 24
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %17 = icmp eq ptr %12, %16
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %12, ptr noundef %2, i1 noundef zeroext %17, ptr noundef %3)
  %18 = load ptr, ptr %12, align 8, !tbaa !49
  %19 = getelementptr inbounds ptr, ptr %18, i64 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(112) %12)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %10, label %11, !llvm.loop !51
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = load ptr, ptr %1, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %18, %5
  %12 = phi ptr [ null, %5 ], [ %26, %18 ]
  %13 = load ptr, ptr %1, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 23
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %33

18:                                               ; preds = %5, %18
  %19 = phi ptr [ %30, %18 ], [ %9, %5 ]
  %20 = phi ptr [ %26, %18 ], [ null, %5 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(112) %19)
  %25 = icmp eq i32 %24, %2
  %26 = select i1 %25, ptr %19, ptr %20
  %27 = load ptr, ptr %19, align 8, !tbaa !49
  %28 = getelementptr inbounds ptr, ptr %27, i64 25
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(112) %19)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %11, label %18, !llvm.loop !54

32:                                               ; preds = %42, %11
  ret void

33:                                               ; preds = %11, %42
  %34 = phi ptr [ %46, %42 ], [ %16, %11 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = getelementptr inbounds ptr, ptr %35, i64 5
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i32 %37(ptr noundef nonnull align 8 dereferenceable(112) %34)
  %39 = icmp eq i32 %38, %2
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = icmp eq ptr %34, %12
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %34, ptr noundef %3, i1 noundef zeroext %41, ptr noundef %4)
  br label %42

42:                                               ; preds = %33, %40
  %43 = load ptr, ptr %34, align 8, !tbaa !49
  %44 = getelementptr inbounds ptr, ptr %43, i64 25
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(112) %34)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %32, label %33, !llvm.loop !55
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator25generateChildrenWithTypesEP10NEDElementPiPKcS4_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = load ptr, ptr %1, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %33, %5
  %12 = phi ptr [ null, %5 ], [ %34, %33 ]
  %13 = load ptr, ptr %1, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 23
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %41

18:                                               ; preds = %5, %33
  %19 = phi ptr [ %38, %33 ], [ %9, %5 ]
  %20 = phi ptr [ %34, %33 ], [ null, %5 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(112) %19)
  br label %25

25:                                               ; preds = %25, %18
  %26 = phi i64 [ %32, %25 ], [ 0, %18 ]
  %27 = getelementptr inbounds i32, ptr %2, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !56
  %29 = icmp ne i32 %28, 0
  %30 = icmp ne i32 %28, %24
  %31 = and i1 %30, %29
  %32 = add nuw i64 %26, 1
  br i1 %31, label %25, label %33, !llvm.loop !57

33:                                               ; preds = %25
  %34 = select i1 %29, ptr %19, ptr %20
  %35 = load ptr, ptr %19, align 8, !tbaa !49
  %36 = getelementptr inbounds ptr, ptr %35, i64 25
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(112) %19)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %11, label %18, !llvm.loop !58

40:                                               ; preds = %58, %11
  ret void

41:                                               ; preds = %11, %58
  %42 = phi ptr [ %62, %58 ], [ %16, %11 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !49
  %44 = getelementptr inbounds ptr, ptr %43, i64 5
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef i32 %45(ptr noundef nonnull align 8 dereferenceable(112) %42)
  br label %47

47:                                               ; preds = %47, %41
  %48 = phi i64 [ %54, %47 ], [ 0, %41 ]
  %49 = getelementptr inbounds i32, ptr %2, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !56
  %51 = icmp ne i32 %50, 0
  %52 = icmp ne i32 %50, %46
  %53 = and i1 %52, %51
  %54 = add nuw i64 %48, 1
  br i1 %53, label %47, label %55, !llvm.loop !57

55:                                               ; preds = %47
  br i1 %51, label %56, label %58

56:                                               ; preds = %55
  %57 = icmp eq ptr %42, %12
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %42, ptr noundef %3, i1 noundef zeroext %57, ptr noundef %4)
  br label %58

58:                                               ; preds = %55, %56
  %59 = load ptr, ptr %42, align 8, !tbaa !49
  %60 = getelementptr inbounds ptr, ptr %59, i64 25
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(112) %42)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %40, label %41, !llvm.loop !59
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator16printInheritanceEP10NEDElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture readnone %2) local_unnamed_addr #3 align 2 !prof !40 {
  %4 = tail call noundef zeroext i1 @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc(ptr noundef %1, ptr noundef nonnull @.str.140)
  %5 = load ptr, ptr %1, align 8, !tbaa !49
  br i1 %4, label %6, label %41

6:                                                ; preds = %3
  %7 = getelementptr inbounds ptr, ptr %5, i64 33
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 8)
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull %1, ptr noundef nonnull @.str.1)
  br label %14

14:                                               ; preds = %11, %6
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 30
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 7)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %22, ptr noundef nonnull %1, ptr noundef nonnull @.str.2)
  br label %55

23:                                               ; preds = %14
  %24 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @.str.3, i64 noundef 3)
  %27 = getelementptr inbounds %class.ExtendsElement, ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load ptr, ptr %25, align 8, !tbaa !49
  %32 = getelementptr i8, ptr %31, i64 -24
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds i8, ptr %25, i64 %33
  %35 = getelementptr inbounds %"class.std::ios_base", ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !64
  %37 = or i32 %36, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %34, i32 noundef %37)
  br label %55

38:                                               ; preds = %23
  %39 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #21
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull %28, i64 noundef %39)
  br label %55

41:                                               ; preds = %3
  %42 = getelementptr inbounds ptr, ptr %5, i64 30
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 7)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load ptr, ptr %1, align 8, !tbaa !49
  %48 = getelementptr inbounds ptr, ptr %47, i64 30
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 8)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46, %41
  %53 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %54, ptr noundef nonnull %1, ptr noundef nonnull @.str.1)
  br label %55

55:                                               ; preds = %38, %30, %20, %46, %52
  ret void
}

declare void @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !40 {
  %4 = load ptr, ptr %1, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 17
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i8, ptr %7, align 1, !tbaa !70
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %3, %9
  %13 = load ptr, ptr %1, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 30
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 30)
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %12, %30
  %19 = phi i1 [ %35, %30 ], [ %17, %12 ]
  %20 = phi ptr [ %34, %30 ], [ %16, %12 ]
  %21 = getelementptr inbounds %class.ExpressionElement, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i8, ptr %22, align 1, !tbaa !70
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %2) #22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %18, %24, %27
  %31 = load ptr, ptr %20, align 8, !tbaa !49
  %32 = getelementptr inbounds ptr, ptr %31, i64 36
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(144) %20)
  %35 = icmp ne ptr %34, null
  br i1 %35, label %18, label %36, !llvm.loop !71

36:                                               ; preds = %27, %30, %12, %9
  %37 = phi i1 [ true, %9 ], [ %17, %12 ], [ %35, %30 ], [ %19, %27 ]
  ret i1 %37
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !40 {
  %5 = load ptr, ptr %1, align 8, !tbaa !49
  %6 = getelementptr inbounds ptr, ptr %5, i64 17
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = load i8, ptr %8, align 1, !tbaa !70
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = load ptr, ptr %1, align 8, !tbaa !49
  %17 = getelementptr inbounds ptr, ptr %16, i64 17
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load ptr, ptr %15, align 8, !tbaa !49
  %23 = getelementptr i8, ptr %22, i64 -24
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds i8, ptr %15, i64 %24
  %26 = getelementptr inbounds %"class.std::ios_base", ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !64
  %28 = or i32 %27, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %25, i32 noundef %28)
  br label %56

29:                                               ; preds = %13
  %30 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #21
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %19, i64 noundef %30)
  br label %56

32:                                               ; preds = %4, %10
  %33 = load ptr, ptr %1, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 30
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 30)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %32, %50
  %39 = phi ptr [ %54, %50 ], [ %36, %32 ]
  %40 = getelementptr inbounds %class.ExpressionElement, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load i8, ptr %41, align 1, !tbaa !70
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) %2) #22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %39, ptr noundef %3, i1 noundef zeroext false, ptr noundef null)
  br label %50

50:                                               ; preds = %38, %43, %46, %49
  %51 = load ptr, ptr %39, align 8, !tbaa !49
  %52 = getelementptr inbounds ptr, ptr %51, i64 36
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(144) %39)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %38, !llvm.loop !72

56:                                               ; preds = %50, %32, %29, %21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 !prof !40 {
  %5 = tail call noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.4, i64 noundef 1)
  tail call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %10 = load ptr, ptr %7, align 8, !tbaa !41
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.5, i64 noundef 1)
  br label %12

12:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator19concatInnerCommentsB5cxx11EP10NEDElement(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %4, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !74
  store i8 0, ptr %4, align 8, !tbaa !70
  %6 = load ptr, ptr %2, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = invoke noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 3)
          to label %10 unwind label %15

10:                                               ; preds = %3, %28
  %11 = phi ptr [ %32, %28 ], [ %9, %3 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %17

13:                                               ; preds = %28
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %33

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %33

17:                                               ; preds = %10
  %18 = getelementptr inbounds %class.CommentElement, ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(6) @.str.6) #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %class.CommentElement, ptr %11, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !60
  %25 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %24)
          to label %28 unwind label %26

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %33

28:                                               ; preds = %22, %17
  %29 = load ptr, ptr %11, align 8, !tbaa !49
  %30 = getelementptr inbounds ptr, ptr %29, i64 31
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(112) %11, i32 noundef 3)
          to label %10 unwind label %13, !llvm.loop !75

33:                                               ; preds = %13, %15, %26
  %34 = phi { ptr, i32 } [ %27, %26 ], [ %14, %13 ], [ %16, %15 ]
  %35 = load ptr, ptr %0, align 8, !tbaa !60
  %36 = icmp eq ptr %35, %4
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, ptr %5, align 8, !tbaa !74
  %39 = icmp ult i64 %38, 16
  tail call void @llvm.assume(i1 %39)
  br label %41

40:                                               ; preds = %33
  tail call void @_ZdlPv(ptr noundef %35) #23
  br label %41

41:                                               ; preds = %37, %40
  resume { ptr, i32 } %34

42:                                               ; preds = %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 3, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.7)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %class.CommentElement, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8, ptr %12, align 1, !tbaa !70
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr null, ptr %12
  br label %18

18:                                               ; preds = %14, %4, %10
  %19 = phi ptr [ null, %4 ], [ null, %10 ], [ %17, %14 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @_ZN13NED1Generator19concatInnerCommentsB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  invoke fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %19, ptr noundef %3, ptr noundef nonnull @.str)
          to label %20 unwind label %51

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %21 = load ptr, ptr %5, align 8, !tbaa !60
  invoke fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %21, ptr noundef %3, ptr noundef nonnull @.str)
          to label %22 unwind label %53

22:                                               ; preds = %20
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %23 unwind label %55

23:                                               ; preds = %22
  %24 = load ptr, ptr %7, align 8, !tbaa !60
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !74
  %30 = icmp ult i64 %29, 16
  call void @llvm.assume(i1 %30)
  br label %32

31:                                               ; preds = %23
  call void @_ZdlPv(ptr noundef %24) #23
  br label %32

32:                                               ; preds = %27, %31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  %33 = load ptr, ptr %6, align 8, !tbaa !60
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !74
  %39 = icmp ult i64 %38, 16
  call void @llvm.assume(i1 %39)
  br label %41

40:                                               ; preds = %32
  call void @_ZdlPv(ptr noundef %33) #23
  br label %41

41:                                               ; preds = %36, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %42 = load ptr, ptr %5, align 8, !tbaa !60
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !74
  %48 = icmp ult i64 %47, 16
  call void @llvm.assume(i1 %48)
  br label %50

49:                                               ; preds = %41
  call void @_ZdlPv(ptr noundef %42) #23
  br label %50

50:                                               ; preds = %45, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  ret void

51:                                               ; preds = %18
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %75

53:                                               ; preds = %20
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %65

55:                                               ; preds = %22
  %56 = landingpad { ptr, i32 }
          cleanup
  %57 = load ptr, ptr %7, align 8, !tbaa !60
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !74
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %55
  call void @_ZdlPv(ptr noundef %57) #23
  br label %65

65:                                               ; preds = %64, %60, %53
  %66 = phi { ptr, i32 } [ %54, %53 ], [ %56, %60 ], [ %56, %64 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  %67 = load ptr, ptr %6, align 8, !tbaa !60
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !74
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  br label %75

74:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %67) #23
  br label %75

75:                                               ; preds = %74, %70, %51
  %76 = phi { ptr, i32 } [ %52, %51 ], [ %66, %70 ], [ %66, %74 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %77 = load ptr, ptr %5, align 8, !tbaa !60
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %79 = icmp eq ptr %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !74
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %75
  call void @_ZdlPv(ptr noundef %77) #23
  br label %85

85:                                               ; preds = %80, %84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %76
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 !prof !76 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !74
  %8 = add i64 %7, %5
  %9 = load ptr, ptr %1, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %14, !prof !77

12:                                               ; preds = %3
  %13 = icmp ult i64 %5, 16
  tail call void @llvm.assume(i1 %13)
  br label %14

14:                                               ; preds = %3, %12
  %15 = load i64, ptr %10, align 8
  %16 = select i1 %11, i64 15, i64 %15, !prof !77
  %17 = icmp ugt i64 %8, %16
  br i1 %17, label %18, label %45, !prof !78

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !tbaa !60
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = icmp ult i64 %7, 16
  tail call void @llvm.assume(i1 %23)
  br label %24

24:                                               ; preds = %18, %22
  %25 = load i64, ptr %20, align 8
  %26 = select i1 %21, i64 15, i64 %25
  %27 = icmp ugt i64 %8, %26
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %9, i64 noundef %5)
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %30, ptr %0, align 8, !tbaa !73
  %31 = load ptr, ptr %29, align 8, !tbaa !60
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 2
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !74
  %37 = icmp ult i64 %36, 16
  tail call void @llvm.assume(i1 %37)
  %38 = add nuw nsw i64 %36, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %30, ptr noundef nonnull align 8 dereferenceable(1) %32, i64 %38, i1 false)
  br label %41

39:                                               ; preds = %28
  store ptr %31, ptr %0, align 8, !tbaa !60
  %40 = load i64, ptr %32, align 8, !tbaa !70
  store i64 %40, ptr %30, align 8, !tbaa !70
  br label %41

41:                                               ; preds = %34, %39
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %29, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !74
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %43, ptr %44, align 8, !tbaa !74
  store ptr %32, ptr %29, align 8, !tbaa !60
  br label %67

45:                                               ; preds = %24, %14
  %46 = sub i64 4611686018427387903, %5
  %47 = icmp ult i64 %46, %7
  br i1 %47, label %48, label %49, !prof !78

48:                                               ; preds = %45
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #24
  unreachable

49:                                               ; preds = %45
  %50 = load ptr, ptr %2, align 8, !tbaa !60
  %51 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %50, i64 noundef %7)
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %52, ptr %0, align 8, !tbaa !73
  %53 = load ptr, ptr %51, align 8, !tbaa !60
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 2
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61, !prof !77

56:                                               ; preds = %49
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !74
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false), !prof !79
  br label %63

61:                                               ; preds = %49
  store ptr %53, ptr %0, align 8, !tbaa !60
  %62 = load i64, ptr %54, align 8, !tbaa !70
  store i64 %62, ptr %52, align 8, !tbaa !70
  br label %63

63:                                               ; preds = %56, %61
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !74
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %65, ptr %66, align 8, !tbaa !74
  store ptr %54, ptr %51, align 8, !tbaa !60
  br label %67

67:                                               ; preds = %41, %63
  %68 = phi ptr [ %42, %41 ], [ %64, %63 ]
  %69 = phi ptr [ %32, %41 ], [ %54, %63 ]
  store i64 0, ptr %68, align 8, !tbaa !74
  store i8 0, ptr %69, align 8, !tbaa !70
  ret void
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i8, ptr %1, align 1, !tbaa !70
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #21
  br label %233

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %17, ptr %0, align 8, !tbaa !73
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %18, align 8, !tbaa !74
  store i8 0, ptr %17, align 8, !tbaa !70
  %19 = load i8, ptr %1, align 1, !tbaa !70
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %233, label %21

21:                                               ; preds = %16
  %22 = icmp eq ptr %2, null
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  br label %33

33:                                               ; preds = %21, %218
  %34 = phi ptr [ %1, %21 ], [ %222, %218 ]
  %35 = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %34, i32 noundef 10) #22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #22
  %39 = getelementptr inbounds i8, ptr %34, i64 %38
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi ptr [ %35, %33 ], [ %39, %37 ]
  %42 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) @.str.142) #22
  %43 = icmp ne ptr %42, null
  %44 = icmp ult ptr %42, %41
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.9)
          to label %218 unwind label %48

48:                                               ; preds = %46
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %225

50:                                               ; preds = %40
  br i1 %22, label %51, label %118

51:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  store ptr %29, ptr %7, align 8, !tbaa !73
  store i64 0, ptr %30, align 8, !tbaa !74
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %34, ptr noundef nonnull %41)
          to label %52 unwind label %92

52:                                               ; preds = %51
  %53 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.9)
          to label %54 unwind label %94

54:                                               ; preds = %52
  store ptr %31, ptr %6, align 8, !tbaa !73, !alias.scope !80
  %55 = load ptr, ptr %53, align 8, !tbaa !60
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %53, i64 0, i32 2
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %53, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !74
  %61 = icmp ult i64 %60, 16
  call void @llvm.assume(i1 %61)
  %62 = add nuw nsw i64 %60, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, ptr noundef nonnull align 8 dereferenceable(1) %56, i64 %62, i1 false)
  br label %65

63:                                               ; preds = %54
  store ptr %55, ptr %6, align 8, !tbaa !60, !alias.scope !80
  %64 = load i64, ptr %56, align 8, !tbaa !70
  store i64 %64, ptr %31, align 8, !tbaa !70, !alias.scope !80
  br label %65

65:                                               ; preds = %58, %63
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %53, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !74
  store i64 %67, ptr %32, align 8, !tbaa !74, !alias.scope !80
  store ptr %56, ptr %53, align 8, !tbaa !60
  store i64 0, ptr %66, align 8, !tbaa !74
  store i8 0, ptr %56, align 8, !tbaa !70
  %68 = load i64, ptr %32, align 8, !tbaa !74
  %69 = load i64, ptr %18, align 8, !tbaa !74
  %70 = sub i64 4611686018427387903, %69
  %71 = icmp ult i64 %70, %68
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #24
          to label %73 unwind label %98

73:                                               ; preds = %72
  unreachable

74:                                               ; preds = %65
  %75 = load ptr, ptr %6, align 8, !tbaa !60
  %76 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %75, i64 noundef %68)
          to label %77 unwind label %96

77:                                               ; preds = %74
  %78 = load ptr, ptr %6, align 8, !tbaa !60
  %79 = icmp eq ptr %78, %31
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, ptr %32, align 8, !tbaa !74
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %84

83:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %78) #23
  br label %84

84:                                               ; preds = %80, %83
  %85 = load ptr, ptr %7, align 8, !tbaa !60
  %86 = icmp eq ptr %85, %29
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, ptr %30, align 8, !tbaa !74
  %89 = icmp ult i64 %88, 16
  call void @llvm.assume(i1 %89)
  br label %91

90:                                               ; preds = %84
  call void @_ZdlPv(ptr noundef %85) #23
  br label %91

91:                                               ; preds = %87, %90
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %218

92:                                               ; preds = %51
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %116

94:                                               ; preds = %52
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %108

96:                                               ; preds = %74
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %72
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi { ptr, i32 } [ %97, %96 ], [ %99, %98 ]
  %102 = load ptr, ptr %6, align 8, !tbaa !60
  %103 = icmp eq ptr %102, %31
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i64, ptr %32, align 8, !tbaa !74
  %106 = icmp ult i64 %105, 16
  call void @llvm.assume(i1 %106)
  br label %108

107:                                              ; preds = %100
  call void @_ZdlPv(ptr noundef %102) #23
  br label %108

108:                                              ; preds = %107, %104, %94
  %109 = phi { ptr, i32 } [ %95, %94 ], [ %101, %104 ], [ %101, %107 ]
  %110 = load ptr, ptr %7, align 8, !tbaa !60
  %111 = icmp eq ptr %110, %29
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i64, ptr %30, align 8, !tbaa !74
  %114 = icmp ult i64 %113, 16
  call void @llvm.assume(i1 %114)
  br label %116

115:                                              ; preds = %108
  call void @_ZdlPv(ptr noundef %110) #23
  br label %116

116:                                              ; preds = %115, %112, %92
  %117 = phi { ptr, i32 } [ %93, %92 ], [ %109, %112 ], [ %109, %115 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %225

118:                                              ; preds = %50
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #21
  store ptr %23, ptr %10, align 8, !tbaa !73
  store i64 0, ptr %24, align 8, !tbaa !74
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %42, ptr noundef nonnull %41)
          to label %119 unwind label %182

119:                                              ; preds = %118
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %120 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21, !noalias !83
  %121 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %2, i64 noundef %120)
          to label %122 unwind label %184

122:                                              ; preds = %119
  store ptr %25, ptr %9, align 8, !tbaa !73, !alias.scope !83
  %123 = load ptr, ptr %121, align 8, !tbaa !60
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %121, i64 0, i32 2
  %125 = icmp eq ptr %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %121, i64 0, i32 1
  %128 = load i64, ptr %127, align 8, !tbaa !74
  %129 = icmp ult i64 %128, 16
  call void @llvm.assume(i1 %129)
  %130 = add nuw nsw i64 %128, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %25, ptr noundef nonnull align 8 dereferenceable(1) %124, i64 %130, i1 false)
  br label %133

131:                                              ; preds = %122
  store ptr %123, ptr %9, align 8, !tbaa !60, !alias.scope !83
  %132 = load i64, ptr %124, align 8, !tbaa !70
  store i64 %132, ptr %25, align 8, !tbaa !70, !alias.scope !83
  br label %133

133:                                              ; preds = %126, %131
  %134 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %121, i64 0, i32 1
  %135 = load i64, ptr %134, align 8, !tbaa !74
  store i64 %135, ptr %26, align 8, !tbaa !74, !alias.scope !83
  store ptr %124, ptr %121, align 8, !tbaa !60
  store i64 0, ptr %134, align 8, !tbaa !74
  store i8 0, ptr %124, align 8, !tbaa !70
  %136 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.9)
          to label %137 unwind label %186

137:                                              ; preds = %133
  store ptr %27, ptr %8, align 8, !tbaa !73, !alias.scope !86
  %138 = load ptr, ptr %136, align 8, !tbaa !60
  %139 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %136, i64 0, i32 2
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %136, i64 0, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !74
  %144 = icmp ult i64 %143, 16
  call void @llvm.assume(i1 %144)
  %145 = add nuw nsw i64 %143, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(1) %139, i64 %145, i1 false)
  br label %148

146:                                              ; preds = %137
  store ptr %138, ptr %8, align 8, !tbaa !60, !alias.scope !86
  %147 = load i64, ptr %139, align 8, !tbaa !70
  store i64 %147, ptr %27, align 8, !tbaa !70, !alias.scope !86
  br label %148

148:                                              ; preds = %141, %146
  %149 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %136, i64 0, i32 1
  %150 = load i64, ptr %149, align 8, !tbaa !74
  store i64 %150, ptr %28, align 8, !tbaa !74, !alias.scope !86
  store ptr %139, ptr %136, align 8, !tbaa !60
  store i64 0, ptr %149, align 8, !tbaa !74
  store i8 0, ptr %139, align 8, !tbaa !70
  %151 = load i64, ptr %28, align 8, !tbaa !74
  %152 = load i64, ptr %18, align 8, !tbaa !74
  %153 = sub i64 4611686018427387903, %152
  %154 = icmp ult i64 %153, %151
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #24
          to label %156 unwind label %190

156:                                              ; preds = %155
  unreachable

157:                                              ; preds = %148
  %158 = load ptr, ptr %8, align 8, !tbaa !60
  %159 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %158, i64 noundef %151)
          to label %160 unwind label %188

160:                                              ; preds = %157
  %161 = load ptr, ptr %8, align 8, !tbaa !60
  %162 = icmp eq ptr %161, %27
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i64, ptr %28, align 8, !tbaa !74
  %165 = icmp ult i64 %164, 16
  call void @llvm.assume(i1 %165)
  br label %167

166:                                              ; preds = %160
  call void @_ZdlPv(ptr noundef %161) #23
  br label %167

167:                                              ; preds = %163, %166
  %168 = load ptr, ptr %9, align 8, !tbaa !60
  %169 = icmp eq ptr %168, %25
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i64, ptr %26, align 8, !tbaa !74
  %172 = icmp ult i64 %171, 16
  call void @llvm.assume(i1 %172)
  br label %174

173:                                              ; preds = %167
  call void @_ZdlPv(ptr noundef %168) #23
  br label %174

174:                                              ; preds = %170, %173
  %175 = load ptr, ptr %10, align 8, !tbaa !60
  %176 = icmp eq ptr %175, %23
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i64, ptr %24, align 8, !tbaa !74
  %179 = icmp ult i64 %178, 16
  call void @llvm.assume(i1 %179)
  br label %181

180:                                              ; preds = %174
  call void @_ZdlPv(ptr noundef %175) #23
  br label %181

181:                                              ; preds = %177, %180
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  br label %218

182:                                              ; preds = %118
  %183 = landingpad { ptr, i32 }
          cleanup
  br label %216

184:                                              ; preds = %119
  %185 = landingpad { ptr, i32 }
          cleanup
  br label %208

186:                                              ; preds = %133
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %200

188:                                              ; preds = %157
  %189 = landingpad { ptr, i32 }
          cleanup
  br label %192

190:                                              ; preds = %155
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi { ptr, i32 } [ %189, %188 ], [ %191, %190 ]
  %194 = load ptr, ptr %8, align 8, !tbaa !60
  %195 = icmp eq ptr %194, %27
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load i64, ptr %28, align 8, !tbaa !74
  %198 = icmp ult i64 %197, 16
  call void @llvm.assume(i1 %198)
  br label %200

199:                                              ; preds = %192
  call void @_ZdlPv(ptr noundef %194) #23
  br label %200

200:                                              ; preds = %199, %196, %186
  %201 = phi { ptr, i32 } [ %187, %186 ], [ %193, %196 ], [ %193, %199 ]
  %202 = load ptr, ptr %9, align 8, !tbaa !60
  %203 = icmp eq ptr %202, %25
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = load i64, ptr %26, align 8, !tbaa !74
  %206 = icmp ult i64 %205, 16
  call void @llvm.assume(i1 %206)
  br label %208

207:                                              ; preds = %200
  call void @_ZdlPv(ptr noundef %202) #23
  br label %208

208:                                              ; preds = %207, %204, %184
  %209 = phi { ptr, i32 } [ %185, %184 ], [ %201, %204 ], [ %201, %207 ]
  %210 = load ptr, ptr %10, align 8, !tbaa !60
  %211 = icmp eq ptr %210, %23
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i64, ptr %24, align 8, !tbaa !74
  %214 = icmp ult i64 %213, 16
  call void @llvm.assume(i1 %214)
  br label %216

215:                                              ; preds = %208
  call void @_ZdlPv(ptr noundef %210) #23
  br label %216

216:                                              ; preds = %215, %212, %182
  %217 = phi { ptr, i32 } [ %183, %182 ], [ %209, %212 ], [ %209, %215 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  br label %225

218:                                              ; preds = %46, %91, %181
  %219 = load i8, ptr %41, align 1, !tbaa !70
  %220 = icmp ne i8 %219, 0
  %221 = zext i1 %220 to i64
  %222 = getelementptr inbounds i8, ptr %41, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !70
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %233, label %33, !llvm.loop !89

225:                                              ; preds = %216, %116, %48
  %226 = phi { ptr, i32 } [ %49, %48 ], [ %217, %216 ], [ %117, %116 ]
  %227 = load ptr, ptr %0, align 8, !tbaa !60
  %228 = icmp eq ptr %227, %17
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i64, ptr %18, align 8, !tbaa !74
  %231 = icmp ult i64 %230, 16
  call void @llvm.assume(i1 %231)
  br label %234

232:                                              ; preds = %225
  call void @_ZdlPv(ptr noundef %227) #23
  br label %234

233:                                              ; preds = %218, %16, %15
  ret void

234:                                              ; preds = %232, %229
  resume { ptr, i32 } %226
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull %2) local_unnamed_addr #3 align 2 !prof !40 {
  %4 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 3, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.8)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.CommentElement, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %8, align 1, !tbaa !70
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr null, ptr %8
  br label %14

14:                                               ; preds = %10, %3, %6
  %15 = phi ptr [ null, %3 ], [ null, %6 ], [ %13, %10 ]
  tail call fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %15, ptr noundef null, ptr noundef nonnull @.str.9)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator21getInlineRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %1, ptr noundef nonnull %2) local_unnamed_addr #3 align 2 !prof !40 {
  %4 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 3, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.8)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.CommentElement, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %8, align 1, !tbaa !70
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr null, ptr %8
  br label %14

14:                                               ; preds = %10, %3, %6
  %15 = phi ptr [ null, %3 ], [ null, %6 ], [ %13, %10 ]
  tail call fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %15, ptr noundef null, ptr noundef nonnull @.str.10)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator18getTrailingCommentB5cxx11EP10NEDElement(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull %2) local_unnamed_addr #3 align 2 !prof !40 {
  %4 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 3, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.11)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.CommentElement, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %8, align 1, !tbaa !70
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr null, ptr %8
  br label %14

14:                                               ; preds = %10, %3, %6
  %15 = phi ptr [ null, %3 ], [ null, %6 ], [ %13, %10 ]
  tail call fastcc void @_ZL13formatCommentB5cxx11PKcS0_S0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %15, ptr noundef null, ptr noundef nonnull @.str.9)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator10doNedfilesEP12FilesElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  tail call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef null)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator9doNedfileEP14NedFileElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %9 = load ptr, ptr %6, align 8, !tbaa !60
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !74
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9, i64 noundef %11)
          to label %13 unwind label %22

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !60
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, ptr %10, align 8, !tbaa !74
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %13
  call void @_ZdlPv(ptr noundef %14) #23
  br label %21

21:                                               ; preds = %17, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null)
  ret void

22:                                               ; preds = %5
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load ptr, ptr %6, align 8, !tbaa !60
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, ptr %10, align 8, !tbaa !74
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %22
  call void @_ZdlPv(ptr noundef %24) #23
  br label %31

31:                                               ; preds = %27, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  resume { ptr, i32 } %23
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator8doImportEP13ImportElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = load ptr, ptr %1, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 26
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %1, align 8, !tbaa !49
  %15 = getelementptr inbounds ptr, ptr %14, i64 26
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(112) %17)
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %40, label %23

23:                                               ; preds = %13, %5
  %24 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = icmp eq ptr %2, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !49
  %29 = getelementptr i8, ptr %28, i64 -24
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds i8, ptr %25, i64 %30
  %32 = getelementptr inbounds %"class.std::ios_base", ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !64
  %34 = or i32 %33, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %31, i32 noundef %34)
  br label %38

35:                                               ; preds = %23
  %36 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull %2, i64 noundef %36)
  br label %38

38:                                               ; preds = %27, %35
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull @.str.12, i64 noundef 7)
  br label %40

40:                                               ; preds = %38, %13
  %41 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %2)
  %43 = load ptr, ptr %6, align 8, !tbaa !60
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !74
  %46 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %43, i64 noundef %45)
          to label %47 unwind label %118

47:                                               ; preds = %40
  %48 = load ptr, ptr %6, align 8, !tbaa !60
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, ptr %44, align 8, !tbaa !74
  %53 = icmp ult i64 %52, 16
  call void @llvm.assume(i1 %53)
  br label %55

54:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %48) #23
  br label %55

55:                                               ; preds = %51, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %56 = load ptr, ptr %1, align 8, !tbaa !49
  %57 = getelementptr inbounds ptr, ptr %56, i64 25
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %1, align 8, !tbaa !49
  %63 = getelementptr inbounds ptr, ptr %62, i64 25
  %64 = load ptr, ptr %63, align 8
  %65 = call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  %67 = getelementptr inbounds ptr, ptr %66, i64 5
  %68 = load ptr, ptr %67, align 8
  %69 = call noundef i32 %68(ptr noundef nonnull align 8 dereferenceable(112) %65)
  %70 = icmp eq i32 %69, 5
  %71 = select i1 %70, ptr @.str.15, ptr @.str.14
  br label %72

72:                                               ; preds = %61, %55
  %73 = phi ptr [ @.str.14, %55 ], [ %71, %61 ]
  %74 = load ptr, ptr %41, align 8, !tbaa !41
  %75 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %76 = trunc i64 %75 to i32
  %77 = load i32, ptr %0, align 8, !tbaa !47
  %78 = add nsw i32 %77, %76
  %79 = icmp slt i32 %78, 70
  %80 = select i1 %79, i32 %78, i32 %76
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 0, %81
  %83 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %82
  %84 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %83) #21
  %85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull %83, i64 noundef %84)
  %86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull @.str.13, i64 noundef 1)
  %87 = getelementptr inbounds %class.ImportElement, ptr %1, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !60
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %72
  %91 = load ptr, ptr %74, align 8, !tbaa !49
  %92 = getelementptr i8, ptr %91, i64 -24
  %93 = load i64, ptr %92, align 8
  %94 = getelementptr inbounds i8, ptr %74, i64 %93
  %95 = getelementptr inbounds %"class.std::ios_base", ptr %94, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !64
  %97 = or i32 %96, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %94, i32 noundef %97)
  br label %101

98:                                               ; preds = %72
  %99 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %88) #21
  %100 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull %88, i64 noundef %99)
  br label %101

101:                                              ; preds = %90, %98
  %102 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull @.str.13, i64 noundef 1)
  %103 = load ptr, ptr %41, align 8, !tbaa !41
  %104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef nonnull %73, i64 noundef 1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %105 = load ptr, ptr %7, align 8, !tbaa !60
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !74
  %108 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef %105, i64 noundef %107)
          to label %109 unwind label %128

109:                                              ; preds = %101
  %110 = load ptr, ptr %7, align 8, !tbaa !60
  %111 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i64, ptr %106, align 8, !tbaa !74
  %115 = icmp ult i64 %114, 16
  call void @llvm.assume(i1 %115)
  br label %117

116:                                              ; preds = %109
  call void @_ZdlPv(ptr noundef %110) #23
  br label %117

117:                                              ; preds = %113, %116
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  ret void

118:                                              ; preds = %40
  %119 = landingpad { ptr, i32 }
          cleanup
  %120 = load ptr, ptr %6, align 8, !tbaa !60
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %122 = icmp eq ptr %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i64, ptr %44, align 8, !tbaa !74
  %125 = icmp ult i64 %124, 16
  call void @llvm.assume(i1 %125)
  br label %127

126:                                              ; preds = %118
  call void @_ZdlPv(ptr noundef %120) #23
  br label %127

127:                                              ; preds = %123, %126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %138

128:                                              ; preds = %101
  %129 = landingpad { ptr, i32 }
          cleanup
  %130 = load ptr, ptr %7, align 8, !tbaa !60
  %131 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %132 = icmp eq ptr %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i64, ptr %106, align 8, !tbaa !74
  %135 = icmp ult i64 %134, 16
  call void @llvm.assume(i1 %135)
  br label %137

136:                                              ; preds = %128
  call void @_ZdlPv(ptr noundef %130) #23
  br label %137

137:                                              ; preds = %133, %136
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %138

138:                                              ; preds = %137, %127
  %139 = phi { ptr, i32 } [ %129, %137 ], [ %119, %127 ]
  resume { ptr, i32 } %139
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator14doPropertyDeclEP19PropertyDeclElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef %1, ptr noundef nonnull @.str.16)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator9doExtendsEP14ExtendsElementPKcbS3_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 315, ptr noundef %1, ptr noundef nonnull @.str.18)
  ret void
}

declare void @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator15doInterfaceNameEP20InterfaceNameElementPKcbS3_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 320, ptr noundef %1, ptr noundef nonnull @.str.18)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator14doSimpleModuleEP19SimpleModuleElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !74
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %11, i64 noundef %13)
          to label %15 unwind label %113

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 8, !tbaa !60
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, ptr %12, align 8, !tbaa !74
  %21 = icmp ult i64 %20, 16
  call void @llvm.assume(i1 %21)
  br label %23

22:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %16) #23
  br label %23

23:                                               ; preds = %19, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %24 = load ptr, ptr %9, align 8, !tbaa !41
  %25 = icmp eq ptr %2, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !49
  %28 = getelementptr i8, ptr %27, i64 -24
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds i8, ptr %24, i64 %29
  %31 = getelementptr inbounds %"class.std::ios_base", ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !64
  %33 = or i32 %32, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %30, i32 noundef %33)
  br label %37

34:                                               ; preds = %23
  %35 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull %2, i64 noundef %35)
  br label %37

37:                                               ; preds = %26, %34
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.19, i64 noundef 7)
  %39 = getelementptr inbounds %class.SimpleModuleElement, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !60
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load ptr, ptr %24, align 8, !tbaa !49
  %44 = getelementptr i8, ptr %43, i64 -24
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds i8, ptr %24, i64 %45
  %47 = getelementptr inbounds %"class.std::ios_base", ptr %46, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !64
  %49 = or i32 %48, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %46, i32 noundef %49)
  br label %53

50:                                               ; preds = %37
  %51 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #21
  %52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull %40, i64 noundef %51)
  br label %53

53:                                               ; preds = %42, %50
  call void @_ZN13NED1Generator16printInheritanceEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison)
  %54 = load ptr, ptr %9, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %55 = load ptr, ptr %7, align 8, !tbaa !60
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !74
  %58 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %55, i64 noundef %57)
          to label %59 unwind label %123

59:                                               ; preds = %53
  %60 = load ptr, ptr %7, align 8, !tbaa !60
  %61 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, ptr %56, align 8, !tbaa !74
  %65 = icmp ult i64 %64, 16
  call void @llvm.assume(i1 %65)
  br label %67

66:                                               ; preds = %59
  call void @_ZdlPv(ptr noundef %60) #23
  br label %67

67:                                               ; preds = %63, %66
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  %68 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %69 = trunc i64 %68 to i32
  %70 = load i32, ptr %0, align 8, !tbaa !47
  %71 = add nsw i32 %70, %69
  %72 = icmp slt i32 %71, 70
  %73 = select i1 %72, i32 %71, i32 %69
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 0, %74
  %76 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %75
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 14, ptr noundef nonnull %76, ptr noundef null)
  %77 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %78 = trunc i64 %77 to i32
  %79 = load i32, ptr %0, align 8, !tbaa !47
  %80 = add nsw i32 %79, %78
  %81 = icmp slt i32 %80, 70
  %82 = select i1 %81, i32 %80, i32 %78
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 0, %83
  %85 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %84
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 19, ptr noundef nonnull %85, ptr noundef null)
  %86 = load ptr, ptr %9, align 8, !tbaa !41
  br i1 %25, label %87, label %95

87:                                               ; preds = %67
  %88 = load ptr, ptr %86, align 8, !tbaa !49
  %89 = getelementptr i8, ptr %88, i64 -24
  %90 = load i64, ptr %89, align 8
  %91 = getelementptr inbounds i8, ptr %86, i64 %90
  %92 = getelementptr inbounds %"class.std::ios_base", ptr %91, i64 0, i32 5
  %93 = load i32, ptr %92, align 8, !tbaa !64
  %94 = or i32 %93, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %91, i32 noundef %94)
  br label %98

95:                                               ; preds = %67
  %96 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull %2, i64 noundef %96)
  br label %98

98:                                               ; preds = %87, %95
  %99 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull @.str.20, i64 noundef 9)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  call void @_ZN13NED1Generator18getTrailingCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %100 = load ptr, ptr %8, align 8, !tbaa !60
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !74
  %103 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef %100, i64 noundef %102)
          to label %104 unwind label %133

104:                                              ; preds = %98
  %105 = load ptr, ptr %8, align 8, !tbaa !60
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i64, ptr %101, align 8, !tbaa !74
  %110 = icmp ult i64 %109, 16
  call void @llvm.assume(i1 %110)
  br label %112

111:                                              ; preds = %104
  call void @_ZdlPv(ptr noundef %105) #23
  br label %112

112:                                              ; preds = %108, %111
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  ret void

113:                                              ; preds = %5
  %114 = landingpad { ptr, i32 }
          cleanup
  %115 = load ptr, ptr %6, align 8, !tbaa !60
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i64, ptr %12, align 8, !tbaa !74
  %120 = icmp ult i64 %119, 16
  call void @llvm.assume(i1 %120)
  br label %122

121:                                              ; preds = %113
  call void @_ZdlPv(ptr noundef %115) #23
  br label %122

122:                                              ; preds = %118, %121
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %143

123:                                              ; preds = %53
  %124 = landingpad { ptr, i32 }
          cleanup
  %125 = load ptr, ptr %7, align 8, !tbaa !60
  %126 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %127 = icmp eq ptr %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i64, ptr %56, align 8, !tbaa !74
  %130 = icmp ult i64 %129, 16
  call void @llvm.assume(i1 %130)
  br label %132

131:                                              ; preds = %123
  call void @_ZdlPv(ptr noundef %125) #23
  br label %132

132:                                              ; preds = %128, %131
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %143

133:                                              ; preds = %98
  %134 = landingpad { ptr, i32 }
          cleanup
  %135 = load ptr, ptr %8, align 8, !tbaa !60
  %136 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i64, ptr %101, align 8, !tbaa !74
  %140 = icmp ult i64 %139, 16
  call void @llvm.assume(i1 %140)
  br label %142

141:                                              ; preds = %133
  call void @_ZdlPv(ptr noundef %135) #23
  br label %142

142:                                              ; preds = %138, %141
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  br label %143

143:                                              ; preds = %142, %132, %122
  %144 = phi { ptr, i32 } [ %134, %142 ], [ %124, %132 ], [ %114, %122 ]
  resume { ptr, i32 } %144
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator17doModuleInterfaceEP22ModuleInterfaceElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef %1, ptr noundef nonnull @.str.21)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator16doCompoundModuleEP21CompoundModuleElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %19 = load ptr, ptr %6, align 8, !tbaa !60
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !74
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %19, i64 noundef %21)
          to label %23 unwind label %223

23:                                               ; preds = %5
  %24 = load ptr, ptr %6, align 8, !tbaa !60
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, ptr %20, align 8, !tbaa !74
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %23
  call void @_ZdlPv(ptr noundef %24) #23
  br label %31

31:                                               ; preds = %27, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %32 = load ptr, ptr %17, align 8, !tbaa !41
  %33 = icmp eq ptr %2, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !49
  %36 = getelementptr i8, ptr %35, i64 -24
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds i8, ptr %32, i64 %37
  %39 = getelementptr inbounds %"class.std::ios_base", ptr %38, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !64
  %41 = or i32 %40, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %38, i32 noundef %41)
  br label %45

42:                                               ; preds = %31
  %43 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %2, i64 noundef %43)
  br label %45

45:                                               ; preds = %34, %42
  %46 = call noundef zeroext i1 @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc(ptr noundef nonnull %1, ptr noundef nonnull @.str.140)
  %47 = select i1 %46, ptr @.str.22, ptr @.str.23
  %48 = select i1 %46, i64 7, i64 6
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %47, i64 noundef %48)
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull @.str.10, i64 noundef 1)
  %51 = getelementptr inbounds %class.CompoundModuleElement, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !60
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %45
  %55 = load ptr, ptr %32, align 8, !tbaa !49
  %56 = getelementptr i8, ptr %55, i64 -24
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds i8, ptr %32, i64 %57
  %59 = getelementptr inbounds %"class.std::ios_base", ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !64
  %61 = or i32 %60, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %58, i32 noundef %61)
  br label %65

62:                                               ; preds = %45
  %63 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %52) #21
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %52, i64 noundef %63)
  br label %65

65:                                               ; preds = %54, %62
  call void @_ZN13NED1Generator16printInheritanceEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison)
  %66 = load ptr, ptr %17, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %67 = load ptr, ptr %7, align 8, !tbaa !60
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !74
  %70 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %67, i64 noundef %69)
          to label %71 unwind label %235

71:                                               ; preds = %65
  %72 = load ptr, ptr %7, align 8, !tbaa !60
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, ptr %68, align 8, !tbaa !74
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  br label %79

78:                                               ; preds = %71
  call void @_ZdlPv(ptr noundef %72) #23
  br label %79

79:                                               ; preds = %75, %78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  %80 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %81 = trunc i64 %80 to i32
  %82 = load i32, ptr %0, align 8, !tbaa !47
  %83 = add nsw i32 %82, %81
  %84 = icmp slt i32 %83, 70
  %85 = select i1 %84, i32 %83, i32 %81
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 0, %86
  %88 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %87
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 14, ptr noundef nonnull %88, ptr noundef null)
  %89 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %90 = trunc i64 %89 to i32
  %91 = load i32, ptr %0, align 8, !tbaa !47
  %92 = add nsw i32 %91, %90
  %93 = icmp slt i32 %92, 70
  %94 = select i1 %93, i32 %92, i32 %90
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 0, %95
  %97 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %96
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 19, ptr noundef nonnull %97, ptr noundef null)
  %98 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %99 = trunc i64 %98 to i32
  %100 = load i32, ptr %0, align 8, !tbaa !47
  %101 = add nsw i32 %100, %99
  %102 = icmp slt i32 %101, 70
  %103 = select i1 %102, i32 %101, i32 %99
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 0, %104
  %106 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %105
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull %106, ptr noundef null)
  %107 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %108 = trunc i64 %107 to i32
  %109 = load i32, ptr %0, align 8, !tbaa !47
  %110 = add nsw i32 %109, %108
  %111 = icmp slt i32 %110, 70
  %112 = select i1 %111, i32 %110, i32 %108
  %113 = sext i32 %112 to i64
  %114 = sub nsw i64 0, %113
  %115 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %114
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 22, ptr noundef nonnull %115, ptr noundef null)
  %116 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %117 = trunc i64 %116 to i32
  %118 = load i32, ptr %0, align 8, !tbaa !47
  %119 = add nsw i32 %118, %117
  %120 = icmp slt i32 %119, 70
  %121 = select i1 %120, i32 %119, i32 %117
  %122 = sext i32 %121 to i64
  %123 = sub nsw i64 0, %122
  %124 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %123
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 24, ptr noundef nonnull %124, ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  call void @_ZN13NED1Generator18getDisplayStringOfB5cxx11EP10NEDElementRP15PropertyElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %126 = load i64, ptr %125, align 8, !tbaa !74
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %350, label %128

128:                                              ; preds = %79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #21
  %129 = load ptr, ptr %9, align 8, !tbaa !60
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %129)
          to label %130 unwind label %247

130:                                              ; preds = %128
  %131 = load ptr, ptr %11, align 8, !tbaa !60
  invoke void @_ZN17DisplayStringUtil28toOldBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %131)
          to label %132 unwind label %249

132:                                              ; preds = %130
  %133 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10) #21
  %134 = load ptr, ptr %10, align 8, !tbaa !60
  %135 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %139 = load i64, ptr %138, align 8, !tbaa !74
  %140 = icmp ult i64 %139, 16
  call void @llvm.assume(i1 %140)
  br label %142

141:                                              ; preds = %132
  call void @_ZdlPv(ptr noundef %134) #23
  br label %142

142:                                              ; preds = %137, %141
  %143 = load ptr, ptr %11, align 8, !tbaa !60
  %144 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %145 = icmp eq ptr %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !74
  %149 = icmp ult i64 %148, 16
  call void @llvm.assume(i1 %149)
  br label %151

150:                                              ; preds = %142
  call void @_ZdlPv(ptr noundef %143) #23
  br label %151

151:                                              ; preds = %146, %150
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  %152 = load ptr, ptr %17, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #21
  %153 = load ptr, ptr %8, align 8, !tbaa !90
  %154 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %155 = trunc i64 %154 to i32
  %156 = load i32, ptr %0, align 8, !tbaa !47
  %157 = add nsw i32 %156, %155
  %158 = icmp slt i32 %157, 70
  %159 = select i1 %158, i32 %157, i32 %155
  %160 = sext i32 %159 to i64
  %161 = sub nsw i64 0, %160
  %162 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %161
  invoke void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull align 8 poison, ptr noundef %153, ptr noundef nonnull %162)
          to label %163 unwind label %261

163:                                              ; preds = %151
  %164 = load ptr, ptr %12, align 8, !tbaa !60
  %165 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %166 = load i64, ptr %165, align 8, !tbaa !74
  %167 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %152, ptr noundef %164, i64 noundef %166)
          to label %168 unwind label %263

168:                                              ; preds = %163
  %169 = load ptr, ptr %12, align 8, !tbaa !60
  %170 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %171 = icmp eq ptr %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i64, ptr %165, align 8, !tbaa !74
  %174 = icmp ult i64 %173, 16
  call void @llvm.assume(i1 %174)
  br label %176

175:                                              ; preds = %168
  call void @_ZdlPv(ptr noundef %169) #23
  br label %176

176:                                              ; preds = %172, %175
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #21
  %177 = load ptr, ptr %17, align 8, !tbaa !41
  %178 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %179 = trunc i64 %178 to i32
  %180 = load i32, ptr %0, align 8, !tbaa !47
  %181 = add nsw i32 %180, %179
  %182 = icmp slt i32 %181, 70
  %183 = select i1 %182, i32 %181, i32 %179
  %184 = sext i32 %183 to i64
  %185 = sub nsw i64 0, %184
  %186 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %185
  %187 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %186) #21
  %188 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %177, ptr noundef nonnull %186, i64 noundef %187)
          to label %189 unwind label %274

189:                                              ; preds = %176
  %190 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %177, ptr noundef nonnull @.str.24, i64 noundef 9)
          to label %191 unwind label %274

191:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #21
  %192 = load ptr, ptr %9, align 8, !tbaa !60
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %192)
          to label %193 unwind label %276

193:                                              ; preds = %191
  %194 = load ptr, ptr %13, align 8, !tbaa !60
  %195 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %196 = load i64, ptr %195, align 8, !tbaa !74
  %197 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %177, ptr noundef %194, i64 noundef %196)
          to label %198 unwind label %278

198:                                              ; preds = %193
  %199 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %197, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %200 unwind label %278

200:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #21
  invoke void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull align 8 poison, ptr noundef %153)
          to label %201 unwind label %280

201:                                              ; preds = %200
  %202 = load ptr, ptr %14, align 8, !tbaa !60
  %203 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %204 = load i64, ptr %203, align 8, !tbaa !74
  %205 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %197, ptr noundef %202, i64 noundef %204)
          to label %206 unwind label %282

206:                                              ; preds = %201
  %207 = load ptr, ptr %14, align 8, !tbaa !60
  %208 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %209 = icmp eq ptr %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load i64, ptr %203, align 8, !tbaa !74
  %212 = icmp ult i64 %211, 16
  call void @llvm.assume(i1 %212)
  br label %214

213:                                              ; preds = %206
  call void @_ZdlPv(ptr noundef %207) #23
  br label %214

214:                                              ; preds = %210, %213
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #21
  %215 = load ptr, ptr %13, align 8, !tbaa !60
  %216 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %217 = icmp eq ptr %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load i64, ptr %195, align 8, !tbaa !74
  %220 = icmp ult i64 %219, 16
  call void @llvm.assume(i1 %220)
  br label %222

221:                                              ; preds = %214
  call void @_ZdlPv(ptr noundef %215) #23
  br label %222

222:                                              ; preds = %218, %221
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #21
  br label %350

223:                                              ; preds = %5
  %224 = landingpad { ptr, i32 }
          cleanup
  %225 = extractvalue { ptr, i32 } %224, 0
  %226 = extractvalue { ptr, i32 } %224, 1
  %227 = load ptr, ptr %6, align 8, !tbaa !60
  %228 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %229 = icmp eq ptr %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %223
  %231 = load i64, ptr %20, align 8, !tbaa !74
  %232 = icmp ult i64 %231, 16
  call void @llvm.assume(i1 %232)
  br label %234

233:                                              ; preds = %223
  call void @_ZdlPv(ptr noundef %227) #23
  br label %234

234:                                              ; preds = %230, %233
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %422

235:                                              ; preds = %65
  %236 = landingpad { ptr, i32 }
          cleanup
  %237 = extractvalue { ptr, i32 } %236, 0
  %238 = extractvalue { ptr, i32 } %236, 1
  %239 = load ptr, ptr %7, align 8, !tbaa !60
  %240 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %241 = icmp eq ptr %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %235
  %243 = load i64, ptr %68, align 8, !tbaa !74
  %244 = icmp ult i64 %243, 16
  call void @llvm.assume(i1 %244)
  br label %246

245:                                              ; preds = %235
  call void @_ZdlPv(ptr noundef %239) #23
  br label %246

246:                                              ; preds = %242, %245
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %422

247:                                              ; preds = %128
  %248 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %259

249:                                              ; preds = %130
  %250 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %251 = load ptr, ptr %11, align 8, !tbaa !60
  %252 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %253 = icmp eq ptr %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %249
  %255 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %256 = load i64, ptr %255, align 8, !tbaa !74
  %257 = icmp ult i64 %256, 16
  call void @llvm.assume(i1 %257)
  br label %259

258:                                              ; preds = %249
  call void @_ZdlPv(ptr noundef %251) #23
  br label %259

259:                                              ; preds = %258, %254, %247
  %260 = phi { ptr, i32 } [ %248, %247 ], [ %250, %254 ], [ %250, %258 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  br label %304

261:                                              ; preds = %151
  %262 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %272

263:                                              ; preds = %163
  %264 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %265 = load ptr, ptr %12, align 8, !tbaa !60
  %266 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %267 = icmp eq ptr %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = load i64, ptr %165, align 8, !tbaa !74
  %270 = icmp ult i64 %269, 16
  call void @llvm.assume(i1 %270)
  br label %272

271:                                              ; preds = %263
  call void @_ZdlPv(ptr noundef %265) #23
  br label %272

272:                                              ; preds = %271, %268, %261
  %273 = phi { ptr, i32 } [ %262, %261 ], [ %264, %268 ], [ %264, %271 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #21
  br label %304

274:                                              ; preds = %189, %176
  %275 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %304

276:                                              ; preds = %191
  %277 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %302

278:                                              ; preds = %198, %193
  %279 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %293

280:                                              ; preds = %200
  %281 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %291

282:                                              ; preds = %201
  %283 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %284 = load ptr, ptr %14, align 8, !tbaa !60
  %285 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %286 = icmp eq ptr %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i64, ptr %203, align 8, !tbaa !74
  %289 = icmp ult i64 %288, 16
  call void @llvm.assume(i1 %289)
  br label %291

290:                                              ; preds = %282
  call void @_ZdlPv(ptr noundef %284) #23
  br label %291

291:                                              ; preds = %290, %287, %280
  %292 = phi { ptr, i32 } [ %281, %280 ], [ %283, %287 ], [ %283, %290 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #21
  br label %293

293:                                              ; preds = %291, %278
  %294 = phi { ptr, i32 } [ %292, %291 ], [ %279, %278 ]
  %295 = load ptr, ptr %13, align 8, !tbaa !60
  %296 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %297 = icmp eq ptr %295, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %293
  %299 = load i64, ptr %195, align 8, !tbaa !74
  %300 = icmp ult i64 %299, 16
  call void @llvm.assume(i1 %300)
  br label %302

301:                                              ; preds = %293
  call void @_ZdlPv(ptr noundef %295) #23
  br label %302

302:                                              ; preds = %301, %298, %276
  %303 = phi { ptr, i32 } [ %277, %276 ], [ %294, %298 ], [ %294, %301 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #21
  br label %304

304:                                              ; preds = %302, %274, %272, %259
  %305 = phi { ptr, i32 } [ %303, %302 ], [ %275, %274 ], [ %273, %272 ], [ %260, %259 ]
  %306 = extractvalue { ptr, i32 } %305, 0
  %307 = extractvalue { ptr, i32 } %305, 1
  %308 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #21
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %411

310:                                              ; preds = %304
  %311 = call ptr @__cxa_begin_catch(ptr %306) #21
  %312 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #21
  %314 = load ptr, ptr %311, align 8, !tbaa !49
  %315 = getelementptr inbounds ptr, ptr %314, i64 2
  %316 = load ptr, ptr %315, align 8
  %317 = call noundef ptr %316(ptr noundef nonnull align 8 dereferenceable(8) %311) #21
  invoke void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull @.str.25, ptr noundef %317)
          to label %318 unwind label %330

318:                                              ; preds = %310
  %319 = load ptr, ptr %15, align 8, !tbaa !60
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %313, ptr noundef nonnull %1, ptr noundef %319)
          to label %320 unwind label %332

320:                                              ; preds = %318
  %321 = load ptr, ptr %15, align 8, !tbaa !60
  %322 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %323 = icmp eq ptr %321, %322
  br i1 %323, label %324, label %328

324:                                              ; preds = %320
  %325 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  %326 = load i64, ptr %325, align 8, !tbaa !74
  %327 = icmp ult i64 %326, 16
  call void @llvm.assume(i1 %327)
  br label %329

328:                                              ; preds = %320
  call void @_ZdlPv(ptr noundef %321) #23
  br label %329

329:                                              ; preds = %324, %328
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #21
  invoke void @__cxa_end_catch()
          to label %350 unwind label %344

330:                                              ; preds = %310
  %331 = landingpad { ptr, i32 }
          cleanup
  br label %342

332:                                              ; preds = %318
  %333 = landingpad { ptr, i32 }
          cleanup
  %334 = load ptr, ptr %15, align 8, !tbaa !60
  %335 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %336 = icmp eq ptr %334, %335
  br i1 %336, label %337, label %341

337:                                              ; preds = %332
  %338 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  %339 = load i64, ptr %338, align 8, !tbaa !74
  %340 = icmp ult i64 %339, 16
  call void @llvm.assume(i1 %340)
  br label %342

341:                                              ; preds = %332
  call void @_ZdlPv(ptr noundef %334) #23
  br label %342

342:                                              ; preds = %341, %337, %330
  %343 = phi { ptr, i32 } [ %331, %330 ], [ %333, %337 ], [ %333, %341 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #21
  invoke void @__cxa_end_catch()
          to label %346 unwind label %427

344:                                              ; preds = %329
  %345 = landingpad { ptr, i32 }
          cleanup
  br label %346

346:                                              ; preds = %342, %344
  %347 = phi { ptr, i32 } [ %345, %344 ], [ %343, %342 ]
  %348 = extractvalue { ptr, i32 } %347, 0
  %349 = extractvalue { ptr, i32 } %347, 1
  br label %411

350:                                              ; preds = %329, %222, %79
  %351 = load ptr, ptr %17, align 8, !tbaa !41
  br i1 %33, label %352, label %360

352:                                              ; preds = %350
  %353 = load ptr, ptr %351, align 8, !tbaa !49
  %354 = getelementptr i8, ptr %353, i64 -24
  %355 = load i64, ptr %354, align 8
  %356 = getelementptr inbounds i8, ptr %351, i64 %355
  %357 = getelementptr inbounds %"class.std::ios_base", ptr %356, i64 0, i32 5
  %358 = load i32, ptr %357, align 8, !tbaa !64
  %359 = or i32 %358, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %356, i32 noundef %359)
          to label %363 unwind label %392

360:                                              ; preds = %350
  %361 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %362 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %351, ptr noundef nonnull %2, i64 noundef %361)
          to label %363 unwind label %392

363:                                              ; preds = %360, %352
  %364 = invoke noundef zeroext i1 @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc(ptr noundef nonnull %1, ptr noundef nonnull @.str.140)
          to label %365 unwind label %392

365:                                              ; preds = %363
  %366 = select i1 %364, ptr @.str.26, ptr @.str.27
  %367 = select i1 %364, i64 10, i64 9
  %368 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %351, ptr noundef nonnull %366, i64 noundef %367)
          to label %369 unwind label %392

369:                                              ; preds = %365
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #21
  invoke void @_ZN13NED1Generator18getTrailingCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull align 8 poison, ptr noundef nonnull %1)
          to label %370 unwind label %396

370:                                              ; preds = %369
  %371 = load ptr, ptr %16, align 8, !tbaa !60
  %372 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  %373 = load i64, ptr %372, align 8, !tbaa !74
  %374 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %351, ptr noundef %371, i64 noundef %373)
          to label %375 unwind label %398

375:                                              ; preds = %370
  %376 = load ptr, ptr %16, align 8, !tbaa !60
  %377 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  %378 = icmp eq ptr %376, %377
  br i1 %378, label %379, label %382

379:                                              ; preds = %375
  %380 = load i64, ptr %372, align 8, !tbaa !74
  %381 = icmp ult i64 %380, 16
  call void @llvm.assume(i1 %381)
  br label %383

382:                                              ; preds = %375
  call void @_ZdlPv(ptr noundef %376) #23
  br label %383

383:                                              ; preds = %379, %382
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #21
  %384 = load ptr, ptr %9, align 8, !tbaa !60
  %385 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %386 = icmp eq ptr %384, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %383
  %388 = load i64, ptr %125, align 8, !tbaa !74
  %389 = icmp ult i64 %388, 16
  call void @llvm.assume(i1 %389)
  br label %391

390:                                              ; preds = %383
  call void @_ZdlPv(ptr noundef %384) #23
  br label %391

391:                                              ; preds = %387, %390
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  ret void

392:                                              ; preds = %365, %363, %360, %352
  %393 = landingpad { ptr, i32 }
          cleanup
  %394 = extractvalue { ptr, i32 } %393, 0
  %395 = extractvalue { ptr, i32 } %393, 1
  br label %411

396:                                              ; preds = %369
  %397 = landingpad { ptr, i32 }
          cleanup
  br label %407

398:                                              ; preds = %370
  %399 = landingpad { ptr, i32 }
          cleanup
  %400 = load ptr, ptr %16, align 8, !tbaa !60
  %401 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  %402 = icmp eq ptr %400, %401
  br i1 %402, label %403, label %406

403:                                              ; preds = %398
  %404 = load i64, ptr %372, align 8, !tbaa !74
  %405 = icmp ult i64 %404, 16
  call void @llvm.assume(i1 %405)
  br label %407

406:                                              ; preds = %398
  call void @_ZdlPv(ptr noundef %400) #23
  br label %407

407:                                              ; preds = %406, %403, %396
  %408 = phi { ptr, i32 } [ %397, %396 ], [ %399, %403 ], [ %399, %406 ]
  %409 = extractvalue { ptr, i32 } %408, 0
  %410 = extractvalue { ptr, i32 } %408, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #21
  br label %411

411:                                              ; preds = %407, %392, %346, %304
  %412 = phi i32 [ %410, %407 ], [ %395, %392 ], [ %349, %346 ], [ %307, %304 ]
  %413 = phi ptr [ %409, %407 ], [ %394, %392 ], [ %348, %346 ], [ %306, %304 ]
  %414 = load ptr, ptr %9, align 8, !tbaa !60
  %415 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %416 = icmp eq ptr %414, %415
  br i1 %416, label %417, label %420

417:                                              ; preds = %411
  %418 = load i64, ptr %125, align 8, !tbaa !74
  %419 = icmp ult i64 %418, 16
  call void @llvm.assume(i1 %419)
  br label %421

420:                                              ; preds = %411
  call void @_ZdlPv(ptr noundef %414) #23
  br label %421

421:                                              ; preds = %417, %420
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %422

422:                                              ; preds = %421, %246, %234
  %423 = phi i32 [ %412, %421 ], [ %238, %246 ], [ %226, %234 ]
  %424 = phi ptr [ %413, %421 ], [ %237, %246 ], [ %225, %234 ]
  %425 = insertvalue { ptr, i32 } poison, ptr %424, 0
  %426 = insertvalue { ptr, i32 } %425, i32 %423, 1
  resume { ptr, i32 } %426

427:                                              ; preds = %342
  %428 = landingpad { ptr, i32 }
          catch ptr null
  %429 = extractvalue { ptr, i32 } %428, 0
  call void @__clang_call_terminate(ptr %429) #25
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator18getDisplayStringOfB5cxx11EP10NEDElementRP15PropertyElement(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef %2, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %5 = alloca %"class.std::allocator", align 1
  store ptr null, ptr %3, align 8, !tbaa !90
  %6 = load ptr, ptr %2, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 14)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %12, ptr %0, align 8, !tbaa !73
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %13, align 8, !tbaa !74
  store i8 0, ptr %12, align 8, !tbaa !70
  br label %53

14:                                               ; preds = %4
  %15 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %9, i32 noundef 17, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.62)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %18, ptr %0, align 8, !tbaa !73
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %19, align 8, !tbaa !74
  store i8 0, ptr %18, align 8, !tbaa !70
  br label %53

20:                                               ; preds = %14
  %21 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %15, i32 noundef 18, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %24, ptr %0, align 8, !tbaa !73
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %25, align 8, !tbaa !74
  store i8 0, ptr %24, align 8, !tbaa !70
  br label %53

26:                                               ; preds = %20
  %27 = load ptr, ptr %21, align 8, !tbaa !49
  %28 = getelementptr inbounds ptr, ptr %27, i64 30
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(112) %21, i32 noundef 34)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %33, ptr %0, align 8, !tbaa !73
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %34, align 8, !tbaa !74
  store i8 0, ptr %33, align 8, !tbaa !70
  br label %53

35:                                               ; preds = %26
  store ptr %15, ptr %3, align 8, !tbaa !90
  %36 = getelementptr inbounds %class.LiteralElement, ptr %30, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i8, ptr %37, align 1, !tbaa !70
  %41 = icmp eq i8 %40, 0
  br label %42

42:                                               ; preds = %35, %39
  %43 = phi i1 [ true, %35 ], [ %41, %39 ]
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %37, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %48 unwind label %50

45:                                               ; preds = %42
  %46 = getelementptr inbounds %class.LiteralElement, ptr %30, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %47)
          to label %48 unwind label %50

48:                                               ; preds = %45, %44
  br i1 %43, label %53, label %49

49:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #21
  br label %53

50:                                               ; preds = %45, %44
  %51 = landingpad { ptr, i32 }
          cleanup
  br i1 %43, label %54, label %52

52:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #21
  br label %54

53:                                               ; preds = %32, %23, %17, %11, %48, %49
  ret void

54:                                               ; preds = %52, %50
  resume { ptr, i32 } %51
}

declare void @_ZN17DisplayStringUtil28toOldBackgroundDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11 align 2

declare void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #12

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #0

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat !prof !40 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator18doChannelInterfaceEP23ChannelInterfaceElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef %1, ptr noundef nonnull @.str.28)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator9doChannelEP14ChannelElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !74
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %11, i64 noundef %13)
          to label %15 unwind label %105

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 8, !tbaa !60
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, ptr %12, align 8, !tbaa !74
  %21 = icmp ult i64 %20, 16
  call void @llvm.assume(i1 %21)
  br label %23

22:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %16) #23
  br label %23

23:                                               ; preds = %19, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %24 = load ptr, ptr %9, align 8, !tbaa !41
  %25 = icmp eq ptr %2, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !49
  %28 = getelementptr i8, ptr %27, i64 -24
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds i8, ptr %24, i64 %29
  %31 = getelementptr inbounds %"class.std::ios_base", ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !64
  %33 = or i32 %32, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %30, i32 noundef %33)
  br label %37

34:                                               ; preds = %23
  %35 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull %2, i64 noundef %35)
  br label %37

37:                                               ; preds = %26, %34
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.29, i64 noundef 8)
  %39 = load ptr, ptr %9, align 8, !tbaa !41
  %40 = getelementptr inbounds %class.ChannelElement, ptr %1, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load ptr, ptr %39, align 8, !tbaa !49
  %45 = getelementptr i8, ptr %44, i64 -24
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds i8, ptr %39, i64 %46
  %48 = getelementptr inbounds %"class.std::ios_base", ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !64
  %50 = or i32 %49, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %47, i32 noundef %50)
  br label %54

51:                                               ; preds = %37
  %52 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #21
  %53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull %41, i64 noundef %52)
  br label %54

54:                                               ; preds = %43, %51
  call void @_ZN13NED1Generator16printInheritanceEP10NEDElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr poison)
  %55 = load ptr, ptr %9, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %56 = load ptr, ptr %7, align 8, !tbaa !60
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !74
  %59 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %56, i64 noundef %58)
          to label %60 unwind label %115

60:                                               ; preds = %54
  %61 = load ptr, ptr %7, align 8, !tbaa !60
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i64, ptr %57, align 8, !tbaa !74
  %66 = icmp ult i64 %65, 16
  call void @llvm.assume(i1 %66)
  br label %68

67:                                               ; preds = %60
  call void @_ZdlPv(ptr noundef %61) #23
  br label %68

68:                                               ; preds = %64, %67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  %69 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %70 = trunc i64 %69 to i32
  %71 = load i32, ptr %0, align 8, !tbaa !47
  %72 = add nsw i32 %71, %70
  %73 = icmp slt i32 %72, 70
  %74 = select i1 %73, i32 %72, i32 %70
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 0, %75
  %77 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %76
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 14, ptr noundef nonnull %77, ptr noundef null)
  %78 = load ptr, ptr %9, align 8, !tbaa !41
  br i1 %25, label %79, label %87

79:                                               ; preds = %68
  %80 = load ptr, ptr %78, align 8, !tbaa !49
  %81 = getelementptr i8, ptr %80, i64 -24
  %82 = load i64, ptr %81, align 8
  %83 = getelementptr inbounds i8, ptr %78, i64 %82
  %84 = getelementptr inbounds %"class.std::ios_base", ptr %83, i64 0, i32 5
  %85 = load i32, ptr %84, align 8, !tbaa !64
  %86 = or i32 %85, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %83, i32 noundef %86)
  br label %90

87:                                               ; preds = %68
  %88 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull %2, i64 noundef %88)
  br label %90

90:                                               ; preds = %79, %87
  %91 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull @.str.30, i64 noundef 10)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  call void @_ZN13NED1Generator18getTrailingCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %92 = load ptr, ptr %8, align 8, !tbaa !60
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %94 = load i64, ptr %93, align 8, !tbaa !74
  %95 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef %92, i64 noundef %94)
          to label %96 unwind label %125

96:                                               ; preds = %90
  %97 = load ptr, ptr %8, align 8, !tbaa !60
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %99 = icmp eq ptr %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i64, ptr %93, align 8, !tbaa !74
  %102 = icmp ult i64 %101, 16
  call void @llvm.assume(i1 %102)
  br label %104

103:                                              ; preds = %96
  call void @_ZdlPv(ptr noundef %97) #23
  br label %104

104:                                              ; preds = %100, %103
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  ret void

105:                                              ; preds = %5
  %106 = landingpad { ptr, i32 }
          cleanup
  %107 = load ptr, ptr %6, align 8, !tbaa !60
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i64, ptr %12, align 8, !tbaa !74
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  br label %114

113:                                              ; preds = %105
  call void @_ZdlPv(ptr noundef %107) #23
  br label %114

114:                                              ; preds = %110, %113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %135

115:                                              ; preds = %54
  %116 = landingpad { ptr, i32 }
          cleanup
  %117 = load ptr, ptr %7, align 8, !tbaa !60
  %118 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i64, ptr %57, align 8, !tbaa !74
  %122 = icmp ult i64 %121, 16
  call void @llvm.assume(i1 %122)
  br label %124

123:                                              ; preds = %115
  call void @_ZdlPv(ptr noundef %117) #23
  br label %124

124:                                              ; preds = %120, %123
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %135

125:                                              ; preds = %90
  %126 = landingpad { ptr, i32 }
          cleanup
  %127 = load ptr, ptr %8, align 8, !tbaa !60
  %128 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %129 = icmp eq ptr %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i64, ptr %93, align 8, !tbaa !74
  %132 = icmp ult i64 %131, 16
  call void @llvm.assume(i1 %132)
  br label %134

133:                                              ; preds = %125
  call void @_ZdlPv(ptr noundef %127) #23
  br label %134

134:                                              ; preds = %130, %133
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  br label %135

135:                                              ; preds = %134, %124, %114
  %136 = phi { ptr, i32 } [ %126, %134 ], [ %116, %124 ], [ %106, %114 ]
  resume { ptr, i32 } %136
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator12doParametersEP17ParametersElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = load ptr, ptr %1, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(112) %9)
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %1, align 8, !tbaa !49
  %17 = getelementptr inbounds ptr, ptr %16, i64 22
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %20 = tail call noundef zeroext i1 @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc(ptr noundef %19, ptr noundef nonnull @.str.140)
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %5
  tail call void @_ZN13NED1Generator17doSubstParametersEP17ParametersElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %30

22:                                               ; preds = %15
  %23 = and i32 %13, -3
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @_ZN13NED1Generator18doModuleParametersEP17ParametersElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %30

26:                                               ; preds = %22
  switch i32 %13, label %29 [
    i32 13, label %27
    i32 26, label %28
  ]

27:                                               ; preds = %26
  tail call void @_ZN13NED1Generator19doChannelParametersEP17ParametersElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %30

28:                                               ; preds = %26
  tail call void @_ZN13NED1Generator22doConnectionAttributesEP17ParametersElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %30

29:                                               ; preds = %26
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 402, ptr noundef nonnull %1, ptr noundef nonnull @.str.31)
  br label %30

30:                                               ; preds = %25, %28, %29, %27, %21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator17doSubstParametersEP17ParametersElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %8 = load ptr, ptr %4, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !74
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8, i64 noundef %10)
          to label %12 unwind label %55

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, ptr %9, align 8, !tbaa !74
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  br label %20

19:                                               ; preds = %12
  call void @_ZdlPv(ptr noundef %13) #23
  br label %20

20:                                               ; preds = %16, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  %21 = load ptr, ptr %1, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 30
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 15)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %75, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %6, align 8, !tbaa !41
  %28 = icmp eq ptr %2, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !49
  %31 = getelementptr i8, ptr %30, i64 -24
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds i8, ptr %27, i64 %32
  %34 = getelementptr inbounds %"class.std::ios_base", ptr %33, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !64
  %36 = or i32 %35, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %33, i32 noundef %36)
  br label %40

37:                                               ; preds = %26
  %38 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %2, i64 noundef %38)
  br label %40

40:                                               ; preds = %29, %37
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.32, i64 noundef 11)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %42 = load ptr, ptr %5, align 8, !tbaa !60
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !74
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %42, i64 noundef %44)
          to label %46 unwind label %65

46:                                               ; preds = %40
  %47 = load ptr, ptr %5, align 8, !tbaa !60
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, ptr %43, align 8, !tbaa !74
  %52 = icmp ult i64 %51, 16
  call void @llvm.assume(i1 %52)
  br label %54

53:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %47) #23
  br label %54

54:                                               ; preds = %50, %53
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %75

55:                                               ; preds = %3
  %56 = landingpad { ptr, i32 }
          cleanup
  %57 = load ptr, ptr %4, align 8, !tbaa !60
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, ptr %9, align 8, !tbaa !74
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %64

63:                                               ; preds = %55
  call void @_ZdlPv(ptr noundef %57) #23
  br label %64

64:                                               ; preds = %60, %63
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  br label %115

65:                                               ; preds = %40
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load ptr, ptr %5, align 8, !tbaa !60
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, ptr %43, align 8, !tbaa !74
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %67) #23
  br label %74

74:                                               ; preds = %70, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %115

75:                                               ; preds = %54, %20
  %76 = load ptr, ptr %1, align 8, !tbaa !49
  %77 = getelementptr inbounds ptr, ptr %76, i64 23
  %78 = load ptr, ptr %77, align 8
  %79 = call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  br label %84

83:                                               ; preds = %109, %75
  ret void

84:                                               ; preds = %81, %109
  %85 = phi ptr [ %79, %81 ], [ %113, %109 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !49
  %87 = getelementptr inbounds ptr, ptr %86, i64 5
  %88 = load ptr, ptr %87, align 8
  %89 = call noundef i32 %88(ptr noundef nonnull align 8 dereferenceable(112) %85)
  switch i32 %89, label %108 [
    i32 3, label %109
    i32 17, label %90
    i32 15, label %91
    i32 16, label %106
  ]

90:                                               ; preds = %84
  call void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %85, ptr nonnull poison, i1 zeroext poison, ptr poison)
  br label %109

91:                                               ; preds = %84
  %92 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %93 = trunc i64 %92 to i32
  %94 = load i32, ptr %0, align 8, !tbaa !47
  %95 = add nsw i32 %94, %93
  %96 = icmp slt i32 %95, 70
  %97 = select i1 %96, i32 %95, i32 %93
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 0, %98
  %100 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %99
  %101 = load ptr, ptr %85, align 8, !tbaa !49
  %102 = getelementptr inbounds ptr, ptr %101, i64 31
  %103 = load ptr, ptr %102, align 8
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(112) %85, i32 noundef 15)
  %105 = icmp eq ptr %104, null
  call void @_ZN13NED1Generator12doSubstParamEP12ParamElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %85, ptr noundef nonnull %100, i1 noundef zeroext %105, ptr poison)
  br label %109

106:                                              ; preds = %84
  %107 = load ptr, ptr %82, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %107, ptr noundef nonnull %1, ptr noundef nonnull @.str.35)
  br label %109

108:                                              ; preds = %84
  call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 445, ptr noundef nonnull %1, ptr noundef nonnull @.str.34)
  br label %109

109:                                              ; preds = %84, %90, %106, %108, %91
  %110 = load ptr, ptr %85, align 8, !tbaa !49
  %111 = getelementptr inbounds ptr, ptr %110, i64 25
  %112 = load ptr, ptr %111, align 8
  %113 = call noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(112) %85)
  %114 = icmp eq ptr %113, null
  br i1 %114, label %83, label %84, !llvm.loop !91

115:                                              ; preds = %74, %64
  %116 = phi { ptr, i32 } [ %66, %74 ], [ %56, %64 ]
  resume { ptr, i32 } %116
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator18doModuleParametersEP17ParametersElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %8 = load ptr, ptr %4, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !74
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8, i64 noundef %10)
          to label %12 unwind label %55

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, ptr %9, align 8, !tbaa !74
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  br label %20

19:                                               ; preds = %12
  call void @_ZdlPv(ptr noundef %13) #23
  br label %20

20:                                               ; preds = %16, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  %21 = load ptr, ptr %1, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 30
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 15)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %75, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %6, align 8, !tbaa !41
  %28 = icmp eq ptr %2, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !49
  %31 = getelementptr i8, ptr %30, i64 -24
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds i8, ptr %27, i64 %32
  %34 = getelementptr inbounds %"class.std::ios_base", ptr %33, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !64
  %36 = or i32 %35, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %33, i32 noundef %36)
  br label %40

37:                                               ; preds = %26
  %38 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %2, i64 noundef %38)
  br label %40

40:                                               ; preds = %29, %37
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.32, i64 noundef 11)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %42 = load ptr, ptr %5, align 8, !tbaa !60
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !74
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %42, i64 noundef %44)
          to label %46 unwind label %65

46:                                               ; preds = %40
  %47 = load ptr, ptr %5, align 8, !tbaa !60
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, ptr %43, align 8, !tbaa !74
  %52 = icmp ult i64 %51, 16
  call void @llvm.assume(i1 %52)
  br label %54

53:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %47) #23
  br label %54

54:                                               ; preds = %50, %53
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %75

55:                                               ; preds = %3
  %56 = landingpad { ptr, i32 }
          cleanup
  %57 = load ptr, ptr %4, align 8, !tbaa !60
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, ptr %9, align 8, !tbaa !74
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %64

63:                                               ; preds = %55
  call void @_ZdlPv(ptr noundef %57) #23
  br label %64

64:                                               ; preds = %60, %63
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  br label %115

65:                                               ; preds = %40
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load ptr, ptr %5, align 8, !tbaa !60
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, ptr %43, align 8, !tbaa !74
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %67) #23
  br label %74

74:                                               ; preds = %70, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %115

75:                                               ; preds = %54, %20
  %76 = load ptr, ptr %1, align 8, !tbaa !49
  %77 = getelementptr inbounds ptr, ptr %76, i64 23
  %78 = load ptr, ptr %77, align 8
  %79 = call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  br label %84

83:                                               ; preds = %109, %75
  ret void

84:                                               ; preds = %81, %109
  %85 = phi ptr [ %79, %81 ], [ %113, %109 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !49
  %87 = getelementptr inbounds ptr, ptr %86, i64 5
  %88 = load ptr, ptr %87, align 8
  %89 = call noundef i32 %88(ptr noundef nonnull align 8 dereferenceable(112) %85)
  switch i32 %89, label %108 [
    i32 3, label %109
    i32 17, label %90
    i32 15, label %91
    i32 16, label %106
  ]

90:                                               ; preds = %84
  call void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %85, ptr nonnull poison, i1 zeroext poison, ptr poison)
  br label %109

91:                                               ; preds = %84
  %92 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %93 = trunc i64 %92 to i32
  %94 = load i32, ptr %0, align 8, !tbaa !47
  %95 = add nsw i32 %94, %93
  %96 = icmp slt i32 %95, 70
  %97 = select i1 %96, i32 %95, i32 %93
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 0, %98
  %100 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %99
  %101 = load ptr, ptr %85, align 8, !tbaa !49
  %102 = getelementptr inbounds ptr, ptr %101, i64 31
  %103 = load ptr, ptr %102, align 8
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(112) %85, i32 noundef 15)
  %105 = icmp eq ptr %104, null
  call void @_ZN13NED1Generator13doModuleParamEP12ParamElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %85, ptr noundef nonnull %100, i1 noundef zeroext %105, ptr poison)
  br label %109

106:                                              ; preds = %84
  %107 = load ptr, ptr %82, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %107, ptr noundef nonnull %1, ptr noundef nonnull @.str.33)
  br label %109

108:                                              ; preds = %84
  call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 423, ptr noundef nonnull %1, ptr noundef nonnull @.str.34)
  br label %109

109:                                              ; preds = %84, %90, %106, %108, %91
  %110 = load ptr, ptr %85, align 8, !tbaa !49
  %111 = getelementptr inbounds ptr, ptr %110, i64 25
  %112 = load ptr, ptr %111, align 8
  %113 = call noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(112) %85)
  %114 = icmp eq ptr %113, null
  br i1 %114, label %83, label %84, !llvm.loop !92

115:                                              ; preds = %74, %64
  %116 = phi { ptr, i32 } [ %66, %74 ], [ %56, %64 ]
  resume { ptr, i32 } %116
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator19doChannelParametersEP17ParametersElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !40 {
  %4 = load ptr, ptr %1, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  br label %12

11:                                               ; preds = %23, %3
  ret void

12:                                               ; preds = %9, %23
  %13 = phi ptr [ %7, %9 ], [ %27, %23 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(112) %13)
  switch i32 %17, label %22 [
    i32 3, label %23
    i32 17, label %18
    i32 15, label %19
    i32 16, label %20
  ]

18:                                               ; preds = %12
  tail call void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %13, ptr poison, i1 zeroext poison, ptr poison)
  br label %23

19:                                               ; preds = %12
  tail call void @_ZN13NED1Generator14doChannelParamEP12ParamElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %13, ptr noundef %2)
  br label %23

20:                                               ; preds = %12
  %21 = load ptr, ptr %10, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.35)
  br label %23

22:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 464, ptr noundef nonnull %1, ptr noundef nonnull @.str.34)
  br label %23

23:                                               ; preds = %12, %18, %20, %22, %19
  %24 = load ptr, ptr %13, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 25
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(112) %13)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %11, label %12, !llvm.loop !93
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator22doConnectionAttributesEP17ParametersElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #3 align 2 !prof !40 {
  %4 = load ptr, ptr %1, align 8, !tbaa !49
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  br label %12

11:                                               ; preds = %23, %3
  ret void

12:                                               ; preds = %9, %23
  %13 = phi ptr [ %7, %9 ], [ %27, %23 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds ptr, ptr %14, i64 5
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(112) %13)
  switch i32 %17, label %22 [
    i32 3, label %23
    i32 17, label %18
    i32 15, label %19
    i32 16, label %20
  ]

18:                                               ; preds = %12
  tail call void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %13, ptr poison, i1 zeroext poison, ptr poison)
  br label %23

19:                                               ; preds = %12
  tail call void @_ZN13NED1Generator14doChannelParamEP12ParamElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %13, ptr noundef null)
  br label %23

20:                                               ; preds = %12
  %21 = load ptr, ptr %10, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %21, ptr noundef nonnull %1, ptr noundef nonnull @.str.36)
  br label %23

22:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 483, ptr noundef nonnull %1, ptr noundef nonnull @.str.34)
  br label %23

23:                                               ; preds = %12, %18, %20, %22, %19
  %24 = load ptr, ptr %13, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 25
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(112) %13)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %11, label %12, !llvm.loop !94
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator10doPropertyEP15PropertyElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = getelementptr inbounds %class.PropertyElement, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(8) @.str.62) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %5
  %11 = load ptr, ptr %1, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 22
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8, !tbaa !49
  %18 = getelementptr inbounds ptr, ptr %17, i64 22
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 22
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(112) %20)
  br label %25

25:                                               ; preds = %10, %16
  %26 = phi ptr [ %24, %16 ], [ null, %10 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %59, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !49
  %30 = getelementptr inbounds ptr, ptr %29, i64 5
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(112) %26)
  %33 = icmp eq i32 %32, 23
  br i1 %33, label %63, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %26, align 8, !tbaa !49
  %36 = getelementptr inbounds ptr, ptr %35, i64 5
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i32 %37(ptr noundef nonnull align 8 dereferenceable(112) %26)
  %39 = icmp eq i32 %38, 11
  br i1 %39, label %63, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %26, align 8, !tbaa !49
  %42 = getelementptr inbounds ptr, ptr %41, i64 5
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(112) %26)
  %45 = icmp eq i32 %44, 26
  br i1 %45, label %63, label %59

46:                                               ; preds = %5
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(7) @.str.54) #22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load ptr, ptr %1, align 8, !tbaa !49
  %51 = getelementptr inbounds ptr, ptr %50, i64 22
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  %55 = getelementptr inbounds ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef i32 %56(ptr noundef nonnull align 8 dereferenceable(112) %53)
  %58 = icmp eq i32 %57, 15
  br i1 %58, label %63, label %59

59:                                               ; preds = %46, %49, %25, %40
  %60 = phi ptr [ @.str.63, %40 ], [ @.str.63, %25 ], [ @.str.64, %49 ], [ @.str.65, %46 ]
  %61 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %62, ptr noundef nonnull %1, ptr noundef nonnull %60)
  br label %63

63:                                               ; preds = %59, %49, %28, %34, %40
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator13doModuleParamEP12ParamElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %class.ParamElement, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !95
  switch i32 %9, label %18 [
    i32 0, label %19
    i32 1, label %10
    i32 2, label %10
    i32 3, label %15
    i32 4, label %16
    i32 5, label %17
  ]

10:                                               ; preds = %5, %5
  %11 = getelementptr inbounds %class.ParamElement, ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !100, !range !101, !noundef !102
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, ptr @.str.45, ptr @.str.44
  br label %19

15:                                               ; preds = %5
  br label %19

16:                                               ; preds = %5
  br label %19

17:                                               ; preds = %5
  br label %19

18:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 526, ptr noundef nonnull %1, ptr noundef nonnull @.str.49)
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %10, %5
  %20 = phi ptr [ null, %18 ], [ @.str.48, %17 ], [ @.str.47, %16 ], [ @.str.46, %15 ], [ %14, %10 ], [ null, %5 ]
  %21 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %2)
  %23 = load ptr, ptr %6, align 8, !tbaa !60
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !74
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %23, i64 noundef %25)
          to label %27 unwind label %71

27:                                               ; preds = %19
  %28 = load ptr, ptr %6, align 8, !tbaa !60
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, ptr %24, align 8, !tbaa !74
  %33 = icmp ult i64 %32, 16
  call void @llvm.assume(i1 %33)
  br label %35

34:                                               ; preds = %27
  call void @_ZdlPv(ptr noundef %28) #23
  br label %35

35:                                               ; preds = %31, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %36 = load ptr, ptr %21, align 8, !tbaa !41
  %37 = icmp eq ptr %2, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load ptr, ptr %36, align 8, !tbaa !49
  %40 = getelementptr i8, ptr %39, i64 -24
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds i8, ptr %36, i64 %41
  %43 = getelementptr inbounds %"class.std::ios_base", ptr %42, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !64
  %45 = or i32 %44, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %42, i32 noundef %45)
  br label %49

46:                                               ; preds = %35
  %47 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull %2, i64 noundef %47)
  br label %49

49:                                               ; preds = %38, %46
  %50 = getelementptr inbounds %class.ParamElement, ptr %1, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !60
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load ptr, ptr %36, align 8, !tbaa !49
  %55 = getelementptr i8, ptr %54, i64 -24
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds i8, ptr %36, i64 %56
  %58 = getelementptr inbounds %"class.std::ios_base", ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !64
  %60 = or i32 %59, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %57, i32 noundef %60)
  br label %64

61:                                               ; preds = %49
  %62 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #21
  %63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull %51, i64 noundef %62)
  br label %64

64:                                               ; preds = %53, %61
  %65 = icmp eq ptr %20, null
  br i1 %65, label %81, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr %21, align 8, !tbaa !41
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull @.str.50, i64 noundef 2)
  %69 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #21
  %70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull %20, i64 noundef %69)
  br label %81

71:                                               ; preds = %19
  %72 = landingpad { ptr, i32 }
          cleanup
  %73 = load ptr, ptr %6, align 8, !tbaa !60
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i64, ptr %24, align 8, !tbaa !74
  %78 = icmp ult i64 %77, 16
  call void @llvm.assume(i1 %78)
  br label %80

79:                                               ; preds = %71
  call void @_ZdlPv(ptr noundef %73) #23
  br label %80

80:                                               ; preds = %76, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %125

81:                                               ; preds = %66, %64
  %82 = call noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull @.str.41)
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %85, ptr noundef nonnull %1, ptr noundef nonnull @.str.51)
  br label %86

86:                                               ; preds = %83, %81
  br i1 %37, label %97, label %87

87:                                               ; preds = %86
  %88 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %89 = trunc i64 %88 to i32
  %90 = load i32, ptr %0, align 8, !tbaa !47
  %91 = add nsw i32 %90, %89
  %92 = icmp slt i32 %91, 70
  %93 = select i1 %92, i32 %91, i32 %89
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 0, %94
  %96 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %95
  br label %97

97:                                               ; preds = %86, %87
  %98 = phi ptr [ %96, %87 ], [ @.str.52, %86 ]
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 17, ptr noundef %98, ptr noundef nonnull @.str.10)
  %99 = load ptr, ptr %21, align 8, !tbaa !41
  %100 = select i1 %3, ptr @.str.14, ptr @.str.15
  %101 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef nonnull %100, i64 noundef 1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %102 = load ptr, ptr %7, align 8, !tbaa !60
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !74
  %105 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef %102, i64 noundef %104)
          to label %106 unwind label %115

106:                                              ; preds = %97
  %107 = load ptr, ptr %7, align 8, !tbaa !60
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i64, ptr %103, align 8, !tbaa !74
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  br label %114

113:                                              ; preds = %106
  call void @_ZdlPv(ptr noundef %107) #23
  br label %114

114:                                              ; preds = %110, %113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  ret void

115:                                              ; preds = %97
  %116 = landingpad { ptr, i32 }
          cleanup
  %117 = load ptr, ptr %7, align 8, !tbaa !60
  %118 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i64, ptr %103, align 8, !tbaa !74
  %122 = icmp ult i64 %121, 16
  call void @llvm.assume(i1 %122)
  br label %124

123:                                              ; preds = %115
  call void @_ZdlPv(ptr noundef %117) #23
  br label %124

124:                                              ; preds = %120, %123
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %125

125:                                              ; preds = %124, %80
  %126 = phi { ptr, i32 } [ %116, %124 ], [ %72, %80 ]
  resume { ptr, i32 } %126
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator12doSubstParamEP12ParamElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %class.ParamElement, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !95
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull %1, ptr noundef nonnull @.str.55)
  br label %14

14:                                               ; preds = %11, %5
  %15 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %2)
  %17 = load ptr, ptr %6, align 8, !tbaa !60
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !74
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %17, i64 noundef %19)
          to label %21 unwind label %68

21:                                               ; preds = %14
  %22 = load ptr, ptr %6, align 8, !tbaa !60
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, ptr %18, align 8, !tbaa !74
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  br label %29

28:                                               ; preds = %21
  call void @_ZdlPv(ptr noundef %22) #23
  br label %29

29:                                               ; preds = %25, %28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %30 = load ptr, ptr %15, align 8, !tbaa !41
  %31 = icmp eq ptr %2, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa !49
  %34 = getelementptr i8, ptr %33, i64 -24
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds i8, ptr %30, i64 %35
  %37 = getelementptr inbounds %"class.std::ios_base", ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !64
  %39 = or i32 %38, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %36, i32 noundef %39)
  br label %43

40:                                               ; preds = %29
  %41 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %2, i64 noundef %41)
  br label %43

43:                                               ; preds = %32, %40
  %44 = getelementptr inbounds %class.ParamElement, ptr %1, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load ptr, ptr %30, align 8, !tbaa !49
  %49 = getelementptr i8, ptr %48, i64 -24
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds i8, ptr %30, i64 %50
  %52 = getelementptr inbounds %"class.std::ios_base", ptr %51, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !64
  %54 = or i32 %53, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %51, i32 noundef %54)
  br label %58

55:                                               ; preds = %43
  %56 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #21
  %57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %45, i64 noundef %56)
  br label %58

58:                                               ; preds = %47, %55
  %59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull @.str.56, i64 noundef 3)
  %60 = call noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull @.str.41)
  %61 = getelementptr inbounds %class.ParamElement, ptr %1, i64 0, i32 6
  %62 = load i8, ptr %61, align 8, !tbaa !103, !range !101, !noundef !102
  %63 = icmp eq i8 %62, 0
  br i1 %60, label %81, label %64

64:                                               ; preds = %58
  br i1 %63, label %78, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %67, ptr noundef nonnull %1, ptr noundef nonnull @.str.57)
  br label %78

68:                                               ; preds = %14
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = load ptr, ptr %6, align 8, !tbaa !60
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i64, ptr %18, align 8, !tbaa !74
  %75 = icmp ult i64 %74, 16
  call void @llvm.assume(i1 %75)
  br label %77

76:                                               ; preds = %68
  call void @_ZdlPv(ptr noundef %70) #23
  br label %77

77:                                               ; preds = %73, %76
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %132

78:                                               ; preds = %65, %64
  %79 = load ptr, ptr %15, align 8, !tbaa !41
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull @.str.58, i64 noundef 5)
  br label %96

81:                                               ; preds = %58
  br i1 %63, label %82, label %83

82:                                               ; preds = %81
  call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.41, ptr noundef %2)
  br label %96

83:                                               ; preds = %81
  %84 = load ptr, ptr %15, align 8, !tbaa !41
  %85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull @.str.59, i64 noundef 6)
  call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.41, ptr noundef %2)
  %86 = call noundef ptr @_ZN13NED1Generator15getPromptTextOfEP12ParamElement(ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %15, align 8, !tbaa !41
  %90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef nonnull @.str.60, i64 noundef 2)
  %91 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %86) #21
  %92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef nonnull %86, i64 noundef %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load ptr, ptr %15, align 8, !tbaa !41
  %95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull @.str.61, i64 noundef 1)
  br label %96

96:                                               ; preds = %82, %93, %78
  %97 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %98 = trunc i64 %97 to i32
  %99 = load i32, ptr %0, align 8, !tbaa !47
  %100 = add nsw i32 %99, %98
  %101 = icmp slt i32 %100, 70
  %102 = select i1 %101, i32 %100, i32 %98
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 0, %103
  %105 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %104
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 17, ptr noundef nonnull %105, ptr noundef nonnull @.str.10)
  %106 = load ptr, ptr %15, align 8, !tbaa !41
  %107 = select i1 %3, ptr @.str.14, ptr @.str.15
  %108 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %106, ptr noundef nonnull %107, i64 noundef 1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %109 = load ptr, ptr %7, align 8, !tbaa !60
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !74
  %112 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %106, ptr noundef %109, i64 noundef %111)
          to label %113 unwind label %122

113:                                              ; preds = %96
  %114 = load ptr, ptr %7, align 8, !tbaa !60
  %115 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %116 = icmp eq ptr %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i64, ptr %110, align 8, !tbaa !74
  %119 = icmp ult i64 %118, 16
  call void @llvm.assume(i1 %119)
  br label %121

120:                                              ; preds = %113
  call void @_ZdlPv(ptr noundef %114) #23
  br label %121

121:                                              ; preds = %117, %120
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  ret void

122:                                              ; preds = %96
  %123 = landingpad { ptr, i32 }
          cleanup
  %124 = load ptr, ptr %7, align 8, !tbaa !60
  %125 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i64, ptr %110, align 8, !tbaa !74
  %129 = icmp ult i64 %128, 16
  call void @llvm.assume(i1 %129)
  br label %131

130:                                              ; preds = %122
  call void @_ZdlPv(ptr noundef %124) #23
  br label %131

131:                                              ; preds = %127, %130
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %132

132:                                              ; preds = %131, %77
  %133 = phi { ptr, i32 } [ %123, %131 ], [ %69, %77 ]
  resume { ptr, i32 } %133
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator14doChannelParamEP12ParamElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %8 = load ptr, ptr %4, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !74
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8, i64 noundef %10)
          to label %12 unwind label %55

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, ptr %9, align 8, !tbaa !74
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  br label %20

19:                                               ; preds = %12
  call void @_ZdlPv(ptr noundef %13) #23
  br label %20

20:                                               ; preds = %16, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  %21 = getelementptr inbounds %class.ParamElement, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(6) @.str.37) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(4) @.str.38) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(9) @.str.39) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %91

31:                                               ; preds = %28, %25, %20
  %32 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(4) @.str.38) #22
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, ptr @.str.40, ptr %22
  %35 = load ptr, ptr %6, align 8, !tbaa !41
  %36 = icmp eq ptr %2, null
  %37 = select i1 %36, ptr @.str.10, ptr %2
  %38 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #21
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull %37, i64 noundef %38)
  %40 = load ptr, ptr %6, align 8, !tbaa !41
  %41 = icmp eq ptr %34, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load ptr, ptr %40, align 8, !tbaa !49
  %44 = getelementptr i8, ptr %43, i64 -24
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds i8, ptr %40, i64 %45
  %47 = getelementptr inbounds %"class.std::ios_base", ptr %46, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !64
  %49 = or i32 %48, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %46, i32 noundef %49)
  br label %53

50:                                               ; preds = %31
  %51 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #21
  %52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %34, i64 noundef %51)
  br label %53

53:                                               ; preds = %42, %50
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull @.str.10, i64 noundef 1)
  call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.41, ptr noundef %2)
  br i1 %36, label %94, label %65

55:                                               ; preds = %3
  %56 = landingpad { ptr, i32 }
          cleanup
  %57 = load ptr, ptr %4, align 8, !tbaa !60
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, ptr %9, align 8, !tbaa !74
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %64

63:                                               ; preds = %55
  call void @_ZdlPv(ptr noundef %57) #23
  br label %64

64:                                               ; preds = %60, %63
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  br label %95

65:                                               ; preds = %53
  %66 = load ptr, ptr %6, align 8, !tbaa !41
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull @.str.14, i64 noundef 1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %68 = load ptr, ptr %5, align 8, !tbaa !60
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !74
  %71 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %68, i64 noundef %70)
          to label %72 unwind label %81

72:                                               ; preds = %65
  %73 = load ptr, ptr %5, align 8, !tbaa !60
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i64, ptr %69, align 8, !tbaa !74
  %78 = icmp ult i64 %77, 16
  call void @llvm.assume(i1 %78)
  br label %80

79:                                               ; preds = %72
  call void @_ZdlPv(ptr noundef %73) #23
  br label %80

80:                                               ; preds = %76, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %94

81:                                               ; preds = %65
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load ptr, ptr %5, align 8, !tbaa !60
  %84 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i64, ptr %69, align 8, !tbaa !74
  %88 = icmp ult i64 %87, 16
  call void @llvm.assume(i1 %88)
  br label %90

89:                                               ; preds = %81
  call void @_ZdlPv(ptr noundef %83) #23
  br label %90

90:                                               ; preds = %86, %89
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %95

91:                                               ; preds = %28
  %92 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %93, ptr noundef nonnull %1, ptr noundef nonnull @.str.42)
  br label %94

94:                                               ; preds = %53, %80, %91
  ret void

95:                                               ; preds = %90, %64
  %96 = phi { ptr, i32 } [ %82, %90 ], [ %56, %64 ]
  resume { ptr, i32 } %96
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator7doParamEP12ParamElementPKcbS3_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 512, ptr noundef %1, ptr noundef nonnull @.str.43)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN13NED1Generator15getPromptTextOfEP12ParamElement(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull %1) local_unnamed_addr #3 align 2 !prof !40 {
  %3 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 17, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %3, i32 noundef 18, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 30
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(112) %6, i32 noundef 34)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %class.LiteralElement, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  br label %17

17:                                               ; preds = %5, %8, %14, %2
  %18 = phi ptr [ null, %2 ], [ null, %5 ], [ %16, %14 ], [ null, %8 ]
  ret ptr %18
}

declare noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator9doPatternEP14PatternElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef %1, ptr noundef nonnull @.str.35)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator13doPropertyKeyEP18PropertyKeyElementPKcbS3_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 619, ptr noundef %1, ptr noundef nonnull @.str.18)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator7doGatesEP12GatesElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = load ptr, ptr %1, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(112) %9)
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @_ZN13NED1Generator20doSubmoduleGatesizesEP12GatesElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %21

16:                                               ; preds = %5
  %17 = and i32 %13, -3
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @_ZN13NED1Generator13doModuleGatesEP12GatesElementPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %21

20:                                               ; preds = %16
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 631, ptr noundef nonnull %1, ptr noundef nonnull @.str.66)
  br label %21

21:                                               ; preds = %19, %20, %15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator20doSubmoduleGatesizesEP12GatesElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %8 = load ptr, ptr %4, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !74
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8, i64 noundef %10)
          to label %12 unwind label %55

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, ptr %9, align 8, !tbaa !74
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  br label %20

19:                                               ; preds = %12
  call void @_ZdlPv(ptr noundef %13) #23
  br label %20

20:                                               ; preds = %16, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  %21 = load ptr, ptr %6, align 8, !tbaa !41
  %22 = icmp eq ptr %2, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !49
  %25 = getelementptr i8, ptr %24, i64 -24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds i8, ptr %21, i64 %26
  %28 = getelementptr inbounds %"class.std::ios_base", ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !64
  %30 = or i32 %29, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %27, i32 noundef %30)
  br label %34

31:                                               ; preds = %20
  %32 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull %2, i64 noundef %32)
  br label %34

34:                                               ; preds = %23, %31
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.68, i64 noundef 10)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef %1)
  %36 = load ptr, ptr %5, align 8, !tbaa !60
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !74
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %36, i64 noundef %38)
          to label %40 unwind label %65

40:                                               ; preds = %34
  %41 = load ptr, ptr %5, align 8, !tbaa !60
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, ptr %37, align 8, !tbaa !74
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  br label %48

47:                                               ; preds = %40
  call void @_ZdlPv(ptr noundef %41) #23
  br label %48

48:                                               ; preds = %44, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  %49 = load ptr, ptr %1, align 8, !tbaa !49
  %50 = getelementptr inbounds ptr, ptr %49, i64 23
  %51 = load ptr, ptr %50, align 8
  %52 = call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %75

54:                                               ; preds = %97, %48
  ret void

55:                                               ; preds = %3
  %56 = landingpad { ptr, i32 }
          cleanup
  %57 = load ptr, ptr %4, align 8, !tbaa !60
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, ptr %9, align 8, !tbaa !74
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %64

63:                                               ; preds = %55
  call void @_ZdlPv(ptr noundef %57) #23
  br label %64

64:                                               ; preds = %60, %63
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  br label %103

65:                                               ; preds = %34
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load ptr, ptr %5, align 8, !tbaa !60
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, ptr %37, align 8, !tbaa !74
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %67) #23
  br label %74

74:                                               ; preds = %70, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %103

75:                                               ; preds = %48, %97
  %76 = phi ptr [ %101, %97 ], [ %52, %48 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !49
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = call noundef i32 %79(ptr noundef nonnull align 8 dereferenceable(112) %76)
  switch i32 %80, label %96 [
    i32 3, label %97
    i32 20, label %81
  ]

81:                                               ; preds = %75
  %82 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %83 = trunc i64 %82 to i32
  %84 = load i32, ptr %0, align 8, !tbaa !47
  %85 = add nsw i32 %84, %83
  %86 = icmp slt i32 %85, 70
  %87 = select i1 %86, i32 %85, i32 %83
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 0, %88
  %90 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %89
  %91 = load ptr, ptr %76, align 8, !tbaa !49
  %92 = getelementptr inbounds ptr, ptr %91, i64 31
  %93 = load ptr, ptr %92, align 8
  %94 = call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(112) %76, i32 noundef 20)
  %95 = icmp eq ptr %94, null
  call void @_ZN13NED1Generator10doGatesizeEP11GateElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %76, ptr noundef nonnull %90, i1 noundef zeroext %95, ptr poison)
  br label %97

96:                                               ; preds = %75
  call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 665, ptr noundef nonnull %1, ptr noundef nonnull @.str.34)
  br label %97

97:                                               ; preds = %75, %81, %96
  %98 = load ptr, ptr %76, align 8, !tbaa !49
  %99 = getelementptr inbounds ptr, ptr %98, i64 25
  %100 = load ptr, ptr %99, align 8
  %101 = call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(112) %76)
  %102 = icmp eq ptr %101, null
  br i1 %102, label %54, label %75, !llvm.loop !104

103:                                              ; preds = %74, %64
  %104 = phi { ptr, i32 } [ %66, %74 ], [ %56, %64 ]
  resume { ptr, i32 } %104
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator13doModuleGatesEP12GatesElementPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %8 = load ptr, ptr %4, align 8, !tbaa !60
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !74
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8, i64 noundef %10)
          to label %12 unwind label %55

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8, !tbaa !60
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, ptr %9, align 8, !tbaa !74
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  br label %20

19:                                               ; preds = %12
  call void @_ZdlPv(ptr noundef %13) #23
  br label %20

20:                                               ; preds = %16, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  %21 = load ptr, ptr %1, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 30
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 20)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %75, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %6, align 8, !tbaa !41
  %28 = icmp eq ptr %2, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 8, !tbaa !49
  %31 = getelementptr i8, ptr %30, i64 -24
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds i8, ptr %27, i64 %32
  %34 = getelementptr inbounds %"class.std::ios_base", ptr %33, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !64
  %36 = or i32 %35, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %33, i32 noundef %36)
  br label %40

37:                                               ; preds = %26
  %38 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %2, i64 noundef %38)
  br label %40

40:                                               ; preds = %29, %37
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.67, i64 noundef 6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %42 = load ptr, ptr %5, align 8, !tbaa !60
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !74
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %42, i64 noundef %44)
          to label %46 unwind label %65

46:                                               ; preds = %40
  %47 = load ptr, ptr %5, align 8, !tbaa !60
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, ptr %43, align 8, !tbaa !74
  %52 = icmp ult i64 %51, 16
  call void @llvm.assume(i1 %52)
  br label %54

53:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %47) #23
  br label %54

54:                                               ; preds = %50, %53
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %75

55:                                               ; preds = %3
  %56 = landingpad { ptr, i32 }
          cleanup
  %57 = load ptr, ptr %4, align 8, !tbaa !60
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, ptr %9, align 8, !tbaa !74
  %62 = icmp ult i64 %61, 16
  call void @llvm.assume(i1 %62)
  br label %64

63:                                               ; preds = %55
  call void @_ZdlPv(ptr noundef %57) #23
  br label %64

64:                                               ; preds = %60, %63
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  br label %109

65:                                               ; preds = %40
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load ptr, ptr %5, align 8, !tbaa !60
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, ptr %43, align 8, !tbaa !74
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %67) #23
  br label %74

74:                                               ; preds = %70, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %109

75:                                               ; preds = %54, %20
  %76 = load ptr, ptr %1, align 8, !tbaa !49
  %77 = getelementptr inbounds ptr, ptr %76, i64 23
  %78 = load ptr, ptr %77, align 8
  %79 = call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %103, %75
  ret void

82:                                               ; preds = %75, %103
  %83 = phi ptr [ %107, %103 ], [ %79, %75 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !49
  %85 = getelementptr inbounds ptr, ptr %84, i64 5
  %86 = load ptr, ptr %85, align 8
  %87 = call noundef i32 %86(ptr noundef nonnull align 8 dereferenceable(112) %83)
  switch i32 %87, label %102 [
    i32 3, label %103
    i32 20, label %88
  ]

88:                                               ; preds = %82
  %89 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %90 = trunc i64 %89 to i32
  %91 = load i32, ptr %0, align 8, !tbaa !47
  %92 = add nsw i32 %91, %90
  %93 = icmp slt i32 %92, 70
  %94 = select i1 %93, i32 %92, i32 %90
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 0, %95
  %97 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %96
  %98 = load ptr, ptr %83, align 8, !tbaa !49
  %99 = getelementptr inbounds ptr, ptr %98, i64 31
  %100 = load ptr, ptr %99, align 8
  %101 = call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(112) %83, i32 noundef 20)
  call void @_ZN13NED1Generator12doModuleGateEP11GateElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %83, ptr noundef nonnull %97, i1 zeroext poison, ptr poison)
  br label %103

102:                                              ; preds = %82
  call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 648, ptr noundef nonnull %1, ptr noundef nonnull @.str.34)
  br label %103

103:                                              ; preds = %82, %88, %102
  %104 = load ptr, ptr %83, align 8, !tbaa !49
  %105 = getelementptr inbounds ptr, ptr %104, i64 25
  %106 = load ptr, ptr %105, align 8
  %107 = call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(112) %83)
  %108 = icmp eq ptr %107, null
  br i1 %108, label %81, label %82, !llvm.loop !105

109:                                              ; preds = %74, %64
  %110 = phi { ptr, i32 } [ %66, %74 ], [ %56, %64 ]
  resume { ptr, i32 } %110
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator12doModuleGateEP11GateElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %10 = load ptr, ptr %6, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !74
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %10, i64 noundef %12)
          to label %14 unwind label %39

14:                                               ; preds = %5
  %15 = load ptr, ptr %6, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, ptr %11, align 8, !tbaa !74
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %14
  call void @_ZdlPv(ptr noundef %15) #23
  br label %22

22:                                               ; preds = %18, %21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %23 = load ptr, ptr %8, align 8, !tbaa !41
  %24 = icmp eq ptr %2, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !49
  %27 = getelementptr i8, ptr %26, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %23, i64 %28
  %30 = getelementptr inbounds %"class.std::ios_base", ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !64
  %32 = or i32 %31, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %29, i32 noundef %32)
  br label %36

33:                                               ; preds = %22
  %34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %2, i64 noundef %34)
  br label %36

36:                                               ; preds = %25, %33
  %37 = getelementptr inbounds %class.GateElement, ptr %1, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !106
  switch i32 %38, label %61 [
    i32 1, label %49
    i32 2, label %52
    i32 3, label %55
    i32 0, label %58
  ]

39:                                               ; preds = %5
  %40 = landingpad { ptr, i32 }
          cleanup
  %41 = load ptr, ptr %6, align 8, !tbaa !60
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, ptr %11, align 8, !tbaa !74
  %46 = icmp ult i64 %45, 16
  call void @llvm.assume(i1 %46)
  br label %48

47:                                               ; preds = %39
  call void @_ZdlPv(ptr noundef %41) #23
  br label %48

48:                                               ; preds = %44, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %125

49:                                               ; preds = %36
  %50 = load ptr, ptr %8, align 8, !tbaa !41
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull @.str.69, i64 noundef 4)
  br label %62

52:                                               ; preds = %36
  %53 = load ptr, ptr %8, align 8, !tbaa !41
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull @.str.70, i64 noundef 5)
  br label %62

55:                                               ; preds = %36
  %56 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %57, ptr noundef nonnull %1, ptr noundef nonnull @.str.71)
  br label %62

58:                                               ; preds = %36
  %59 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %60, ptr noundef nonnull %1, ptr noundef nonnull @.str.72)
  br label %62

61:                                               ; preds = %36
  call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 686, ptr noundef nonnull %1, ptr noundef nonnull @.str.49)
  br label %62

62:                                               ; preds = %61, %58, %55, %52, %49
  %63 = load ptr, ptr %8, align 8, !tbaa !41
  %64 = getelementptr inbounds %class.GateElement, ptr %1, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !60
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load ptr, ptr %63, align 8, !tbaa !49
  %69 = getelementptr i8, ptr %68, i64 -24
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds i8, ptr %63, i64 %70
  %72 = getelementptr inbounds %"class.std::ios_base", ptr %71, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !64
  %74 = or i32 %73, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %71, i32 noundef %74)
  br label %78

75:                                               ; preds = %62
  %76 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %65) #21
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull %65, i64 noundef %76)
  br label %78

78:                                               ; preds = %67, %75
  %79 = getelementptr inbounds %class.GateElement, ptr %1, i64 0, i32 3
  %80 = load i8, ptr %79, align 4, !tbaa !108, !range !101, !noundef !102
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %8, align 8, !tbaa !41
  %84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull @.str.73, i64 noundef 2)
  br label %85

85:                                               ; preds = %82, %78
  %86 = call noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull @.str.74)
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %89, ptr noundef nonnull %1, ptr noundef nonnull @.str.75)
  br label %90

90:                                               ; preds = %87, %85
  %91 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %92 = trunc i64 %91 to i32
  %93 = load i32, ptr %0, align 8, !tbaa !47
  %94 = add nsw i32 %93, %92
  %95 = icmp slt i32 %94, 70
  %96 = select i1 %95, i32 %94, i32 %92
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 0, %97
  %99 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %98
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 17, ptr noundef nonnull %99, ptr noundef nonnull @.str.10)
  %100 = load ptr, ptr %8, align 8, !tbaa !41
  %101 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef nonnull @.str.14, i64 noundef 1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %102 = load ptr, ptr %7, align 8, !tbaa !60
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !74
  %105 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef %102, i64 noundef %104)
          to label %106 unwind label %115

106:                                              ; preds = %90
  %107 = load ptr, ptr %7, align 8, !tbaa !60
  %108 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i64, ptr %103, align 8, !tbaa !74
  %112 = icmp ult i64 %111, 16
  call void @llvm.assume(i1 %112)
  br label %114

113:                                              ; preds = %106
  call void @_ZdlPv(ptr noundef %107) #23
  br label %114

114:                                              ; preds = %110, %113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  ret void

115:                                              ; preds = %90
  %116 = landingpad { ptr, i32 }
          cleanup
  %117 = load ptr, ptr %7, align 8, !tbaa !60
  %118 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i64, ptr %103, align 8, !tbaa !74
  %122 = icmp ult i64 %121, 16
  call void @llvm.assume(i1 %122)
  br label %124

123:                                              ; preds = %115
  call void @_ZdlPv(ptr noundef %117) #23
  br label %124

124:                                              ; preds = %120, %123
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %125

125:                                              ; preds = %124, %48
  %126 = phi { ptr, i32 } [ %116, %124 ], [ %40, %48 ]
  resume { ptr, i32 } %126
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator10doGatesizeEP11GateElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %10 = load ptr, ptr %6, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !74
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %10, i64 noundef %12)
          to label %14 unwind label %43

14:                                               ; preds = %5
  %15 = load ptr, ptr %6, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, ptr %11, align 8, !tbaa !74
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %14
  call void @_ZdlPv(ptr noundef %15) #23
  br label %22

22:                                               ; preds = %18, %21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %23 = load ptr, ptr %8, align 8, !tbaa !41
  %24 = icmp eq ptr %2, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !49
  %27 = getelementptr i8, ptr %26, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %23, i64 %28
  %30 = getelementptr inbounds %"class.std::ios_base", ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !64
  %32 = or i32 %31, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %29, i32 noundef %32)
  br label %36

33:                                               ; preds = %22
  %34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %2, i64 noundef %34)
  br label %36

36:                                               ; preds = %25, %33
  %37 = getelementptr inbounds %class.GateElement, ptr %1, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !106
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %42, ptr noundef nonnull %1, ptr noundef nonnull @.str.76)
  br label %53

43:                                               ; preds = %5
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load ptr, ptr %6, align 8, !tbaa !60
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i64, ptr %11, align 8, !tbaa !74
  %50 = icmp ult i64 %49, 16
  call void @llvm.assume(i1 %50)
  br label %52

51:                                               ; preds = %43
  call void @_ZdlPv(ptr noundef %45) #23
  br label %52

52:                                               ; preds = %48, %51
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %110

53:                                               ; preds = %40, %36
  %54 = load ptr, ptr %8, align 8, !tbaa !41
  %55 = getelementptr inbounds %class.GateElement, ptr %1, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !60
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load ptr, ptr %54, align 8, !tbaa !49
  %60 = getelementptr i8, ptr %59, i64 -24
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds i8, ptr %54, i64 %61
  %63 = getelementptr inbounds %"class.std::ios_base", ptr %62, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !64
  %65 = or i32 %64, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %62, i32 noundef %65)
  br label %69

66:                                               ; preds = %53
  %67 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %56) #21
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull %56, i64 noundef %67)
  br label %69

69:                                               ; preds = %58, %66
  %70 = call noundef zeroext i1 @_ZN13NED1Generator13hasExpressionEP10NEDElementPKc(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull @.str.74)
  br i1 %70, label %74, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %73, ptr noundef nonnull %1, ptr noundef nonnull @.str.77)
  br label %74

74:                                               ; preds = %71, %69
  call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, ptr noundef %2)
  %75 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %76 = trunc i64 %75 to i32
  %77 = load i32, ptr %0, align 8, !tbaa !47
  %78 = add nsw i32 %77, %76
  %79 = icmp slt i32 %78, 70
  %80 = select i1 %79, i32 %78, i32 %76
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 0, %81
  %83 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %82
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 17, ptr noundef nonnull %83, ptr noundef nonnull @.str.10)
  %84 = load ptr, ptr %8, align 8, !tbaa !41
  %85 = select i1 %3, ptr @.str.14, ptr @.str.15
  %86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull %85, i64 noundef 1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %87 = load ptr, ptr %7, align 8, !tbaa !60
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !74
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef %87, i64 noundef %89)
          to label %91 unwind label %100

91:                                               ; preds = %74
  %92 = load ptr, ptr %7, align 8, !tbaa !60
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i64, ptr %88, align 8, !tbaa !74
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %99

98:                                               ; preds = %91
  call void @_ZdlPv(ptr noundef %92) #23
  br label %99

99:                                               ; preds = %95, %98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  ret void

100:                                              ; preds = %74
  %101 = landingpad { ptr, i32 }
          cleanup
  %102 = load ptr, ptr %7, align 8, !tbaa !60
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i64, ptr %88, align 8, !tbaa !74
  %107 = icmp ult i64 %106, 16
  call void @llvm.assume(i1 %107)
  br label %109

108:                                              ; preds = %100
  call void @_ZdlPv(ptr noundef %102) #23
  br label %109

109:                                              ; preds = %105, %108
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %110

110:                                              ; preds = %109, %52
  %111 = phi { ptr, i32 } [ %101, %109 ], [ %44, %52 ]
  resume { ptr, i32 } %111
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator6doGateEP11GateElementPKcbS3_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 673, ptr noundef %1, ptr noundef nonnull @.str.43)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator7doTypesEP12TypesElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readnone %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef %1, ptr noundef nonnull @.str.78)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator12doSubmodulesEP17SubmodulesElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %10 = load ptr, ptr %6, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !74
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %10, i64 noundef %12)
          to label %14 unwind label %60

14:                                               ; preds = %5
  %15 = load ptr, ptr %6, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, ptr %11, align 8, !tbaa !74
  %20 = icmp ult i64 %19, 16
  call void @llvm.assume(i1 %20)
  br label %22

21:                                               ; preds = %14
  call void @_ZdlPv(ptr noundef %15) #23
  br label %22

22:                                               ; preds = %18, %21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %23 = load ptr, ptr %8, align 8, !tbaa !41
  %24 = icmp eq ptr %2, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !49
  %27 = getelementptr i8, ptr %26, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %23, i64 %28
  %30 = getelementptr inbounds %"class.std::ios_base", ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !64
  %32 = or i32 %31, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %29, i32 noundef %32)
  br label %36

33:                                               ; preds = %22
  %34 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %2, i64 noundef %34)
  br label %36

36:                                               ; preds = %25, %33
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.79, i64 noundef 11)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef %1)
  %38 = load ptr, ptr %7, align 8, !tbaa !60
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !74
  %41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %38, i64 noundef %40)
          to label %42 unwind label %70

42:                                               ; preds = %36
  %43 = load ptr, ptr %7, align 8, !tbaa !60
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, ptr %39, align 8, !tbaa !74
  %48 = icmp ult i64 %47, 16
  call void @llvm.assume(i1 %48)
  br label %50

49:                                               ; preds = %42
  call void @_ZdlPv(ptr noundef %43) #23
  br label %50

50:                                               ; preds = %46, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  %51 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %52 = trunc i64 %51 to i32
  %53 = load i32, ptr %0, align 8, !tbaa !47
  %54 = add nsw i32 %53, %52
  %55 = icmp slt i32 %54, 70
  %56 = select i1 %55, i32 %54, i32 %52
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 0, %57
  %59 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %58
  call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %59, ptr noundef null)
  ret void

60:                                               ; preds = %5
  %61 = landingpad { ptr, i32 }
          cleanup
  %62 = load ptr, ptr %6, align 8, !tbaa !60
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i64, ptr %11, align 8, !tbaa !74
  %67 = icmp ult i64 %66, 16
  call void @llvm.assume(i1 %67)
  br label %69

68:                                               ; preds = %60
  call void @_ZdlPv(ptr noundef %62) #23
  br label %69

69:                                               ; preds = %65, %68
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %80

70:                                               ; preds = %36
  %71 = landingpad { ptr, i32 }
          cleanup
  %72 = load ptr, ptr %7, align 8, !tbaa !60
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i64, ptr %39, align 8, !tbaa !74
  %77 = icmp ult i64 %76, 16
  call void @llvm.assume(i1 %77)
  br label %79

78:                                               ; preds = %70
  call void @_ZdlPv(ptr noundef %72) #23
  br label %79

79:                                               ; preds = %75, %78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %80

80:                                               ; preds = %79, %69
  %81 = phi { ptr, i32 } [ %71, %79 ], [ %61, %69 ]
  resume { ptr, i32 } %81
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator11doSubmoduleEP16SubmoduleElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %18 = load ptr, ptr %6, align 8, !tbaa !60
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !74
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %18, i64 noundef %20)
          to label %22 unwind label %83

22:                                               ; preds = %5
  %23 = load ptr, ptr %6, align 8, !tbaa !60
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, ptr %19, align 8, !tbaa !74
  %28 = icmp ult i64 %27, 16
  call void @llvm.assume(i1 %28)
  br label %30

29:                                               ; preds = %22
  call void @_ZdlPv(ptr noundef %23) #23
  br label %30

30:                                               ; preds = %26, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %31 = load ptr, ptr %16, align 8, !tbaa !41
  %32 = icmp eq ptr %2, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !49
  %35 = getelementptr i8, ptr %34, i64 -24
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds i8, ptr %31, i64 %36
  %38 = getelementptr inbounds %"class.std::ios_base", ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !64
  %40 = or i32 %39, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %37, i32 noundef %40)
  br label %44

41:                                               ; preds = %30
  %42 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %2, i64 noundef %42)
  br label %44

44:                                               ; preds = %33, %41
  %45 = getelementptr inbounds %class.SubmoduleElement, ptr %1, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load ptr, ptr %31, align 8, !tbaa !49
  %50 = getelementptr i8, ptr %49, i64 -24
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds i8, ptr %31, i64 %51
  %53 = getelementptr inbounds %"class.std::ios_base", ptr %52, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !64
  %55 = or i32 %54, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %52, i32 noundef %55)
  br label %59

56:                                               ; preds = %44
  %57 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %46) #21
  %58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %46, i64 noundef %57)
  br label %59

59:                                               ; preds = %48, %56
  %60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.50, i64 noundef 2)
  %61 = getelementptr inbounds %class.SubmoduleElement, ptr %1, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !60
  %63 = icmp eq ptr %62, null
  br i1 %63, label %95, label %64

64:                                               ; preds = %59
  %65 = load i8, ptr %62, align 1, !tbaa !70
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %95, label %67

67:                                               ; preds = %64
  call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.80, ptr noundef %2)
  call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, ptr noundef %2)
  %68 = load ptr, ptr %16, align 8, !tbaa !41
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef nonnull @.str.81, i64 noundef 6)
  %70 = load ptr, ptr %61, align 8, !tbaa !60
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load ptr, ptr %68, align 8, !tbaa !49
  %74 = getelementptr i8, ptr %73, i64 -24
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr inbounds i8, ptr %68, i64 %75
  %77 = getelementptr inbounds %"class.std::ios_base", ptr %76, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !64
  %79 = or i32 %78, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %76, i32 noundef %79)
  br label %112

80:                                               ; preds = %67
  %81 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %70) #21
  %82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef nonnull %70, i64 noundef %81)
  br label %112

83:                                               ; preds = %5
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = extractvalue { ptr, i32 } %84, 0
  %86 = extractvalue { ptr, i32 } %84, 1
  %87 = load ptr, ptr %6, align 8, !tbaa !60
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i64, ptr %19, align 8, !tbaa !74
  %92 = icmp ult i64 %91, 16
  call void @llvm.assume(i1 %92)
  br label %94

93:                                               ; preds = %83
  call void @_ZdlPv(ptr noundef %87) #23
  br label %94

94:                                               ; preds = %90, %93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %379

95:                                               ; preds = %59, %64
  %96 = load ptr, ptr %16, align 8, !tbaa !41
  %97 = getelementptr inbounds %class.SubmoduleElement, ptr %1, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !60
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load ptr, ptr %96, align 8, !tbaa !49
  %102 = getelementptr i8, ptr %101, i64 -24
  %103 = load i64, ptr %102, align 8
  %104 = getelementptr inbounds i8, ptr %96, i64 %103
  %105 = getelementptr inbounds %"class.std::ios_base", ptr %104, i64 0, i32 5
  %106 = load i32, ptr %105, align 8, !tbaa !64
  %107 = or i32 %106, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %104, i32 noundef %107)
  br label %111

108:                                              ; preds = %95
  %109 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %98) #21
  %110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef nonnull %98, i64 noundef %109)
  br label %111

111:                                              ; preds = %100, %108
  call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.74, ptr noundef %2)
  br label %112

112:                                              ; preds = %80, %72, %111
  %113 = load ptr, ptr %16, align 8, !tbaa !41
  %114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull @.str.14, i64 noundef 1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %115 = load ptr, ptr %7, align 8, !tbaa !60
  %116 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !74
  %118 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef %115, i64 noundef %117)
          to label %119 unwind label %244

119:                                              ; preds = %112
  %120 = load ptr, ptr %7, align 8, !tbaa !60
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %122 = icmp eq ptr %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i64, ptr %116, align 8, !tbaa !74
  %125 = icmp ult i64 %124, 16
  call void @llvm.assume(i1 %125)
  br label %127

126:                                              ; preds = %119
  call void @_ZdlPv(ptr noundef %120) #23
  br label %127

127:                                              ; preds = %123, %126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  %128 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %129 = trunc i64 %128 to i32
  %130 = load i32, ptr %0, align 8, !tbaa !47
  %131 = add nsw i32 %130, %129
  %132 = icmp slt i32 %131, 70
  %133 = select i1 %132, i32 %131, i32 %129
  %134 = sext i32 %133 to i64
  %135 = sub nsw i64 0, %134
  %136 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %135
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 14, ptr noundef nonnull %136, ptr noundef null)
  %137 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %138 = trunc i64 %137 to i32
  %139 = load i32, ptr %0, align 8, !tbaa !47
  %140 = add nsw i32 %139, %138
  %141 = icmp slt i32 %140, 70
  %142 = select i1 %141, i32 %140, i32 %138
  %143 = sext i32 %142 to i64
  %144 = sub nsw i64 0, %143
  %145 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %144
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 19, ptr noundef nonnull %145, ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  call void @_ZN13NED1Generator18getDisplayStringOfB5cxx11EP10NEDElementRP15PropertyElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %146 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %147 = load i64, ptr %146, align 8, !tbaa !74
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %359, label %149

149:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #21
  %150 = load ptr, ptr %9, align 8, !tbaa !60
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %150)
          to label %151 unwind label %256

151:                                              ; preds = %149
  %152 = load ptr, ptr %11, align 8, !tbaa !60
  invoke void @_ZN17DisplayStringUtil27toOldSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %152)
          to label %153 unwind label %258

153:                                              ; preds = %151
  %154 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10) #21
  %155 = load ptr, ptr %10, align 8, !tbaa !60
  %156 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %160 = load i64, ptr %159, align 8, !tbaa !74
  %161 = icmp ult i64 %160, 16
  call void @llvm.assume(i1 %161)
  br label %163

162:                                              ; preds = %153
  call void @_ZdlPv(ptr noundef %155) #23
  br label %163

163:                                              ; preds = %158, %162
  %164 = load ptr, ptr %11, align 8, !tbaa !60
  %165 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !74
  %170 = icmp ult i64 %169, 16
  call void @llvm.assume(i1 %170)
  br label %172

171:                                              ; preds = %163
  call void @_ZdlPv(ptr noundef %164) #23
  br label %172

172:                                              ; preds = %167, %171
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  %173 = load ptr, ptr %16, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #21
  %174 = load ptr, ptr %8, align 8, !tbaa !90
  %175 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %176 = trunc i64 %175 to i32
  %177 = load i32, ptr %0, align 8, !tbaa !47
  %178 = add nsw i32 %177, %176
  %179 = icmp slt i32 %178, 70
  %180 = select i1 %179, i32 %178, i32 %176
  %181 = sext i32 %180 to i64
  %182 = sub nsw i64 0, %181
  %183 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %182
  invoke void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull align 8 poison, ptr noundef %174, ptr noundef nonnull %183)
          to label %184 unwind label %270

184:                                              ; preds = %172
  %185 = load ptr, ptr %12, align 8, !tbaa !60
  %186 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %187 = load i64, ptr %186, align 8, !tbaa !74
  %188 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %173, ptr noundef %185, i64 noundef %187)
          to label %189 unwind label %272

189:                                              ; preds = %184
  %190 = load ptr, ptr %12, align 8, !tbaa !60
  %191 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %192 = icmp eq ptr %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i64, ptr %186, align 8, !tbaa !74
  %195 = icmp ult i64 %194, 16
  call void @llvm.assume(i1 %195)
  br label %197

196:                                              ; preds = %189
  call void @_ZdlPv(ptr noundef %190) #23
  br label %197

197:                                              ; preds = %193, %196
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #21
  %198 = load ptr, ptr %16, align 8, !tbaa !41
  %199 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %200 = trunc i64 %199 to i32
  %201 = load i32, ptr %0, align 8, !tbaa !47
  %202 = add nsw i32 %201, %200
  %203 = icmp slt i32 %202, 70
  %204 = select i1 %203, i32 %202, i32 %200
  %205 = sext i32 %204 to i64
  %206 = sub nsw i64 0, %205
  %207 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %206
  %208 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %207) #21
  %209 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %198, ptr noundef nonnull %207, i64 noundef %208)
          to label %210 unwind label %283

210:                                              ; preds = %197
  %211 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %198, ptr noundef nonnull @.str.24, i64 noundef 9)
          to label %212 unwind label %283

212:                                              ; preds = %210
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #21
  %213 = load ptr, ptr %9, align 8, !tbaa !60
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %213)
          to label %214 unwind label %285

214:                                              ; preds = %212
  %215 = load ptr, ptr %13, align 8, !tbaa !60
  %216 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %217 = load i64, ptr %216, align 8, !tbaa !74
  %218 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %198, ptr noundef %215, i64 noundef %217)
          to label %219 unwind label %287

219:                                              ; preds = %214
  %220 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %218, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %221 unwind label %287

221:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #21
  invoke void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull align 8 poison, ptr noundef %174)
          to label %222 unwind label %289

222:                                              ; preds = %221
  %223 = load ptr, ptr %14, align 8, !tbaa !60
  %224 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %225 = load i64, ptr %224, align 8, !tbaa !74
  %226 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %218, ptr noundef %223, i64 noundef %225)
          to label %227 unwind label %291

227:                                              ; preds = %222
  %228 = load ptr, ptr %14, align 8, !tbaa !60
  %229 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %230 = icmp eq ptr %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load i64, ptr %224, align 8, !tbaa !74
  %233 = icmp ult i64 %232, 16
  call void @llvm.assume(i1 %233)
  br label %235

234:                                              ; preds = %227
  call void @_ZdlPv(ptr noundef %228) #23
  br label %235

235:                                              ; preds = %231, %234
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #21
  %236 = load ptr, ptr %13, align 8, !tbaa !60
  %237 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %238 = icmp eq ptr %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i64, ptr %216, align 8, !tbaa !74
  %241 = icmp ult i64 %240, 16
  call void @llvm.assume(i1 %241)
  br label %243

242:                                              ; preds = %235
  call void @_ZdlPv(ptr noundef %236) #23
  br label %243

243:                                              ; preds = %239, %242
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #21
  br label %359

244:                                              ; preds = %112
  %245 = landingpad { ptr, i32 }
          cleanup
  %246 = extractvalue { ptr, i32 } %245, 0
  %247 = extractvalue { ptr, i32 } %245, 1
  %248 = load ptr, ptr %7, align 8, !tbaa !60
  %249 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %250 = icmp eq ptr %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = load i64, ptr %116, align 8, !tbaa !74
  %253 = icmp ult i64 %252, 16
  call void @llvm.assume(i1 %253)
  br label %255

254:                                              ; preds = %244
  call void @_ZdlPv(ptr noundef %248) #23
  br label %255

255:                                              ; preds = %251, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %379

256:                                              ; preds = %149
  %257 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %268

258:                                              ; preds = %151
  %259 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %260 = load ptr, ptr %11, align 8, !tbaa !60
  %261 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %262 = icmp eq ptr %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %258
  %264 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %265 = load i64, ptr %264, align 8, !tbaa !74
  %266 = icmp ult i64 %265, 16
  call void @llvm.assume(i1 %266)
  br label %268

267:                                              ; preds = %258
  call void @_ZdlPv(ptr noundef %260) #23
  br label %268

268:                                              ; preds = %267, %263, %256
  %269 = phi { ptr, i32 } [ %257, %256 ], [ %259, %263 ], [ %259, %267 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  br label %313

270:                                              ; preds = %172
  %271 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %281

272:                                              ; preds = %184
  %273 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %274 = load ptr, ptr %12, align 8, !tbaa !60
  %275 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %276 = icmp eq ptr %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = load i64, ptr %186, align 8, !tbaa !74
  %279 = icmp ult i64 %278, 16
  call void @llvm.assume(i1 %279)
  br label %281

280:                                              ; preds = %272
  call void @_ZdlPv(ptr noundef %274) #23
  br label %281

281:                                              ; preds = %280, %277, %270
  %282 = phi { ptr, i32 } [ %271, %270 ], [ %273, %277 ], [ %273, %280 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #21
  br label %313

283:                                              ; preds = %210, %197
  %284 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %313

285:                                              ; preds = %212
  %286 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %311

287:                                              ; preds = %219, %214
  %288 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %302

289:                                              ; preds = %221
  %290 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %300

291:                                              ; preds = %222
  %292 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %293 = load ptr, ptr %14, align 8, !tbaa !60
  %294 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %295 = icmp eq ptr %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load i64, ptr %224, align 8, !tbaa !74
  %298 = icmp ult i64 %297, 16
  call void @llvm.assume(i1 %298)
  br label %300

299:                                              ; preds = %291
  call void @_ZdlPv(ptr noundef %293) #23
  br label %300

300:                                              ; preds = %299, %296, %289
  %301 = phi { ptr, i32 } [ %290, %289 ], [ %292, %296 ], [ %292, %299 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #21
  br label %302

302:                                              ; preds = %300, %287
  %303 = phi { ptr, i32 } [ %301, %300 ], [ %288, %287 ]
  %304 = load ptr, ptr %13, align 8, !tbaa !60
  %305 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %306 = icmp eq ptr %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = load i64, ptr %216, align 8, !tbaa !74
  %309 = icmp ult i64 %308, 16
  call void @llvm.assume(i1 %309)
  br label %311

310:                                              ; preds = %302
  call void @_ZdlPv(ptr noundef %304) #23
  br label %311

311:                                              ; preds = %310, %307, %285
  %312 = phi { ptr, i32 } [ %286, %285 ], [ %303, %307 ], [ %303, %310 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #21
  br label %313

313:                                              ; preds = %311, %283, %281, %268
  %314 = phi { ptr, i32 } [ %312, %311 ], [ %284, %283 ], [ %282, %281 ], [ %269, %268 ]
  %315 = extractvalue { ptr, i32 } %314, 0
  %316 = extractvalue { ptr, i32 } %314, 1
  %317 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #21
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %368

319:                                              ; preds = %313
  %320 = call ptr @__cxa_begin_catch(ptr %315) #21
  %321 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #21
  %323 = load ptr, ptr %320, align 8, !tbaa !49
  %324 = getelementptr inbounds ptr, ptr %323, i64 2
  %325 = load ptr, ptr %324, align 8
  %326 = call noundef ptr %325(ptr noundef nonnull align 8 dereferenceable(8) %320) #21
  invoke void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull @.str.25, ptr noundef %326)
          to label %327 unwind label %339

327:                                              ; preds = %319
  %328 = load ptr, ptr %15, align 8, !tbaa !60
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %322, ptr noundef nonnull %1, ptr noundef %328)
          to label %329 unwind label %341

329:                                              ; preds = %327
  %330 = load ptr, ptr %15, align 8, !tbaa !60
  %331 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %332 = icmp eq ptr %330, %331
  br i1 %332, label %333, label %337

333:                                              ; preds = %329
  %334 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  %335 = load i64, ptr %334, align 8, !tbaa !74
  %336 = icmp ult i64 %335, 16
  call void @llvm.assume(i1 %336)
  br label %338

337:                                              ; preds = %329
  call void @_ZdlPv(ptr noundef %330) #23
  br label %338

338:                                              ; preds = %333, %337
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #21
  invoke void @__cxa_end_catch()
          to label %359 unwind label %353

339:                                              ; preds = %319
  %340 = landingpad { ptr, i32 }
          cleanup
  br label %351

341:                                              ; preds = %327
  %342 = landingpad { ptr, i32 }
          cleanup
  %343 = load ptr, ptr %15, align 8, !tbaa !60
  %344 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %345 = icmp eq ptr %343, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %341
  %347 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  %348 = load i64, ptr %347, align 8, !tbaa !74
  %349 = icmp ult i64 %348, 16
  call void @llvm.assume(i1 %349)
  br label %351

350:                                              ; preds = %341
  call void @_ZdlPv(ptr noundef %343) #23
  br label %351

351:                                              ; preds = %350, %346, %339
  %352 = phi { ptr, i32 } [ %340, %339 ], [ %342, %346 ], [ %342, %350 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #21
  invoke void @__cxa_end_catch()
          to label %355 unwind label %384

353:                                              ; preds = %338
  %354 = landingpad { ptr, i32 }
          cleanup
  br label %355

355:                                              ; preds = %351, %353
  %356 = phi { ptr, i32 } [ %354, %353 ], [ %352, %351 ]
  %357 = extractvalue { ptr, i32 } %356, 0
  %358 = extractvalue { ptr, i32 } %356, 1
  br label %368

359:                                              ; preds = %338, %243, %127
  %360 = load ptr, ptr %9, align 8, !tbaa !60
  %361 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %362 = icmp eq ptr %360, %361
  br i1 %362, label %363, label %366

363:                                              ; preds = %359
  %364 = load i64, ptr %146, align 8, !tbaa !74
  %365 = icmp ult i64 %364, 16
  call void @llvm.assume(i1 %365)
  br label %367

366:                                              ; preds = %359
  call void @_ZdlPv(ptr noundef %360) #23
  br label %367

367:                                              ; preds = %363, %366
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  ret void

368:                                              ; preds = %355, %313
  %369 = phi i32 [ %358, %355 ], [ %316, %313 ]
  %370 = phi ptr [ %357, %355 ], [ %315, %313 ]
  %371 = load ptr, ptr %9, align 8, !tbaa !60
  %372 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %373 = icmp eq ptr %371, %372
  br i1 %373, label %374, label %377

374:                                              ; preds = %368
  %375 = load i64, ptr %146, align 8, !tbaa !74
  %376 = icmp ult i64 %375, 16
  call void @llvm.assume(i1 %376)
  br label %378

377:                                              ; preds = %368
  call void @_ZdlPv(ptr noundef %371) #23
  br label %378

378:                                              ; preds = %374, %377
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %379

379:                                              ; preds = %378, %255, %94
  %380 = phi i32 [ %369, %378 ], [ %247, %255 ], [ %86, %94 ]
  %381 = phi ptr [ %370, %378 ], [ %246, %255 ], [ %85, %94 ]
  %382 = insertvalue { ptr, i32 } poison, ptr %381, 0
  %383 = insertvalue { ptr, i32 } %382, i32 %380, 1
  resume { ptr, i32 } %383

384:                                              ; preds = %351
  %385 = landingpad { ptr, i32 }
          catch ptr null
  %386 = extractvalue { ptr, i32 } %385, 0
  call void @__clang_call_terminate(ptr %386) #25
  unreachable
}

declare void @_ZN17DisplayStringUtil27toOldSubmoduleDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !73
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.146) #24
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store i64 %9, ptr %4, align 8, !tbaa !109
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !110

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !60
  %13 = load i64, ptr %4, align 8, !tbaa !109
  store i64 %13, ptr %5, align 8, !tbaa !70
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !60
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !111

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !70
  store i8 %17, ptr %15, align 1, !tbaa !70
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !112
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !109
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !74
  %22 = load ptr, ptr %0, align 8, !tbaa !60
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator13doConnectionsEP18ConnectionsElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !74
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %11, i64 noundef %13)
          to label %15 unwind label %56

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 8, !tbaa !60
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, ptr %12, align 8, !tbaa !74
  %21 = icmp ult i64 %20, 16
  call void @llvm.assume(i1 %21)
  br label %23

22:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %16) #23
  br label %23

23:                                               ; preds = %19, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %24 = getelementptr inbounds %class.ConnectionsElement, ptr %1, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !113, !range !101, !noundef !102
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %9, align 8, !tbaa !41
  %28 = icmp eq ptr %2, null
  br i1 %26, label %76, label %29

29:                                               ; preds = %23
  br i1 %28, label %30, label %38

30:                                               ; preds = %29
  %31 = load ptr, ptr %27, align 8, !tbaa !49
  %32 = getelementptr i8, ptr %31, i64 -24
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds i8, ptr %27, i64 %33
  %35 = getelementptr inbounds %"class.std::ios_base", ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !64
  %37 = or i32 %36, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %34, i32 noundef %37)
  br label %41

38:                                               ; preds = %29
  %39 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %2, i64 noundef %39)
  br label %41

41:                                               ; preds = %30, %38
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.82, i64 noundef 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %43 = load ptr, ptr %7, align 8, !tbaa !60
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !74
  %46 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %43, i64 noundef %45)
          to label %47 unwind label %66

47:                                               ; preds = %41
  %48 = load ptr, ptr %7, align 8, !tbaa !60
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, ptr %44, align 8, !tbaa !74
  %53 = icmp ult i64 %52, 16
  call void @llvm.assume(i1 %53)
  br label %55

54:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %48) #23
  br label %55

55:                                               ; preds = %51, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %113

56:                                               ; preds = %5
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = load ptr, ptr %6, align 8, !tbaa !60
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i64, ptr %12, align 8, !tbaa !74
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %56
  call void @_ZdlPv(ptr noundef %58) #23
  br label %65

65:                                               ; preds = %61, %64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %123

66:                                               ; preds = %41
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = load ptr, ptr %7, align 8, !tbaa !60
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i64, ptr %44, align 8, !tbaa !74
  %73 = icmp ult i64 %72, 16
  call void @llvm.assume(i1 %73)
  br label %75

74:                                               ; preds = %66
  call void @_ZdlPv(ptr noundef %68) #23
  br label %75

75:                                               ; preds = %71, %74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %123

76:                                               ; preds = %23
  br i1 %28, label %77, label %85

77:                                               ; preds = %76
  %78 = load ptr, ptr %27, align 8, !tbaa !49
  %79 = getelementptr i8, ptr %78, i64 -24
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds i8, ptr %27, i64 %80
  %82 = getelementptr inbounds %"class.std::ios_base", ptr %81, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !64
  %84 = or i32 %83, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %81, i32 noundef %84)
  br label %88

85:                                               ; preds = %76
  %86 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %2, i64 noundef %86)
  br label %88

88:                                               ; preds = %77, %85
  %89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.83, i64 noundef 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %90 = load ptr, ptr %8, align 8, !tbaa !60
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !74
  %93 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %90, i64 noundef %92)
          to label %94 unwind label %103

94:                                               ; preds = %88
  %95 = load ptr, ptr %8, align 8, !tbaa !60
  %96 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i64, ptr %91, align 8, !tbaa !74
  %100 = icmp ult i64 %99, 16
  call void @llvm.assume(i1 %100)
  br label %102

101:                                              ; preds = %94
  call void @_ZdlPv(ptr noundef %95) #23
  br label %102

102:                                              ; preds = %98, %101
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  br label %113

103:                                              ; preds = %88
  %104 = landingpad { ptr, i32 }
          cleanup
  %105 = load ptr, ptr %8, align 8, !tbaa !60
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %107 = icmp eq ptr %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i64, ptr %91, align 8, !tbaa !74
  %110 = icmp ult i64 %109, 16
  call void @llvm.assume(i1 %110)
  br label %112

111:                                              ; preds = %103
  call void @_ZdlPv(ptr noundef %105) #23
  br label %112

112:                                              ; preds = %108, %111
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  br label %123

113:                                              ; preds = %102, %55
  %114 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %115 = trunc i64 %114 to i32
  %116 = load i32, ptr %0, align 8, !tbaa !47
  %117 = add nsw i32 %116, %115
  %118 = icmp slt i32 %117, 70
  %119 = select i1 %118, i32 %117, i32 %115
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 0, %120
  %122 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %121
  call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %122, ptr noundef null)
  ret void

123:                                              ; preds = %112, %75, %65
  %124 = phi { ptr, i32 } [ %67, %75 ], [ %104, %112 ], [ %57, %65 ]
  resume { ptr, i32 } %124
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator12doConnectionEP17ConnectionElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 13
  %15 = load i32, ptr %14, align 4, !tbaa !115
  switch i32 %15, label %20 [
    i32 1, label %21
    i32 0, label %16
    i32 2, label %17
  ]

16:                                               ; preds = %5
  br label %21

17:                                               ; preds = %5
  %18 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %19, ptr noundef nonnull %1, ptr noundef nonnull @.str.86)
  br label %21

20:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 803, ptr noundef nonnull %1, ptr noundef nonnull @.str.88)
  br label %21

21:                                               ; preds = %5, %20, %17, %16
  %22 = phi i1 [ undef, %20 ], [ true, %17 ], [ false, %16 ], [ true, %5 ]
  %23 = phi ptr [ undef, %20 ], [ @.str.87, %17 ], [ @.str.85, %16 ], [ @.str.84, %5 ]
  %24 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef %2)
  %26 = load ptr, ptr %6, align 8, !tbaa !60
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !74
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %26, i64 noundef %28)
          to label %30 unwind label %63

30:                                               ; preds = %21
  %31 = load ptr, ptr %6, align 8, !tbaa !60
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, ptr %27, align 8, !tbaa !74
  %36 = icmp ult i64 %35, 16
  call void @llvm.assume(i1 %36)
  br label %38

37:                                               ; preds = %30
  call void @_ZdlPv(ptr noundef %31) #23
  br label %38

38:                                               ; preds = %34, %37
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %39 = load ptr, ptr %24, align 8, !tbaa !41
  %40 = icmp eq ptr %2, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load ptr, ptr %39, align 8, !tbaa !49
  %43 = getelementptr i8, ptr %42, i64 -24
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds i8, ptr %39, i64 %44
  %46 = getelementptr inbounds %"class.std::ios_base", ptr %45, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !64
  %48 = or i32 %47, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %45, i32 noundef %48)
  br label %52

49:                                               ; preds = %38
  %50 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull %2, i64 noundef %50)
  br label %52

52:                                               ; preds = %41, %49
  br i1 %22, label %53, label %75

53:                                               ; preds = %52
  %54 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !60
  %56 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 4
  %59 = load i8, ptr %58, align 8, !tbaa !117, !range !101, !noundef !102
  %60 = icmp ne i8 %59, 0
  %61 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !118
  call void @_ZN13NED1Generator19printConnectionGateEP10NEDElementPKcS3_S3_S3_biS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %55, ptr noundef nonnull @.str.89, ptr noundef %57, ptr noundef nonnull @.str.90, i1 noundef zeroext %60, i32 noundef %62, ptr noundef %2)
  br label %85

63:                                               ; preds = %21
  %64 = landingpad { ptr, i32 }
          cleanup
  %65 = extractvalue { ptr, i32 } %64, 0
  %66 = extractvalue { ptr, i32 } %64, 1
  %67 = load ptr, ptr %6, align 8, !tbaa !60
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i64, ptr %27, align 8, !tbaa !74
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %63
  call void @_ZdlPv(ptr noundef %67) #23
  br label %74

74:                                               ; preds = %70, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %322

75:                                               ; preds = %52
  %76 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !60
  %78 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !60
  %80 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 10
  %81 = load i8, ptr %80, align 8, !tbaa !119, !range !101, !noundef !102
  %82 = icmp ne i8 %81, 0
  %83 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 12
  %84 = load i32, ptr %83, align 8, !tbaa !120
  call void @_ZN13NED1Generator19printConnectionGateEP10NEDElementPKcS3_S3_S3_biS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %77, ptr noundef nonnull @.str.91, ptr noundef %79, ptr noundef nonnull @.str.92, i1 noundef zeroext %82, i32 noundef %84, ptr noundef %2)
  br label %85

85:                                               ; preds = %53, %75
  %86 = load ptr, ptr %24, align 8, !tbaa !41
  %87 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #21
  %88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull %23, i64 noundef %87)
  %89 = load ptr, ptr %1, align 8, !tbaa !49
  %90 = getelementptr inbounds ptr, ptr %89, i64 30
  %91 = load ptr, ptr %90, align 8
  %92 = call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 26)
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %85
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 26, ptr noundef %2, ptr noundef %23)
  br label %95

95:                                               ; preds = %94, %85
  %96 = load ptr, ptr %24, align 8, !tbaa !41
  %97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef nonnull @.str.10, i64 noundef 1)
  br i1 %22, label %98, label %108

98:                                               ; preds = %95
  %99 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !60
  %101 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 9
  %102 = load ptr, ptr %101, align 8, !tbaa !60
  %103 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 10
  %104 = load i8, ptr %103, align 8, !tbaa !119, !range !101, !noundef !102
  %105 = icmp ne i8 %104, 0
  %106 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 12
  %107 = load i32, ptr %106, align 8, !tbaa !120
  call void @_ZN13NED1Generator19printConnectionGateEP10NEDElementPKcS3_S3_S3_biS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %100, ptr noundef nonnull @.str.91, ptr noundef %102, ptr noundef nonnull @.str.92, i1 noundef zeroext %105, i32 noundef %107, ptr noundef %2)
  br label %118

108:                                              ; preds = %95
  %109 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !60
  %111 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !60
  %113 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 4
  %114 = load i8, ptr %113, align 8, !tbaa !117, !range !101, !noundef !102
  %115 = icmp ne i8 %114, 0
  %116 = getelementptr inbounds %class.ConnectionElement, ptr %1, i64 0, i32 6
  %117 = load i32, ptr %116, align 8, !tbaa !118
  call void @_ZN13NED1Generator19printConnectionGateEP10NEDElementPKcS3_S3_S3_biS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %110, ptr noundef nonnull @.str.89, ptr noundef %112, ptr noundef nonnull @.str.90, i1 noundef zeroext %115, i32 noundef %117, ptr noundef %2)
  br label %118

118:                                              ; preds = %108, %98
  %119 = load ptr, ptr %1, align 8, !tbaa !49
  %120 = getelementptr inbounds ptr, ptr %119, i64 30
  %121 = load ptr, ptr %120, align 8
  %122 = call noundef ptr %121(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 28)
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %126, ptr noundef nonnull %1, ptr noundef nonnull @.str.93)
  br label %127

127:                                              ; preds = %124, %118
  %128 = load ptr, ptr %1, align 8, !tbaa !49
  %129 = getelementptr inbounds ptr, ptr %128, i64 33
  %130 = load ptr, ptr %129, align 8
  %131 = call noundef i32 %130(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 29)
  %132 = icmp sgt i32 %131, 1
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !48
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %135, ptr noundef nonnull %1, ptr noundef nonnull @.str.94)
  br label %136

136:                                              ; preds = %133, %127
  %137 = load ptr, ptr %1, align 8, !tbaa !49
  %138 = getelementptr inbounds ptr, ptr %137, i64 30
  %139 = load ptr, ptr %138, align 8
  %140 = call noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 29)
  %141 = icmp eq ptr %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load ptr, ptr %24, align 8, !tbaa !41
  %144 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %143, ptr noundef nonnull @.str.105, i64 noundef 4)
  call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %140, ptr noundef nonnull @.str.106, ptr noundef %2)
  %145 = load ptr, ptr %24, align 8, !tbaa !41
  %146 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %145, ptr noundef nonnull @.str, i64 noundef 0)
  br label %147

147:                                              ; preds = %142, %136
  %148 = load ptr, ptr %1, align 8, !tbaa !49
  %149 = getelementptr inbounds ptr, ptr %148, i64 30
  %150 = load ptr, ptr %149, align 8
  %151 = call noundef ptr %150(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 26)
  %152 = icmp eq ptr %151, null
  br i1 %152, label %294, label %153

153:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  call void @_ZN13NED1Generator18getDisplayStringOfB5cxx11EP10NEDElementRP15PropertyElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull align 8 poison, ptr noundef nonnull %151, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %154 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %155 = load i64, ptr %154, align 8, !tbaa !74
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %274, label %157

157:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #21
  %158 = load ptr, ptr %8, align 8, !tbaa !60
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %158)
          to label %159 unwind label %199

159:                                              ; preds = %157
  %160 = load ptr, ptr %10, align 8, !tbaa !60
  invoke void @_ZN17DisplayStringUtil28toOldConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %160)
          to label %161 unwind label %201

161:                                              ; preds = %159
  %162 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #21
  %163 = load ptr, ptr %9, align 8, !tbaa !60
  %164 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %165 = icmp eq ptr %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %168 = load i64, ptr %167, align 8, !tbaa !74
  %169 = icmp ult i64 %168, 16
  call void @llvm.assume(i1 %169)
  br label %171

170:                                              ; preds = %161
  call void @_ZdlPv(ptr noundef %163) #23
  br label %171

171:                                              ; preds = %166, %170
  %172 = load ptr, ptr %10, align 8, !tbaa !60
  %173 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %174 = icmp eq ptr %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %177 = load i64, ptr %176, align 8, !tbaa !74
  %178 = icmp ult i64 %177, 16
  call void @llvm.assume(i1 %178)
  br label %180

179:                                              ; preds = %171
  call void @_ZdlPv(ptr noundef %172) #23
  br label %180

180:                                              ; preds = %175, %179
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  %181 = load ptr, ptr %24, align 8, !tbaa !41
  %182 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef nonnull @.str.95, i64 noundef 9)
          to label %183 unwind label %213

183:                                              ; preds = %180
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #21
  %184 = load ptr, ptr %8, align 8, !tbaa !60
  invoke void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %184)
          to label %185 unwind label %215

185:                                              ; preds = %183
  %186 = load ptr, ptr %11, align 8, !tbaa !60
  %187 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %188 = load i64, ptr %187, align 8, !tbaa !74
  %189 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef %186, i64 noundef %188)
          to label %190 unwind label %217

190:                                              ; preds = %185
  %191 = load ptr, ptr %11, align 8, !tbaa !60
  %192 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %193 = icmp eq ptr %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load i64, ptr %187, align 8, !tbaa !74
  %196 = icmp ult i64 %195, 16
  call void @llvm.assume(i1 %196)
  br label %198

197:                                              ; preds = %190
  call void @_ZdlPv(ptr noundef %191) #23
  br label %198

198:                                              ; preds = %194, %197
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #21
  br label %274

199:                                              ; preds = %157
  %200 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %211

201:                                              ; preds = %159
  %202 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %203 = load ptr, ptr %10, align 8, !tbaa !60
  %204 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %205 = icmp eq ptr %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %208 = load i64, ptr %207, align 8, !tbaa !74
  %209 = icmp ult i64 %208, 16
  call void @llvm.assume(i1 %209)
  br label %211

210:                                              ; preds = %201
  call void @_ZdlPv(ptr noundef %203) #23
  br label %211

211:                                              ; preds = %210, %206, %199
  %212 = phi { ptr, i32 } [ %200, %199 ], [ %202, %206 ], [ %202, %210 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #21
  br label %228

213:                                              ; preds = %180
  %214 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %228

215:                                              ; preds = %183
  %216 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %226

217:                                              ; preds = %185
  %218 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %219 = load ptr, ptr %11, align 8, !tbaa !60
  %220 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %221 = icmp eq ptr %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i64, ptr %187, align 8, !tbaa !74
  %224 = icmp ult i64 %223, 16
  call void @llvm.assume(i1 %224)
  br label %226

225:                                              ; preds = %217
  call void @_ZdlPv(ptr noundef %219) #23
  br label %226

226:                                              ; preds = %225, %222, %215
  %227 = phi { ptr, i32 } [ %216, %215 ], [ %218, %222 ], [ %218, %225 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #21
  br label %228

228:                                              ; preds = %226, %213, %211
  %229 = phi { ptr, i32 } [ %227, %226 ], [ %214, %213 ], [ %212, %211 ]
  %230 = extractvalue { ptr, i32 } %229, 0
  %231 = extractvalue { ptr, i32 } %229, 1
  %232 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #21
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %283

234:                                              ; preds = %228
  %235 = call ptr @__cxa_begin_catch(ptr %230) #21
  %236 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #21
  %238 = load ptr, ptr %235, align 8, !tbaa !49
  %239 = getelementptr inbounds ptr, ptr %238, i64 2
  %240 = load ptr, ptr %239, align 8
  %241 = call noundef ptr %240(ptr noundef nonnull align 8 dereferenceable(8) %235) #21
  invoke void (ptr, ptr, ...) @_Z11opp_stringfB5cxx11PKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.25, ptr noundef %241)
          to label %242 unwind label %254

242:                                              ; preds = %234
  %243 = load ptr, ptr %12, align 8, !tbaa !60
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %237, ptr noundef nonnull %1, ptr noundef %243)
          to label %244 unwind label %256

244:                                              ; preds = %242
  %245 = load ptr, ptr %12, align 8, !tbaa !60
  %246 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %247 = icmp eq ptr %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %244
  %249 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %250 = load i64, ptr %249, align 8, !tbaa !74
  %251 = icmp ult i64 %250, 16
  call void @llvm.assume(i1 %251)
  br label %253

252:                                              ; preds = %244
  call void @_ZdlPv(ptr noundef %245) #23
  br label %253

253:                                              ; preds = %248, %252
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #21
  invoke void @__cxa_end_catch()
          to label %274 unwind label %268

254:                                              ; preds = %234
  %255 = landingpad { ptr, i32 }
          cleanup
  br label %266

256:                                              ; preds = %242
  %257 = landingpad { ptr, i32 }
          cleanup
  %258 = load ptr, ptr %12, align 8, !tbaa !60
  %259 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %260 = icmp eq ptr %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %263 = load i64, ptr %262, align 8, !tbaa !74
  %264 = icmp ult i64 %263, 16
  call void @llvm.assume(i1 %264)
  br label %266

265:                                              ; preds = %256
  call void @_ZdlPv(ptr noundef %258) #23
  br label %266

266:                                              ; preds = %265, %261, %254
  %267 = phi { ptr, i32 } [ %255, %254 ], [ %257, %261 ], [ %257, %265 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #21
  invoke void @__cxa_end_catch()
          to label %270 unwind label %327

268:                                              ; preds = %253
  %269 = landingpad { ptr, i32 }
          cleanup
  br label %270

270:                                              ; preds = %266, %268
  %271 = phi { ptr, i32 } [ %269, %268 ], [ %267, %266 ]
  %272 = extractvalue { ptr, i32 } %271, 0
  %273 = extractvalue { ptr, i32 } %271, 1
  br label %283

274:                                              ; preds = %253, %198, %153
  %275 = load ptr, ptr %8, align 8, !tbaa !60
  %276 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %277 = icmp eq ptr %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = load i64, ptr %154, align 8, !tbaa !74
  %280 = icmp ult i64 %279, 16
  call void @llvm.assume(i1 %280)
  br label %282

281:                                              ; preds = %274
  call void @_ZdlPv(ptr noundef %275) #23
  br label %282

282:                                              ; preds = %278, %281
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %294

283:                                              ; preds = %270, %228
  %284 = phi i32 [ %273, %270 ], [ %231, %228 ]
  %285 = phi ptr [ %272, %270 ], [ %230, %228 ]
  %286 = load ptr, ptr %8, align 8, !tbaa !60
  %287 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %288 = icmp eq ptr %286, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %283
  %290 = load i64, ptr %154, align 8, !tbaa !74
  %291 = icmp ult i64 %290, 16
  call void @llvm.assume(i1 %291)
  br label %293

292:                                              ; preds = %283
  call void @_ZdlPv(ptr noundef %286) #23
  br label %293

293:                                              ; preds = %289, %292
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %322

294:                                              ; preds = %282, %147
  %295 = load ptr, ptr %24, align 8, !tbaa !41
  %296 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %295, ptr noundef nonnull @.str.14, i64 noundef 1)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull align 8 poison, ptr noundef nonnull %1)
  %297 = load ptr, ptr %13, align 8, !tbaa !60
  %298 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %299 = load i64, ptr %298, align 8, !tbaa !74
  %300 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %295, ptr noundef %297, i64 noundef %299)
          to label %301 unwind label %310

301:                                              ; preds = %294
  %302 = load ptr, ptr %13, align 8, !tbaa !60
  %303 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %304 = icmp eq ptr %302, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load i64, ptr %298, align 8, !tbaa !74
  %307 = icmp ult i64 %306, 16
  call void @llvm.assume(i1 %307)
  br label %309

308:                                              ; preds = %301
  call void @_ZdlPv(ptr noundef %302) #23
  br label %309

309:                                              ; preds = %305, %308
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #21
  ret void

310:                                              ; preds = %294
  %311 = landingpad { ptr, i32 }
          cleanup
  %312 = extractvalue { ptr, i32 } %311, 0
  %313 = extractvalue { ptr, i32 } %311, 1
  %314 = load ptr, ptr %13, align 8, !tbaa !60
  %315 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %316 = icmp eq ptr %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %310
  %318 = load i64, ptr %298, align 8, !tbaa !74
  %319 = icmp ult i64 %318, 16
  call void @llvm.assume(i1 %319)
  br label %321

320:                                              ; preds = %310
  call void @_ZdlPv(ptr noundef %314) #23
  br label %321

321:                                              ; preds = %317, %320
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #21
  br label %322

322:                                              ; preds = %293, %321, %74
  %323 = phi i32 [ %66, %74 ], [ %313, %321 ], [ %284, %293 ]
  %324 = phi ptr [ %65, %74 ], [ %312, %321 ], [ %285, %293 ]
  %325 = insertvalue { ptr, i32 } poison, ptr %324, 0
  %326 = insertvalue { ptr, i32 } %325, i32 %323, 1
  resume { ptr, i32 } %326

327:                                              ; preds = %266
  %328 = landingpad { ptr, i32 }
          catch ptr null
  %329 = extractvalue { ptr, i32 } %328, 0
  call void @__clang_call_terminate(ptr %329) #25
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator19printConnectionGateEP10NEDElementPKcS3_S3_S3_biS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #3 align 2 !prof !40 {
  %10 = icmp eq ptr %2, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %9
  %12 = load i8, ptr %2, align 1, !tbaa !70
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %2, i64 noundef %17)
  tail call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %3, ptr noundef %8)
  %19 = load ptr, ptr %15, align 8, !tbaa !41
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.107, i64 noundef 1)
  br label %21

21:                                               ; preds = %9, %14, %11
  %22 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = icmp eq ptr %4, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !49
  %27 = getelementptr i8, ptr %26, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %23, i64 %28
  %30 = getelementptr inbounds %"class.std::ios_base", ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !64
  %32 = or i32 %31, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %29, i32 noundef %32)
  br label %36

33:                                               ; preds = %21
  %34 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %4, i64 noundef %34)
  br label %36

36:                                               ; preds = %25, %33
  br i1 %6, label %37, label %40

37:                                               ; preds = %36
  %38 = load ptr, ptr %22, align 8, !tbaa !41
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull @.str.108, i64 noundef 2)
  br label %41

40:                                               ; preds = %36
  tail call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %5, ptr noundef %8)
  br label %41

41:                                               ; preds = %40, %37
  %42 = icmp eq i32 %7, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %45, ptr noundef %1, ptr noundef nonnull @.str.109)
  br label %46

46:                                               ; preds = %43, %41
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator11doConditionEP16ConditionElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.105, i64 noundef 4)
  tail call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull @.str.106, ptr noundef %2)
  br i1 %3, label %15, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %6, align 8, !tbaa !41
  %11 = icmp eq ptr %4, null
  %12 = select i1 %11, ptr @.str, ptr %4
  %13 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #21
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %12, i64 noundef %13)
  br label %15

15:                                               ; preds = %9, %5
  ret void
}

declare void @_ZN17DisplayStringUtil28toOldConnectionDisplayStringB5cxx11EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator13doChannelSpecEP18ChannelSpecElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readonly %2, i1 zeroext %3, ptr noundef %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = load ptr, ptr %1, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 14)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !49
  %13 = getelementptr inbounds ptr, ptr %12, i64 30
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(112) %9, i32 noundef 15)
  %16 = icmp ne ptr %15, null
  br label %17

17:                                               ; preds = %11, %5
  %18 = phi i1 [ false, %5 ], [ %16, %11 ]
  %19 = getelementptr inbounds %class.ChannelSpecElement, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i8, ptr %20, align 1, !tbaa !70
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %27, ptr noundef nonnull %1, ptr noundef nonnull @.str.96)
  br label %100

28:                                               ; preds = %17, %22
  %29 = getelementptr inbounds %class.ChannelSpecElement, ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = icmp eq ptr %30, null
  br i1 %31, label %69, label %32

32:                                               ; preds = %28
  %33 = load i8, ptr %30, align 1, !tbaa !70
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !41
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull @.str.10, i64 noundef 1)
  %39 = load ptr, ptr %29, align 8, !tbaa !60
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load ptr, ptr %37, align 8, !tbaa !49
  %43 = getelementptr i8, ptr %42, i64 -24
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds i8, ptr %37, i64 %44
  %46 = getelementptr inbounds %"class.std::ios_base", ptr %45, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !64
  %48 = or i32 %47, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %45, i32 noundef %48)
  br label %52

49:                                               ; preds = %35
  %50 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #21
  %51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %39, i64 noundef %50)
  br label %52

52:                                               ; preds = %41, %49
  %53 = icmp eq ptr %4, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %52
  %55 = load ptr, ptr %37, align 8, !tbaa !49
  %56 = getelementptr i8, ptr %55, i64 -24
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds i8, ptr %37, i64 %57
  %59 = getelementptr inbounds %"class.std::ios_base", ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !64
  %61 = or i32 %60, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %58, i32 noundef %61)
  br label %65

62:                                               ; preds = %52
  %63 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21
  %64 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull %4, i64 noundef %63)
  br label %65

65:                                               ; preds = %54, %62
  br i1 %18, label %66, label %100

66:                                               ; preds = %65
  %67 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !48
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore10addWarningEP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(25) %68, ptr noundef nonnull %1, ptr noundef nonnull @.str.97)
  br label %100

69:                                               ; preds = %28, %32
  %70 = load ptr, ptr %1, align 8, !tbaa !49
  %71 = getelementptr inbounds ptr, ptr %70, i64 30
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 14)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %100, label %75

75:                                               ; preds = %69
  %76 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %77 = trunc i64 %76 to i32
  %78 = load i32, ptr %0, align 8, !tbaa !47
  %79 = add nsw i32 %78, %77
  %80 = icmp slt i32 %79, 70
  %81 = select i1 %80, i32 %79, i32 %77
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 0, %82
  %84 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %83
  tail call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 14, ptr noundef nonnull %84, ptr noundef null)
  br i1 %18, label %85, label %100

85:                                               ; preds = %75
  %86 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !41
  %88 = icmp eq ptr %4, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load ptr, ptr %87, align 8, !tbaa !49
  %91 = getelementptr i8, ptr %90, i64 -24
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr inbounds i8, ptr %87, i64 %92
  %94 = getelementptr inbounds %"class.std::ios_base", ptr %93, i64 0, i32 5
  %95 = load i32, ptr %94, align 8, !tbaa !64
  %96 = or i32 %95, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %93, i32 noundef %96)
  br label %100

97:                                               ; preds = %85
  %98 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21
  %99 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef nonnull %4, i64 noundef %98)
  br label %100

100:                                              ; preds = %97, %89, %66, %65, %75, %69, %25
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator17doConnectionGroupEP22ConnectionGroupElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  call void @_ZN13NED1Generator16getBannerCommentB5cxx11EP10NEDElementPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2)
  %11 = load ptr, ptr %6, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !74
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %11, i64 noundef %13)
          to label %15 unwind label %99

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 8, !tbaa !60
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, ptr %12, align 8, !tbaa !74
  %21 = icmp ult i64 %20, 16
  call void @llvm.assume(i1 %21)
  br label %23

22:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %16) #23
  br label %23

23:                                               ; preds = %19, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  %24 = load ptr, ptr %9, align 8, !tbaa !41
  %25 = icmp eq ptr %2, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !49
  %28 = getelementptr i8, ptr %27, i64 -24
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds i8, ptr %24, i64 %29
  %31 = getelementptr inbounds %"class.std::ios_base", ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !64
  %33 = or i32 %32, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %30, i32 noundef %33)
  br label %37

34:                                               ; preds = %23
  %35 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull %2, i64 noundef %35)
  br label %37

37:                                               ; preds = %26, %34
  %38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.98, i64 noundef 4)
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %40 = trunc i64 %39 to i32
  %41 = load i32, ptr %0, align 8, !tbaa !47
  %42 = add nsw i32 %41, %40
  %43 = icmp slt i32 %42, 70
  %44 = select i1 %43, i32 %42, i32 %40
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 0, %45
  %47 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %46
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 28, ptr noundef nonnull %47, ptr noundef nonnull @.str.60)
  %48 = load ptr, ptr %9, align 8, !tbaa !41
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull @.str.99, i64 noundef 3)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  call void @_ZN13NED1Generator15getRightCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull align 8 poison, ptr noundef %1)
  %50 = load ptr, ptr %7, align 8, !tbaa !60
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !74
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %50, i64 noundef %52)
          to label %54 unwind label %109

54:                                               ; preds = %37
  %55 = load ptr, ptr %7, align 8, !tbaa !60
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, ptr %51, align 8, !tbaa !74
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  br label %62

61:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef %55) #23
  br label %62

62:                                               ; preds = %58, %61
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  %63 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22
  %64 = trunc i64 %63 to i32
  %65 = load i32, ptr %0, align 8, !tbaa !47
  %66 = add nsw i32 %65, %64
  %67 = icmp slt i32 %66, 70
  %68 = select i1 %67, i32 %66, i32 %64
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 0, %69
  %71 = getelementptr inbounds i8, ptr getelementptr inbounds ([70 x i8], ptr @_ZZN13NED1Generator14increaseIndentEPKcE6spaces, i64 0, i64 69), i64 %70
  call void @_ZN13NED1Generator24generateChildrenWithTypeEP10NEDElementiPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 25, ptr noundef nonnull %71, ptr noundef null)
  %72 = load ptr, ptr %9, align 8, !tbaa !41
  br i1 %25, label %73, label %81

73:                                               ; preds = %62
  %74 = load ptr, ptr %72, align 8, !tbaa !49
  %75 = getelementptr i8, ptr %74, i64 -24
  %76 = load i64, ptr %75, align 8
  %77 = getelementptr inbounds i8, ptr %72, i64 %76
  %78 = getelementptr inbounds %"class.std::ios_base", ptr %77, i64 0, i32 5
  %79 = load i32, ptr %78, align 8, !tbaa !64
  %80 = or i32 %79, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %77, i32 noundef %80)
  br label %84

81:                                               ; preds = %62
  %82 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef nonnull %2, i64 noundef %82)
  br label %84

84:                                               ; preds = %73, %81
  %85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef nonnull @.str.100, i64 noundef 7)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  call void @_ZN13NED1Generator18getTrailingCommentB5cxx11EP10NEDElement(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull align 8 poison, ptr noundef %1)
  %86 = load ptr, ptr %8, align 8, !tbaa !60
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !74
  %89 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %86, i64 noundef %88)
          to label %90 unwind label %119

90:                                               ; preds = %84
  %91 = load ptr, ptr %8, align 8, !tbaa !60
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i64, ptr %87, align 8, !tbaa !74
  %96 = icmp ult i64 %95, 16
  call void @llvm.assume(i1 %96)
  br label %98

97:                                               ; preds = %90
  call void @_ZdlPv(ptr noundef %91) #23
  br label %98

98:                                               ; preds = %94, %97
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  ret void

99:                                               ; preds = %5
  %100 = landingpad { ptr, i32 }
          cleanup
  %101 = load ptr, ptr %6, align 8, !tbaa !60
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i64, ptr %12, align 8, !tbaa !74
  %106 = icmp ult i64 %105, 16
  call void @llvm.assume(i1 %106)
  br label %108

107:                                              ; preds = %99
  call void @_ZdlPv(ptr noundef %101) #23
  br label %108

108:                                              ; preds = %104, %107
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %129

109:                                              ; preds = %37
  %110 = landingpad { ptr, i32 }
          cleanup
  %111 = load ptr, ptr %7, align 8, !tbaa !60
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i64, ptr %51, align 8, !tbaa !74
  %116 = icmp ult i64 %115, 16
  call void @llvm.assume(i1 %116)
  br label %118

117:                                              ; preds = %109
  call void @_ZdlPv(ptr noundef %111) #23
  br label %118

118:                                              ; preds = %114, %117
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  br label %129

119:                                              ; preds = %84
  %120 = landingpad { ptr, i32 }
          cleanup
  %121 = load ptr, ptr %8, align 8, !tbaa !60
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i64, ptr %87, align 8, !tbaa !74
  %126 = icmp ult i64 %125, 16
  call void @llvm.assume(i1 %126)
  br label %128

127:                                              ; preds = %119
  call void @_ZdlPv(ptr noundef %121) #23
  br label %128

128:                                              ; preds = %124, %127
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  br label %129

129:                                              ; preds = %128, %118, %108
  %130 = phi { ptr, i32 } [ %120, %128 ], [ %110, %118 ], [ %100, %108 ]
  resume { ptr, i32 } %130
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator6doLoopEP11LoopElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %class.LoopElement, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = load ptr, ptr %7, align 8, !tbaa !49
  %13 = getelementptr i8, ptr %12, i64 -24
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds i8, ptr %7, i64 %14
  %16 = getelementptr inbounds %"class.std::ios_base", ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = or i32 %17, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %15, i32 noundef %18)
  br label %22

19:                                               ; preds = %5
  %20 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #21
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %9, i64 noundef %20)
  br label %22

22:                                               ; preds = %11, %19
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.101, i64 noundef 1)
  tail call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.102, ptr noundef %2)
  %24 = load ptr, ptr %6, align 8, !tbaa !41
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.103, i64 noundef 2)
  tail call void @_ZN13NED1Generator15printExpressionEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.104, ptr noundef %2)
  br i1 %3, label %32, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8, !tbaa !41
  %28 = icmp eq ptr %4, null
  %29 = select i1 %28, ptr @.str, ptr %4
  %30 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #21
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %29, i64 noundef %30)
  br label %32

32:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator12doExpressionEP17ExpressionElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  tail call void @_ZN13NED1Generator16generateChildrenEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef null)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN13NED1Generator21getOperatorPrecedenceEPKci(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !40 {
  switch i32 %2, label %79 [
    i32 3, label %4
    i32 2, label %8
    i32 1, label %70
  ]

4:                                                ; preds = %3
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.110) #22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %80, label %7

7:                                                ; preds = %4
  switch i32 %2, label %79 [
    i32 2, label %8
    i32 1, label %70
  ]

8:                                                ; preds = %7, %3
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.111) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %80, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.112) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %80, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.113) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %80, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.114) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %80, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.115) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %80, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.116) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %80, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.117) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.118) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %80, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.119) #22
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %80, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.120) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %80, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.121) #22
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %80, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.122) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %80, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.123) #22
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.124) #22
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %80, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.125) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.126) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.127) #22
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.128) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.129) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.130) #22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = icmp eq i32 %2, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %7, %3, %68
  %71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.126) #22
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.131) #22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.132) #22
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %68, %3, %7, %76
  tail call void (ptr, i32, ptr, ptr, ...) @_Z16NEDInternalErrorPKciP10NEDElementS0_z(ptr noundef nonnull @.str.17, i32 noundef 1003, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef %1)
  br label %80

80:                                               ; preds = %76, %8, %73, %70, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %4, %79
  %81 = phi i32 [ -1, %79 ], [ 1, %4 ], [ 3, %11 ], [ 4, %14 ], [ 5, %17 ], [ 5, %20 ], [ 5, %23 ], [ 5, %26 ], [ 5, %29 ], [ 5, %32 ], [ 6, %35 ], [ 7, %38 ], [ 8, %41 ], [ 9, %44 ], [ 9, %47 ], [ 10, %50 ], [ 10, %53 ], [ 11, %56 ], [ 11, %59 ], [ 11, %62 ], [ 12, %65 ], [ 13, %70 ], [ 13, %73 ], [ 2, %8 ], [ 13, %76 ]
  ret i32 %81
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN13NED1Generator19isOperatorLeftAssocEPKc(ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 align 2 !prof !40 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.130) #22
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator10doOperatorEP15OperatorElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = load ptr, ptr %1, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !49
  %13 = getelementptr inbounds ptr, ptr %12, i64 25
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(112) %9)
  br label %16

16:                                               ; preds = %5, %11
  %17 = phi ptr [ %15, %11 ], [ null, %5 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !49
  %21 = getelementptr inbounds ptr, ptr %20, i64 25
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(112) %17)
  br label %24

24:                                               ; preds = %16, %19
  %25 = phi ptr [ %23, %19 ], [ null, %16 ]
  br i1 %18, label %26, label %44

26:                                               ; preds = %24
  %27 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !41
  %29 = getelementptr inbounds %class.OperatorElement, ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load ptr, ptr %28, align 8, !tbaa !49
  %34 = getelementptr i8, ptr %33, i64 -24
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds i8, ptr %28, i64 %35
  %37 = getelementptr inbounds %"class.std::ios_base", ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !64
  %39 = or i32 %38, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %36, i32 noundef %39)
  br label %43

40:                                               ; preds = %26
  %41 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #21
  %42 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull %30, i64 noundef %41)
  br label %43

43:                                               ; preds = %32, %40
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %9, ptr noundef %2, i1 noundef zeroext false, ptr noundef null)
  br label %122

44:                                               ; preds = %24
  %45 = icmp eq ptr %25, null
  br i1 %45, label %46, label %112

46:                                               ; preds = %44
  %47 = getelementptr inbounds %class.OperatorElement, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !60
  %49 = tail call noundef i32 @_ZN13NED1Generator21getOperatorPrecedenceEPKci(ptr nonnull align 8 poison, ptr noundef %48, i32 noundef 2), !range !121
  %50 = icmp slt i32 %49, 3
  %51 = load ptr, ptr %1, align 8, !tbaa !49
  %52 = getelementptr inbounds ptr, ptr %51, i64 22
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %46
  %57 = load ptr, ptr %54, align 8, !tbaa !49
  %58 = getelementptr inbounds ptr, ptr %57, i64 5
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef i32 %59(ptr noundef nonnull align 8 dereferenceable(112) %54)
  %61 = icmp eq i32 %60, 31
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = getelementptr inbounds %class.OperatorElement, ptr %54, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !60
  %65 = tail call noundef i32 @_ZN13NED1Generator21getOperatorPrecedenceEPKci(ptr nonnull align 8 poison, ptr noundef %64, i32 noundef 2), !range !121
  %66 = icmp sge i32 %65, %49
  br label %67

67:                                               ; preds = %62, %56, %46
  %68 = phi i1 [ false, %56 ], [ false, %46 ], [ %66, %62 ]
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !41
  %72 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull @.str.134, i64 noundef 1)
  br label %73

73:                                               ; preds = %69, %67
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %9, ptr noundef %2, i1 noundef zeroext false, ptr noundef null)
  %74 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !41
  br i1 %50, label %76, label %93

76:                                               ; preds = %73
  %77 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull @.str.10, i64 noundef 1)
  %78 = load ptr, ptr %47, align 8, !tbaa !60
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load ptr, ptr %75, align 8, !tbaa !49
  %82 = getelementptr i8, ptr %81, i64 -24
  %83 = load i64, ptr %82, align 8
  %84 = getelementptr inbounds i8, ptr %75, i64 %83
  %85 = getelementptr inbounds %"class.std::ios_base", ptr %84, i64 0, i32 5
  %86 = load i32, ptr %85, align 8, !tbaa !64
  %87 = or i32 %86, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %84, i32 noundef %87)
  br label %91

88:                                               ; preds = %76
  %89 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %78) #21
  %90 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull %78, i64 noundef %89)
  br label %91

91:                                               ; preds = %80, %88
  %92 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull @.str.10, i64 noundef 1)
  br label %107

93:                                               ; preds = %73
  %94 = load ptr, ptr %47, align 8, !tbaa !60
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load ptr, ptr %75, align 8, !tbaa !49
  %98 = getelementptr i8, ptr %97, i64 -24
  %99 = load i64, ptr %98, align 8
  %100 = getelementptr inbounds i8, ptr %75, i64 %99
  %101 = getelementptr inbounds %"class.std::ios_base", ptr %100, i64 0, i32 5
  %102 = load i32, ptr %101, align 8, !tbaa !64
  %103 = or i32 %102, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %100, i32 noundef %103)
  br label %107

104:                                              ; preds = %93
  %105 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %94) #21
  %106 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull %94, i64 noundef %105)
  br label %107

107:                                              ; preds = %104, %96, %91
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %17, ptr noundef %2, i1 noundef zeroext false, ptr noundef null)
  br i1 %68, label %108, label %122

108:                                              ; preds = %107
  %109 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !41
  %111 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef nonnull @.str.61, i64 noundef 1)
  br label %122

112:                                              ; preds = %44
  %113 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !41
  %115 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %114, ptr noundef nonnull @.str.134, i64 noundef 1)
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %9, ptr noundef %2, i1 noundef zeroext false, ptr noundef null)
  %116 = load ptr, ptr %113, align 8, !tbaa !41
  %117 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull @.str.135, i64 noundef 3)
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %17, ptr noundef %2, i1 noundef zeroext false, ptr noundef null)
  %118 = load ptr, ptr %113, align 8, !tbaa !41
  %119 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %118, ptr noundef nonnull @.str.3, i64 noundef 3)
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %25, ptr noundef %2, i1 noundef zeroext false, ptr noundef null)
  %120 = load ptr, ptr %113, align 8, !tbaa !41
  %121 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef nonnull @.str.61, i64 noundef 1)
  br label %122

122:                                              ; preds = %107, %108, %112, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator10doFunctionEP15FunctionElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = getelementptr inbounds %class.FunctionElement, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(6) @.str.138) #22
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %7, null
  br i1 %9, label %13, label %25

13:                                               ; preds = %5
  br i1 %12, label %14, label %22

14:                                               ; preds = %13
  %15 = load ptr, ptr %11, align 8, !tbaa !49
  %16 = getelementptr i8, ptr %15, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %11, i64 %17
  %19 = getelementptr inbounds %"class.std::ios_base", ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !64
  %21 = or i32 %20, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %18, i32 noundef %21)
  br label %63

22:                                               ; preds = %13
  %23 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #21
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %7, i64 noundef %23)
  br label %63

25:                                               ; preds = %5
  br i1 %12, label %26, label %34

26:                                               ; preds = %25
  %27 = load ptr, ptr %11, align 8, !tbaa !49
  %28 = getelementptr i8, ptr %27, i64 -24
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds i8, ptr %11, i64 %29
  %31 = getelementptr inbounds %"class.std::ios_base", ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !64
  %33 = or i32 %32, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %30, i32 noundef %33)
  br label %37

34:                                               ; preds = %25
  %35 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #21
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %7, i64 noundef %35)
  br label %37

37:                                               ; preds = %26, %34
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.134, i64 noundef 1)
  %39 = load ptr, ptr %1, align 8, !tbaa !49
  %40 = getelementptr inbounds ptr, ptr %39, i64 23
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %57, %37
  %45 = load ptr, ptr %10, align 8, !tbaa !41
  %46 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull @.str.61, i64 noundef 1)
  br label %63

47:                                               ; preds = %37, %57
  %48 = phi ptr [ %61, %57 ], [ %42, %37 ]
  %49 = load ptr, ptr %1, align 8, !tbaa !49
  %50 = getelementptr inbounds ptr, ptr %49, i64 23
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %53 = icmp eq ptr %48, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr %10, align 8, !tbaa !41
  %56 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef nonnull @.str.60, i64 noundef 2)
  br label %57

57:                                               ; preds = %54, %47
  tail call void @_ZN13NED1Generator15generateNedItemEP10NEDElementPKcbS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %48, ptr noundef %2, i1 noundef zeroext false, ptr noundef null)
  %58 = load ptr, ptr %48, align 8, !tbaa !49
  %59 = getelementptr inbounds ptr, ptr %58, i64 25
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(112) %48)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %44, label %47, !llvm.loop !122

63:                                               ; preds = %22, %14, %44
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator7doIdentEP12IdentElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 !prof !40 {
  %6 = getelementptr inbounds %class.IdentElement, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr %7, align 1, !tbaa !70
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #21
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %7, i64 noundef %15)
  tail call void @_ZN13NED1Generator14printOptVectorEP10NEDElementPKcS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.139, ptr noundef %2)
  %17 = load ptr, ptr %13, align 8, !tbaa !41
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.107, i64 noundef 1)
  br label %19

19:                                               ; preds = %5, %12, %9
  %20 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = getelementptr inbounds %class.IdentElement, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load ptr, ptr %21, align 8, !tbaa !49
  %27 = getelementptr i8, ptr %26, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %21, i64 %28
  %30 = getelementptr inbounds %"class.std::ios_base", ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !64
  %32 = or i32 %31, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %29, i32 noundef %32)
  br label %36

33:                                               ; preds = %19
  %34 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #21
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull %23, i64 noundef %34)
  br label %36

36:                                               ; preds = %25, %33
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13NED1Generator9doLiteralEP14LiteralElementPKcbS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, i1 zeroext %3, ptr nocapture readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = getelementptr inbounds %class.LiteralElement, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %8, align 1, !tbaa !70
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #21
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %8, i64 noundef %16)
  br label %65

18:                                               ; preds = %5, %10
  %19 = getelementptr inbounds %class.LiteralElement, ptr %1, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !123
  %21 = icmp eq i32 %20, 2
  %22 = getelementptr inbounds %class.NED1Generator, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  br i1 %21, label %24, label %50

24:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %25 = getelementptr inbounds %class.LiteralElement, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %26)
  %27 = load ptr, ptr %6, align 8, !tbaa !60
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !74
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27, i64 noundef %29)
          to label %31 unwind label %40

31:                                               ; preds = %24
  %32 = load ptr, ptr %6, align 8, !tbaa !60
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, ptr %28, align 8, !tbaa !74
  %37 = icmp ult i64 %36, 16
  call void @llvm.assume(i1 %37)
  br label %39

38:                                               ; preds = %31
  call void @_ZdlPv(ptr noundef %32) #23
  br label %39

39:                                               ; preds = %35, %38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  br label %65

40:                                               ; preds = %24
  %41 = landingpad { ptr, i32 }
          cleanup
  %42 = load ptr, ptr %6, align 8, !tbaa !60
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64, ptr %28, align 8, !tbaa !74
  %47 = icmp ult i64 %46, 16
  call void @llvm.assume(i1 %47)
  br label %49

48:                                               ; preds = %40
  call void @_ZdlPv(ptr noundef %42) #23
  br label %49

49:                                               ; preds = %45, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  resume { ptr, i32 } %41

50:                                               ; preds = %18
  %51 = getelementptr inbounds %class.LiteralElement, ptr %1, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !60
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load ptr, ptr %23, align 8, !tbaa !49
  %56 = getelementptr i8, ptr %55, i64 -24
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds i8, ptr %23, i64 %57
  %59 = getelementptr inbounds %"class.std::ios_base", ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !64
  %61 = or i32 %60, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %58, i32 noundef %61)
  br label %65

62:                                               ; preds = %50
  %63 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %52) #21
  %64 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %52, i64 noundef %63)
  br label %65

65:                                               ; preds = %62, %54, %13, %39
  ret void
}

declare noundef zeroext i1 @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #14 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !125 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !109
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !110

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !60
  %11 = load i64, ptr %4, align 8, !tbaa !109
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !70
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !60
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !111

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !70
  store i8 %16, ptr %14, align 1, !tbaa !70
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !126
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !109
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !74
  %21 = load ptr, ptr %0, align 8, !tbaa !60
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #11 align 2

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_ned1generator.cc() #18 section ".text.startup" !prof !127 !PGOFuncName !128 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(none) }
attributes #13 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm, i64 2}
!36 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!37 = !{ptr @_GLOBAL__sub_I_ned1generator.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!38 = !{ptr @_GLOBAL__sub_I_ned1generator.cc, ptr @__cxa_atexit, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !46, i64 8}
!42 = !{!"_ZTS13NED1Generator", !43, i64 0, !46, i64 8, !46, i64 16}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"any pointer", !44, i64 0}
!47 = !{!42, !43, i64 0}
!48 = !{!42, !46, i64 16}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !45, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !{!54, !52, !53}
!55 = distinct !{!55, !52, !53}
!56 = !{!43, !43, i64 0}
!57 = distinct !{!57, !52, !53}
!58 = distinct !{!58, !52, !53}
!59 = distinct !{!59, !52, !53}
!60 = !{!61, !46, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !62, i64 0, !63, i64 8, !44, i64 16}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !46, i64 0}
!63 = !{!"long", !44, i64 0}
!64 = !{!65, !67, i64 32}
!65 = !{!"_ZTSSt8ios_base", !63, i64 8, !63, i64 16, !66, i64 24, !67, i64 28, !67, i64 32, !46, i64 40, !68, i64 48, !44, i64 64, !43, i64 192, !46, i64 200, !69, i64 208}
!66 = !{!"_ZTSSt13_Ios_Fmtflags", !44, i64 0}
!67 = !{!"_ZTSSt12_Ios_Iostate", !44, i64 0}
!68 = !{!"_ZTSNSt8ios_base6_WordsE", !46, i64 0, !63, i64 8}
!69 = !{!"_ZTSSt6locale", !46, i64 0}
!70 = !{!44, !44, i64 0}
!71 = distinct !{!71, !52, !53}
!72 = distinct !{!72, !52, !53}
!73 = !{!62, !46, i64 0}
!74 = !{!61, !63, i64 8}
!75 = distinct !{!75, !52, !53}
!76 = !{!"function_entry_count", i64 2}
!77 = !{!"branch_weights", i32 2, i32 0}
!78 = !{!"branch_weights", i32 0, i32 2}
!79 = !{!"VP", i32 1, i64 2, i64 9, i64 2}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!82 = distinct !{!82, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!85 = distinct !{!85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!88 = distinct !{!88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!89 = distinct !{!89, !52, !53}
!90 = !{!46, !46, i64 0}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = !{!96, !43, i64 112}
!96 = !{!"_ZTS12ParamElement", !97, i64 0, !43, i64 112, !99, i64 116, !61, i64 120, !61, i64 152, !99, i64 184}
!97 = !{!"_ZTS10NEDElement", !63, i64 8, !61, i64 16, !98, i64 48, !46, i64 64, !46, i64 72, !46, i64 80, !46, i64 88, !46, i64 96, !46, i64 104}
!98 = !{!"_ZTS15NEDSourceRegion", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!99 = !{!"bool", !44, i64 0}
!100 = !{!96, !99, i64 116}
!101 = !{i8 0, i8 2}
!102 = !{}
!103 = !{!96, !99, i64 184}
!104 = distinct !{!104, !52, !53}
!105 = distinct !{!105, !52, !53}
!106 = !{!107, !43, i64 144}
!107 = !{!"_ZTS11GateElement", !97, i64 0, !61, i64 112, !43, i64 144, !99, i64 148, !61, i64 152}
!108 = !{!107, !99, i64 148}
!109 = !{!63, !63, i64 0}
!110 = !{!"branch_weights", i32 1257662, i32 631781}
!111 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!112 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!113 = !{!114, !99, i64 112}
!114 = !{!"_ZTS18ConnectionsElement", !97, i64 0, !99, i64 112}
!115 = !{!116, !43, i64 396}
!116 = !{!"_ZTS17ConnectionElement", !97, i64 0, !61, i64 112, !61, i64 144, !61, i64 176, !99, i64 208, !61, i64 216, !43, i64 248, !61, i64 256, !61, i64 288, !61, i64 320, !99, i64 352, !61, i64 360, !43, i64 392, !43, i64 396}
!117 = !{!116, !99, i64 208}
!118 = !{!116, !43, i64 248}
!119 = !{!116, !99, i64 352}
!120 = !{!116, !43, i64 392}
!121 = !{i32 -1, i32 14}
!122 = distinct !{!122, !52, !53}
!123 = !{!124, !43, i64 112}
!124 = !{!"_ZTS14LiteralElement", !97, i64 0, !43, i64 112, !61, i64 120, !61, i64 152, !61, i64 184}
!125 = !{!"function_entry_count", i64 1889443}
!126 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
!127 = !{!"function_entry_count", i64 1}
!128 = !{!"simulator/ned1generator.cc;_GLOBAL__sub_I_ned1generator.cc"}
