using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace magnifier
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		private ImagingProvider imagingProviderIndexador = new ImagingProvider();

		public MainWindow()
		{
			InitializeComponent();

			String dir = System.IO.Path.GetDirectoryName(System.Diagnostics.Process.GetCurrentProcess().MainModule.FileName);


			ImagingProvider.LoadImage(new Uri(dir + "/guga.tif"), imgObj);

			imgMagnifier.Source = imgObj.Source;

		}


		
		private void img_MouseWheel(object sender, MouseWheelEventArgs e)
		{
			ImagingProvider.MouseWheel(imgCanvas, imgTransformGroup, e);
			
		}

		private void Img_MouseMove(object sender, MouseEventArgs e)
		{
			imagingProviderIndexador.MouseMoveMagnifier(imgCanvas, imgObj, imgCanvasMagnifier, imgMagnifier, e);

			
		}

		private void Img_MouseDown(object sender, MouseButtonEventArgs e)
		{
			imagingProviderIndexador.MouseDown(imgCanvas, imgObj, imgTranslateTransform, e);
			
		}

		private void Img_MouseUp(object sender, MouseButtonEventArgs e)
		{
			imagingProviderIndexador.MouseUp(imgObj, e);
			
		}

		private void btnZoomIn_Click(object sender, RoutedEventArgs e)
		{
			ImagingProvider.ZoomIn(imgTransformGroup);
		}

		private void btnZoomOut_Click(object sender, RoutedEventArgs e)
		{
			ImagingProvider.ZoomOut(imgTransformGroup);
		}

		private void btnRotate_Click(object sender, RoutedEventArgs e)
		{
			ImagingProvider.Rotate(imgRotateTransform);
			
		}

		private void btnFTW_Click(object sender, RoutedEventArgs e)
		{
			ImagingProvider.FitToContentMagnifier(imgObj, imgTransformGroup, imgCanvas, imgCanvasMagnifier, imgMagnifier);
		}

		private void Slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
		{
			ImagingProvider.SetScale(imgTransformGroup, sldZoom.Value);
		}

		private void Window_Loaded(object sender, RoutedEventArgs e)
		{
			btnFTW_Click(null, null);
		}
	}
}
